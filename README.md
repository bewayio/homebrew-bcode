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

`Casks/bcode.rb`'s `version` and `sha256` are not automated yet — after a
new release, update both by hand from that release's `checksums.txt`
(the `bcode-macos-universal.zip` line).
