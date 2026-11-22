# How pydracor_base is generated and released

`pydracor_base` is not written by hand. It is generated with the
[OpenAPI Generator](https://openapi-generator.tech) from the OpenAPI
specification (`api.yaml`) of a release of the
[DraCor API](https://github.com/dracor-org/dracor-api). The hand-written
package [pydracor](https://github.com/dracor-org/pydracor) builds on it.

## Versions

Every version of `pydracor_base` belongs to exactly one API release. The
version number is the API version in Python (PEP 440) form:

| DraCor API release | pydracor_base |
|---|---|
| 1.5.0 | 1.5.0 |
| 1.5.0-rc.1 | 1.5.0rc1 (pre-release) |
| 1.5.0-beta.2 | 1.5.0b2 (pre-release) |
| a fix of the generated code for 1.5.0 | 1.5.0.post1 |

Earlier versions: 1.0.0 and 1.0.1 (September 2025) were generated from API 1.1.4.

## Generating by hand

Requirements: Docker, Python 3, rsync.

```sh
generator/generate.sh 1.5.0-rc.1           # package version 1.5.0rc1
generator/generate.sh v1.1.4 1.0.1         # explicit package version
```

The script downloads `api.yaml` at the given release tag, sets its `info.version`
to the release, runs the OpenAPI Generator (version pinned in the script,
`GENERATOR_VERSION`) with the templates in `generator/templates`, and replaces
the generated files in this repository. Files listed in `generator/keep.txt`
(the generator, the workflows, this file, the licence) are not touched.

The templates adapt the generated code to the DraCor API, e.g. because
responses of type `application/xml` (TEI) cannot be deserialised by the
generated client. Before changing `GENERATOR_VERSION`, check that the
templates still work: generating the current release again should change
nothing but the generator version.

`generator/smoke.py` checks a generated package against a running API:

```sh
python -m pip install .
python generator/smoke.py http://localhost:8080/exist/restxq/v1 1.5.0-rc.1
```

## Automatically, for every API release

1. **`.github/workflows/generate.yml`** runs daily (and by hand with an API
   version). If there is a dracor-api release for which no `pydracor_base`
   version exists yet, it generates the package, runs the generated tests,
   starts the DraCor API of that release with its metrics service, loads the
   [test corpus](https://github.com/dracor-org/testdracor), runs the smoke
   test, and opens a pull request `generate/<version>`.
2. A maintainer reviews the pull request. The diff shows what changed in the
   API.
3. **`.github/workflows/release.yml`**: merging the pull request publishes the
   package on PyPI and creates a GitHub release, which the Zenodo integration
   archives.

Then update the pinned version in pydracor (`pydracor-base==…`) and adapt
pydracor where the API changed.

## One-time setup

These settings can only be made by an administrator of the repository or of
the PyPI project:

- **GitHub › Settings › Actions › General:** allow GitHub Actions to create
  pull requests.
- **GitHub › Settings › Environments:** create the environment `pypi`
  (optionally with required reviewers, as a second check before publishing).
- **PyPI › pydracor-base › Publishing:** add a trusted publisher for the
  repository `dracor-org/pydracor-base`, workflow `release.yml`, environment
  `pypi`.
- **Zenodo:** switch on the GitHub integration for this repository (DraCor
  community).
- Tag the current state: `1.0.1` (generated from API 1.1.4).
