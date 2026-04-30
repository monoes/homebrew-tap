class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v1.1.0/monotask-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "037c058c54820af0ca7d403f292f0d81cd9efcf0b951e8861e6af396a8fab09c"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v1.1.0/monotask-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a2a0c9b8400a6b7f49494687d55bcf93bfcd9ae9d271498957a31eb6772c7cae"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v1.1.0/monotask-v1.1.0-x86_64-linux.tar.gz"
    sha256 "c678c2148f66052a31b9be2a1a4bc5281b6eda788a4863352ce9ed7fbb13b2d4"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
