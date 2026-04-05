class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.2/monotask-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "7edd17266e36b4c9501e465cf27a350125850416aa954907965eaf8a54e06bf6"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.2/monotask-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "a75d0bcb6f3d474f64668e34a85228d5fd562fa6e1769011f1528ad05e45d309"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.4.2/monotask-v0.4.2-x86_64-linux.tar.gz"
    sha256 "9e09c0353bdc207a38854ba0f2f9c00e33603cfde938b084ebc53a3349943055"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
