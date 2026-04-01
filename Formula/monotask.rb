class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.18/monotask-v0.3.18-aarch64-apple-darwin.tar.gz"
      sha256 "fb60eac807c1dad44982373a1920585a246ce05a821a8ba5f087f2e92aed46bb"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.18/monotask-v0.3.18-x86_64-apple-darwin.tar.gz"
      sha256 "eef6f733de0f07a3b6a9995284dc4cac136fbd5b81e4594ac45554ee5acebfe3"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.18/monotask-v0.3.18-x86_64-linux.tar.gz"
    sha256 "03d975674841bdebbd154cfa41dd765794835260983baddbde19fbb49511257e"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
