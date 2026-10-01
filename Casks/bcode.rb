cask "bcode" do
  # PLACEHOLDER — update version and sha256 after the first real release.
  # Cut a release from bewayio/code with: git tag vX.Y.Z && git push origin vX.Y.Z
  # The release's checksums.txt has the exact sha256 for bcode-macos-universal.zip.
  version "0.1.7"
  sha256 "0d18cf22656b6a9e656f0faa9ac8c5bc5746bdcf6144bb0e42377235a3266eea"

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
