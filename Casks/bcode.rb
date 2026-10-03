cask "bcode" do
  # PLACEHOLDER — update version and sha256 after the first real release.
  # Cut a release from bewayio/code with: git tag vX.Y.Z && git push origin vX.Y.Z
  # The release's checksums.txt has the exact sha256 for bcode-macos-universal.zip.
  version "0.1.11"
  sha256 "240bfe156440431d8bc93ecc6ebc9c2e203c5c2fd2bc83851759bd3579f7aaab"

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
