"""Convert a DraCor API release tag to a Python (PEP 440) version.

1.4.1 -> 1.4.1, v1.1.4 -> 1.1.4, 1.5.0-rc.1 -> 1.5.0rc1,
1.5.0-beta.2 -> 1.5.0b2, 1.1.0-alpha.1 -> 1.1.0a1
"""
import re
import sys

tag = sys.argv[1].removeprefix("v")
m = re.fullmatch(r"(\d+\.\d+\.\d+)(?:-(alpha|beta|rc)\.?(\d+))?", tag)
if not m:
    sys.exit(f"not a release version: {tag}")
base, pre, num = m.groups()
print(base + ({"alpha": "a", "beta": "b", "rc": "rc"}[pre] + num if pre else ""))
