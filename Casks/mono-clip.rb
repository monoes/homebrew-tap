cask "mono-clip" do
  version "0.2.16"
  sha256 "cc461418722cab06347f69d4ed1ebb6417f9f3edac17984088e7d36d388c7448"

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