class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.4/monotask-v0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "0a6bf2a5d0822633ebba0bf3b335d0e78160ab468efb17b5c6b9f8370a14ecb7"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.4.4/monotask-v0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "881f502d405c4d75a03930194c665002916410d9e16910fbf7a9b25bcf226996"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.4.4/monotask-v0.4.4-x86_64-linux.tar.gz"
    sha256 "618e2778ac944588f504b6acdac70b39f1502dabd74020576769e66900153db4"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
