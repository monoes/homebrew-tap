class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.0/monotask-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f219b5d61b87f3f929919e157ab3d71133245a260e1286c4e2ad232098be0da4"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.0/monotask-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "90ad4c246b834d4d334ba4d177d41b47d924c2192b42f8051365d0552fc3e23b"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.4.0/monotask-v0.4.0-x86_64-linux.tar.gz"
    sha256 "20bc58b0840d2b8450d5d611b89169e489818442b49fe2b8658d99829e2c7cf9"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
