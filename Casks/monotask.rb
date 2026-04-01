cask "monotask" do
  version "0.3.20"
  sha256 "be7dfee9d58cbd573f27d613a1ed95447562affc19b0a1731e53a5af784042fa"

  url "https://github.com/nokhodian/monotask/releases/download/v0.3.20/Monotask-v0.3.20-aarch64.dmg"
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
