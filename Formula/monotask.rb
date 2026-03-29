class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.12/monotask-v0.3.12-aarch64-apple-darwin.tar.gz"
      sha256 "87f059f2c11da7b4385924973691aeb9aebc653575f63ebbd0b49b9270c71f00"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.12/monotask-v0.3.12-x86_64-apple-darwin.tar.gz"
      sha256 "8c3db0fe66fcda6df3596e75d44dc4de69af30f3b7fa6d39362670492c91605d"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.12/monotask-v0.3.12-x86_64-linux.tar.gz"
    sha256 "7cde24c629c7ea08367ddc59c790796db97d709933e31063a46ca764f0803071"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
