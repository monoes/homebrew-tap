cask "mono-clip" do
  version "0.2.4"
  sha256 "ffe64e40c73cac5a8839555e24873c73c0f1bd1e24ff349b425cea950c824b4a"

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