class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.2.0/monotask-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "4f5ad70463698904fe3437900c00533c90c322b1099c633f707334d292b63691"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.2.0/monotask-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee45a97579b811cc71ec4f08a254b14271c579d32a12dddaabaab151865c9230"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.2.0/monotask-v0.2.0-x86_64-linux.tar.gz"
    sha256 "1f1ffabca3752dab9ed358feef167c94d29ee534d084e21fe787a6a6500b05d0"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
