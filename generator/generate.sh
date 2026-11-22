#!/usr/bin/env bash
# Generate pydracor_base from the OpenAPI specification of a DraCor API release.
#
# Usage: generator/generate.sh <api-version> [<package-version>]
#   <api-version>      release tag of dracor-org/dracor-api, e.g. 1.5.0-rc.1 or 1.4.1
#   <package-version>  default: the API version in PEP 440 form (1.5.0-rc.1 -> 1.5.0rc1)
#
# The specification is taken from api.yaml at the release tag (not from a running
# server), so that every package version belongs to exactly one API version.
# GENERATOR_VERSION pins the OpenAPI Generator; change it deliberately, since the
# custom templates in generator/templates may need adapting.
set -euo pipefail

api_version="${1:?usage: generator/generate.sh <api-version> [<package-version>]}"
root="$(cd "$(dirname "$0")/.." && pwd)"
package_version="${2:-$(python3 "$root/generator/pep440.py" "$api_version")}"
generator_version="${GENERATOR_VERSION:-v7.11.0}"

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

echo "Fetching api.yaml of dracor-api $api_version"
curl -fsSL "https://raw.githubusercontent.com/dracor-org/dracor-api/${api_version}/api.yaml" \
  -o "$tmp/api.yaml"
# the version in api.yaml is not maintained in the repository (it is set when the
# API serves the file), so set it to the release
python3 - "$tmp/api.yaml" "${api_version#v}" <<'PY'
import re, sys
path, version = sys.argv[1], sys.argv[2]
text = open(path, encoding="utf-8").read()
text = re.sub(r"(?m)^(info:\n(?:  .*\n)*?  version: ).*$", lambda m: m.group(1) + version, text, count=1)
open(path, "w", encoding="utf-8").write(text)
PY

echo "Generating pydracor_base $package_version with OpenAPI Generator $generator_version"
docker run --rm -u "$(id -u):$(id -g)" \
  -v "$tmp:/work" -v "$root/generator/templates:/templates:ro" \
  "openapitools/openapi-generator-cli:$generator_version" generate \
  -i /work/api.yaml -g python -o /work/out -t /templates \
  -p packageName=pydracor_base \
  -p packageVersion="$package_version" \
  -p packageUrl=https://github.com/dracor-org/pydracor-base \
  -p customGitHost=github.com \
  -p customGitUserId=dracor-org \
  -p customGitRepoId=pydracor-base

# replace the generated files, keep what is maintained by hand (generator/keep.txt)
rsync -a --delete --exclude-from="$root/generator/keep.txt" "$tmp/out/" "$root/"
echo "Done: pydracor_base $package_version for DraCor API ${api_version#v}"
