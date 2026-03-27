class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.10/monotask-v0.3.10-aarch64-apple-darwin.tar.gz"
      sha256 "e532b1188eb1ace6171b8459d678dfed1c690d1c63eba6953159cc2ee52aae48"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.10/monotask-v0.3.10-x86_64-apple-darwin.tar.gz"
      sha256 "738e7f2b8af1d6833246621cda5de82d6388e17a068ed1a1dd5fb0e66ab4929e"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.10/monotask-v0.3.10-x86_64-linux.tar.gz"
    sha256 "225dc5e9547217b71c7d45d3d93b73cca61e6af8e4ab5ba1b788a06b766d36fe"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
