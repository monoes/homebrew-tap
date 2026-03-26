cask "monotask" do
  version "0.3.9"
  sha256 "b02ae5dd37c9a71b237aef7b1314dffbcb1f67c2bf2251376f49efbcd9fd1cf1"

  url "https://github.com/nokhodian/monotask/releases/download/v0.3.9/Monotask-v0.3.9-aarch64.dmg"
  name "Monotask"
  desc "Local-first peer-to-peer kanban board with cryptographic identity"
  homepage "https://github.com/nokhodian/monotask"

  depends_on macos: ">= :ventura"

  app "Monotask.app"

  caveats <<~EOS
    Monotask is not code-signed. If macOS blocks it on first launch, run:
      xattr -cr /Applications/Monotask.app
    Then try opening it again.
  EOS

  zap trash: [
    "~/.local/share/p2p-kanban",
    "~/Library/Application Support/dev.monotask",
    "~/Library/Preferences/dev.monotask.plist",
    "~/Library/Saved Application State/dev.monotask.savedState",
  ]
end
