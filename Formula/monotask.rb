class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.1/monotask-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "b466292b0b35bdef89931d0bb26424a76e338a09eb66e5340640f033ad12117f"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.1/monotask-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "14e009a6abcef74648265edfc7867a0d38b6a4149f705f08c7e2b2717fb00afb"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.1/monotask-v0.3.1-x86_64-linux.tar.gz"
    sha256 "29c258a809da8165cfb9230c9acecf3ccc3d7a067d3415a2b27f65574564cb76"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
