cask "mono-clip" do
  version "0.2.18"
  sha256 "a737348da1a31f411a5b6b589cf2b36fb0bbe3cfa6b412bccaf8315b7776f01a"

  url "https://github.com/monoes/mono-clip/releases/download/v#{version}/MonoClip_#{version}_aarch64.dmg"
  name "MonoClip"
  desc "Blazing-fast macOS clipboard manager with folder organization, CLI, and AI integration"
  homepage "https://github.com/monoes/mono-clip"

  depends_on macos: ">= :ventura"

  app "MonoClip.app"

  zap trash: [
    "~/.monoclip",
    "~/Library/Application Support/com.monoes.monoclip",
    "~/Library/Preferences/com.monoes.monoclip.plist",
    "~/Library/Saved Application State/com.monoes.monoclip.savedState",
  ]
end