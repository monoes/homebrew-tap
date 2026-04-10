cask "mono-clip" do
  version "0.2.9"
  sha256 "a68d1478158863ff105fa920875a7a308dd0ae99f270a1765450929b9a3fd3cd"

  url "https://github.com/nokhodian/mono-clip/releases/download/v#{version}/MonoClip_#{version}_aarch64.dmg"
  name "MonoClip"
  desc "Blazing-fast macOS clipboard manager with folder organization, CLI, and AI integration"
  homepage "https://github.com/nokhodian/mono-clip"

  depends_on macos: ">= :ventura"

  app "MonoClip.app"

  zap trash: [
    "~/.monoclip",
    "~/Library/Application Support/com.monoes.monoclip",
    "~/Library/Preferences/com.monoes.monoclip.plist",
    "~/Library/Saved Application State/com.monoes.monoclip.savedState",
  ]
end