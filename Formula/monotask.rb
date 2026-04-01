class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.17/monotask-v0.3.17-aarch64-apple-darwin.tar.gz"
      sha256 "9b1afae4f969e300f53fb7dc3f33f896a8d51f57cb036da398ccf3397ec82731"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.17/monotask-v0.3.17-x86_64-apple-darwin.tar.gz"
      sha256 "bc7252592de3c83e7e58c60cf50f4484a8316b1b893983bd304f427a7efee7ba"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.17/monotask-v0.3.17-x86_64-linux.tar.gz"
    sha256 "ea067f5dc80d682c421790ac679521f472052c6fe7f45de3aa1e1b30ed95d5ac"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
