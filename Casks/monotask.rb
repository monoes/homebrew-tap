cask "monotask" do
  version "1.1.6"
  sha256 "2061daf0b738ed07e16e492e1fa7435bafd0c63933924c77d2a2b81f85069b6b"

  url "https://github.com/nokhodian/monotask/releases/download/v1.1.6/Monotask-v1.1.6-aarch64.dmg"
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
