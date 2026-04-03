cask "monotask" do
  version "0.4.0"
  sha256 "4d4b19c439b39d535240e9a714bb3899902e5b234964b3baed5ed75736eba94f"

  url "https://github.com/nokhodian/monotask/releases/download/v0.4.0/Monotask-v0.4.0-aarch64.dmg"
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
