class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.20/monotask-v0.3.20-aarch64-apple-darwin.tar.gz"
      sha256 "457c31bfe7a5819e0619785f36c8a52329f5a7eb725a86164eeb8819f04f9d5d"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.20/monotask-v0.3.20-x86_64-apple-darwin.tar.gz"
      sha256 "3b09911f335e662ff75169919a6e20cdab783a2175d758168e9948d6387e2ab0"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.20/monotask-v0.3.20-x86_64-linux.tar.gz"
    sha256 "553ea9f5f40445a3440ed433ed56d409a16d2c10353e4ae964b11a4d0ba422e0"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
