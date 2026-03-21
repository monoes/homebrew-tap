class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.3/monotask-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "3a5e599258bacef9b0750d043d86bb36264277b8f27d03d3f9c99d662afd7a7a"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.3/monotask-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "920f406116a265f7033e0dd05b24866dab116f64345a2fe69b8c0554f5617852"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.3/monotask-v0.3.3-x86_64-linux.tar.gz"
    sha256 "4e8f1e8db2e644e3a41b86d13620a717fb0fd204c993311fdb5147829041f581"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
