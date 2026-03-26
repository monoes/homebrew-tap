class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.9/monotask-v0.3.9-aarch64-apple-darwin.tar.gz"
      sha256 "7e5a94034d1ab84f44a1e2ddff27a4cd9b916dcfee7bbf1de9facedc68f65fbd"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.9/monotask-v0.3.9-x86_64-apple-darwin.tar.gz"
      sha256 "df4120e27dee9d75bd95872148daffea78d576b4ad9f6d00f176056bd33e7de8"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.9/monotask-v0.3.9-x86_64-linux.tar.gz"
    sha256 "8f96632c78b7056be3e0097e6ca83e40bdc772e9632048d434faad272d1d1207"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
