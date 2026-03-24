class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.4/monotask-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "7e5ea57c7afa16570274e26ff01c99229b1c2f14a11a1c2cb407773a315e2aa0"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.4/monotask-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "3231d81fa4912b932e4432e761275dcfd8870879f1d0b0e1c71c13fc17d35a02"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.4/monotask-v0.3.4-x86_64-linux.tar.gz"
    sha256 "2ac6a82b5dc3f0488e8d82487128d2c94c08f251bdd761a9a3de648409c6349a"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
