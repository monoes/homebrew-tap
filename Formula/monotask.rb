class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.1/monotask-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "8e9a2d2aff59afacb07c0c8b109b6a52d250007bcee5b8454ad2af778717a99a"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.1/monotask-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "d2e36ba093fde506ccab229e489e4e73759f8186f4fe6fe7ff11bf2a2860b081"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.4.1/monotask-v0.4.1-x86_64-linux.tar.gz"
    sha256 "0321f9dd034a1405afdd81f99923ff87437f54af5747fd63ec3043cdba973cc3"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
