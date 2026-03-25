class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.8/monotask-v0.3.8-aarch64-apple-darwin.tar.gz"
      sha256 "0f815502221b7abbce3bc6879e8b93b95e11426fa4d8effe002e7279bc1e17c1"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.8/monotask-v0.3.8-x86_64-apple-darwin.tar.gz"
      sha256 "177fe34ad026e8d2d4e4b7a5fe68bea982fd723fcdebf07ddf7efa54a8ddd778"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.8/monotask-v0.3.8-x86_64-linux.tar.gz"
    sha256 "0e53bbbe4d89c6f38d32801ee05a055ad0e68c1c34e57ea48ef1c2fe345a766f"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
