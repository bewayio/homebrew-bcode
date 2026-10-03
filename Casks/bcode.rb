cask "bcode" do
  # PLACEHOLDER — update version and sha256 after the first real release.
  # Cut a release from bewayio/code with: git tag vX.Y.Z && git push origin vX.Y.Z
  # The release's checksums.txt has the exact sha256 for bcode-macos-universal.zip.
  version "0.1.12"
  sha256 "5f3e58dc3faa63a12f9c3eae03eff336b1a6893906ac867b8dde3d19def7eae2"

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
