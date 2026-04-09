class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.3/monotask-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "e60afa58ee1b4319a24cb5ba55cb8a69b1b411ff5499778d54f2577ba91b03e0"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.3/monotask-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "70fee00375e26b98ad8dc57020e54872875e1ddbd3a32611d2974252c89784c6"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.4.3/monotask-v0.4.3-x86_64-linux.tar.gz"
    sha256 "1be3e436b6e659a36ec6eb138dd948f67d879c2166287ab51ec80fd720b8bea7"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
