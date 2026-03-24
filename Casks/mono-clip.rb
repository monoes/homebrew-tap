cask "mono-clip" do
  version "0.2.2"
  sha256 "d560262a45c1f4f9cd97d1329b71537281cc2af6b31fa069072973557391df3b"

  url "https://github.com/nokhodian/mono-clip/releases/download/v\#{version}/MonoClip_\#{version}_aarch64.dmg"
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
