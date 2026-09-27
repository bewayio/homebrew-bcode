# homebrew-bcode

Homebrew tap for [BCode](https://github.com/bewayio/code), a desktop code workbench built with Wails.

## Install

```sh
brew install bewayio/bcode/bcode
```

or, tap first:

```sh
brew tap bewayio/bcode
brew install --cask bcode
```

## Releases

Binaries for macOS, Linux and Windows are built by a GitHub Actions workflow
in the (private) source repo, `bewayio/code`, and published here as a
versioned release whenever a `vX.Y.Z` tag is pushed there. Each release
includes a `checksums.txt` with the sha256 of every platform asset.

Only the macOS build is installable via this Homebrew cask — Homebrew Cask
is macOS-only. Linux and Windows builds are available as release assets on
this repo but have no package-manager integration yet.

## Updating the cask after a new release

Automatic: the release workflow in `bewayio/code` updates `Casks/bcode.rb`'s
`version` and `sha256` and pushes here right after publishing each release —
no manual step needed. The very first cask commit in this repo still has a
placeholder version/checksum until that first automated run happens.
