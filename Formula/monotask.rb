class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "1.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v1.1.5/monotask-v1.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "d4c68b3a54b69111a0659887aeb9e01cd3b6c0adf4d04a409e6cc8a210d2aade"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v1.1.5/monotask-v1.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "123673ca622961707cd87cb2a332272f3d75676a085bf2fa44d15e78647aed3d"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v1.1.5/monotask-v1.1.5-x86_64-linux.tar.gz"
    sha256 "a6f42b826d85c7150a5d76f878b207cee9675b65455ef495ae59da69eb23a422"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
