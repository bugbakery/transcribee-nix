import requests
import subprocess
import argparse
from typing import Tuple
import json


def get_commit_sha(owner: str, repo: str, ref: str) -> str:
    req = requests.get(f"https://api.github.com/repos/{owner}/{repo}/commits/{ref}")
    req.raise_for_status()
    return req.json()["sha"]


def get_url_hash(url: str, stripRoot: bool) -> str:
    cmd = ["nix-prefetch", "fetchzip"]
    if not stripRoot:
        cmd.append("--no-stripRoot")
    cmd.extend(["--url", url])

    output = (
        subprocess.run(
            cmd,
            check=True,
            capture_output=True,
        )
        .stdout.decode()
        .strip()
    )

    return output


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--owner", default="transcribee")
    parser.add_argument("--repo", default="transcribee")
    parser.add_argument("--ref", default="main")
    parser.add_argument("--template", default="common.nix.template")
    parser.add_argument("--out", default="common.nix")
    args = parser.parse_args()

    with open(args.template) as f:
        template = f.read()

    rev = get_commit_sha(args.owner, args.repo, args.ref)
    # git_url, sha256 = get_source_url_and_hash(args.owner, args.repo, rev)
    frontend_url = f"https://github.com/bugbakery/transcribee-frontend-releases/raw/main/frontend-{rev}.tar.gz"
    frontend_hash = get_url_hash(frontend_url, False)
    source_url = f"https://github.com/bugbakery/transcribee/archive/{rev}.tar.gz"
    source_hash = get_url_hash(source_url, True)

    with open(args.out, "w") as f:
        f.write(
            template.format(
                frontend_url=frontend_url,
                source_url=source_url,
                source_hash=source_hash,
                frontend_hash=frontend_hash,
            )
        )
