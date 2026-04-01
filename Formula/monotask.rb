class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.20/monotask-v0.3.20-aarch64-apple-darwin.tar.gz"
      sha256 "7ceadfe1c3319c17d734f76ed5693af22540fa7f26cd4a1440488011de10be90"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.20/monotask-v0.3.20-x86_64-apple-darwin.tar.gz"
      sha256 "d1b140e578b7dbc43556bd6a5b36289a011cd1775666f0fe3a0c9526957ef7ee"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.20/monotask-v0.3.20-x86_64-linux.tar.gz"
    sha256 "04b35f1650bb52098242687ad8fee418d6f5e6fcb2e97de7149da8b5bc085972"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
