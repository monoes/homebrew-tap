class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.14/monotask-v0.3.14-aarch64-apple-darwin.tar.gz"
      sha256 "b30d037ddeab667d97aea70809f011a311ddecab2799bc5f602d82d6a02198b3"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.14/monotask-v0.3.14-x86_64-apple-darwin.tar.gz"
      sha256 "b2907f0f3ebe703c1b2293058571ce37885d9be6934f3eb251638b9035528c6e"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.14/monotask-v0.3.14-x86_64-linux.tar.gz"
    sha256 "cf07cd2869e5401804ca499f545ef95f0efdb9d537248f3c1a17ca9af4a01f23"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
