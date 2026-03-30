class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.14/monotask-v0.3.14-aarch64-apple-darwin.tar.gz"
      sha256 "f4290beaa44ca6f7887daf6c8530d67dccca9bce80adbfe124e81fad7c5448dc"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.14/monotask-v0.3.14-x86_64-apple-darwin.tar.gz"
      sha256 "f89694a7c4739ee3105ae22f10c4f8f1a7fb5633440dec990efa76104f68bbf8"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.14/monotask-v0.3.14-x86_64-linux.tar.gz"
    sha256 "ef34d3d608564ce6e1585dc2721e43ebba95ea2d41d4ba5de5922fce2e74bf40"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
