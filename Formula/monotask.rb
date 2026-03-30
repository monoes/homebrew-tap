class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.15/monotask-v0.3.15-aarch64-apple-darwin.tar.gz"
      sha256 "888c461a62e08fab67775c1fca6d52736830afe517c2d39e7d92e81cd09235b0"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.15/monotask-v0.3.15-x86_64-apple-darwin.tar.gz"
      sha256 "40097dde9cf7eb7725c7a15ae685ae4c88c58a1fd2333da0f953bc387ddb6a4e"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.15/monotask-v0.3.15-x86_64-linux.tar.gz"
    sha256 "5719cfa8b989053356852f090ec75807cb97aa7ba3d14aa05aa6adbb256f3405"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
