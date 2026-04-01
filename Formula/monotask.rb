class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.19/monotask-v0.3.19-aarch64-apple-darwin.tar.gz"
      sha256 "f283035b31efa29ae0acbd9f3da9aba6975467e2072c9c797ba34761d070c61c"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.19/monotask-v0.3.19-x86_64-apple-darwin.tar.gz"
      sha256 "5b4fd8ceb784972a66fb1e9bee45d98d22b0bc2dede03a9102aa917abd821491"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.19/monotask-v0.3.19-x86_64-linux.tar.gz"
    sha256 "deea127389a36385d1795f1d7de089662761915496c6b57822dbf8999bdd608f"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
