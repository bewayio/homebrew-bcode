cask "bcode" do
  # PLACEHOLDER — update version and sha256 after the first real release.
  # Cut a release from bewayio/code with: git tag vX.Y.Z && git push origin vX.Y.Z
  # The release's checksums.txt has the exact sha256 for bcode-macos-universal.zip.
  version "0.1.8"
  sha256 "5ca4202f4ca07c7b1324e05017d779b6be77ea86c7fa12f0c5d6f3ed2c26844f"

  url "https://github.com/bewayio/homebrew-bcode/releases/download/v#{version}/bcode-macos-universal.zip"
  name "BCode"
  desc "Desktop code workbench built with Wails"
  # bewayio/code (the app's source) is private, so it 404s for `brew home` —
  # pointing at this public repo instead until there's a real project page.
  homepage "https://github.com/bewayio/homebrew-bcode"

  app "bcode.app"

  # Bundle ID from build/darwin/Info.dev.plist: com.wails.{{.Name}} → com.wails.bcode
  # (Wails' default template, never customized) — update here if that changes.
  zap trash: [
    "~/.bcode",
    "~/Library/Preferences/com.wails.bcode.plist",
    "~/Library/Saved Application State/com.wails.bcode.savedState",
  ]
end
