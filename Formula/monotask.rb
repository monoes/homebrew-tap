class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v1.1.1/monotask-v1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "df8ebabea4b7a06e810e63d5dfe6427d442adc00158adc56f7f2f6e04fcbcb99"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v1.1.1/monotask-v1.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "2169401083f1c71c4b4d9e1b0b341a90d14c3082fe39ee8b6bd021100801ac79"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v1.1.1/monotask-v1.1.1-x86_64-linux.tar.gz"
    sha256 "4852d0a62d63f42814e3331eb4a051b4bfb8e0ad7f78a6acec3fbf8b019e686e"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
