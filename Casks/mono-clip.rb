cask "mono-clip" do
  version "0.2.19"
  sha256 "58c30d6c7b8dd9c18d2296942d7315aba4982d561a0aae1bc9b9d46ea57112e0"

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