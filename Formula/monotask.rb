class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.1.0/monotask-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d49100d142c7d7e69a5e8449db987e5b8267ed3e86cfd7c1063011ee1e5a7a62"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.1.0/monotask-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "32ec51fecbd5fb3c8ab2cb4443bd024e91581542e43b73b3146517736e9e4533"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.1.0/monotask-v0.1.0-x86_64-linux.tar.gz"
    sha256 :no_check  # Linux binary built by CI
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
