"""Smoke test of a freshly generated pydracor_base against a running DraCor API.

Usage: python generator/smoke.py <api-base-url> <api-version>
e.g.   python generator/smoke.py http://localhost:8080/exist/restxq/v1 1.5.0-rc.1

Checks that the generated client can talk to the API of the version it was
generated for: /info is parsed and reports that version, and /corpora,
/corpora/{corpusname} and the first plays of each corpus are parsed.
"""
import sys

from pydracor_base import ApiClient, Configuration
from pydracor_base.api.public_api import PublicApi

url, expected = sys.argv[1], sys.argv[2].removeprefix("v")
api = PublicApi(ApiClient(Configuration(host=url)))

info = api.api_info()
print(f"API {info.name} {info.version} (eXist-db {info.existdb})")
if not info.version.startswith(expected):
    sys.exit(f"expected API version {expected}, got {info.version}")

corpora = api.list_corpora()
print(f"{len(corpora)} corpora")
for corpus in corpora:
    content = api.list_corpus_content(corpus.name)
    print(f"  {corpus.name}: {len(content.plays or [])} plays")
    for play in (content.plays or [])[:3]:
        info = api.play_info(corpus.name, play.name)
        print(f"    {play.name}: {len(info.characters or [])} characters, {len(info.segments or [])} segments")
print("smoke test passed")
