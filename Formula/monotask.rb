class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v1.0.0/monotask-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "3073c261638cb0445de92a2b5a12be2319326c6d9f535620fba6e789b480cc17"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v1.0.0/monotask-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "e358be0963bc6a7ae61442f1df1d2c8584ba4451bca37f49bd4fa84656a950e2"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v1.0.0/monotask-v1.0.0-x86_64-linux.tar.gz"
    sha256 "14b3e5919a8755589c4892095e0c06d9b4b3fcdc2ed495070014c716408034d3"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
