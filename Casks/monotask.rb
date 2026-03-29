cask "monotask" do
  version "0.3.13"
  sha256 "20430eaa11f2eb83c30e332854f993d0fb3592b1c9764e5ef6d955bd73181310"

  url "https://github.com/nokhodian/monotask/releases/download/v0.3.13/Monotask-v0.3.13-aarch64.dmg"
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
