class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.13/monotask-v0.3.13-aarch64-apple-darwin.tar.gz"
      sha256 "1ce041aa027d76291e027c12a01aed71b1ae5cfd1adff2f3880baea1b2d68326"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.13/monotask-v0.3.13-x86_64-apple-darwin.tar.gz"
      sha256 "0282cb5ec21628e22213765a8935306a986b0c4b391da6bb843c2e169fe1cadb"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.13/monotask-v0.3.13-x86_64-linux.tar.gz"
    sha256 "4e5f0cc8c3035264ff11151ffb3a8e25f0c166c17c6995076cf344b989066469"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
