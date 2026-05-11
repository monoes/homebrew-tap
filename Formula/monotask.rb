class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "1.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v1.1.6/monotask-v1.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "fff389e41f617cbeb9544bb00fbccf0dcd8504a0b012917b25d1c9fb8b9a9b9b"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v1.1.6/monotask-v1.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "56d1fb7bf6413e638d654a7396ec44ef09f039496d8cb4041325949526c00780"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v1.1.6/monotask-v1.1.6-x86_64-linux.tar.gz"
    sha256 "5b05745eb9a77458e27592a8db0bd4c7b06c6a586cbe5710bbbbf596bd2f7237"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
