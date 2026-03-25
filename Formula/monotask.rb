class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.6/monotask-v0.3.6-aarch64-apple-darwin.tar.gz"
      sha256 "dca84554a4457caa1f3bb3398d76568980045765c8ce745b101cf5ed3fc42a1d"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.6/monotask-v0.3.6-x86_64-apple-darwin.tar.gz"
      sha256 "f28a64e97e401b024f59fd2bbd72919eb805f39a9a8da683bd851cec38a395b9"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.6/monotask-v0.3.6-x86_64-linux.tar.gz"
    sha256 "1c23c4533f7c278835110f8d7109ca8615082cad3d68055fb62e642833038a2a"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
