class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.16/monotask-v0.3.16-aarch64-apple-darwin.tar.gz"
      sha256 "05abb010afd9ed72b268dc021d81e9273618d23d0d77bd2d7faf84ef6c83d0cf"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.16/monotask-v0.3.16-x86_64-apple-darwin.tar.gz"
      sha256 "35a21c8b83a82a16e91d612cd56755b16a24772d890f3c4ec40146ab3b7d46a4"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.16/monotask-v0.3.16-x86_64-linux.tar.gz"
    sha256 "7328d3638788ea97fba3ad062b503db9bc566d64c87b241c2b9be44dc982f200"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
