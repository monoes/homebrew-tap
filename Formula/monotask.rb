class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.5/monotask-v0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "99c10f58f05e9da531fea73d5183087f45349b4745a310529c17437e4bcb772b"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.5/monotask-v0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "d8e044425606b14f78b4db7eb402f4e825857b555be97517c656c4a121578f45"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.5/monotask-v0.3.5-x86_64-linux.tar.gz"
    sha256 "985d50bc591214b63062559f32686f0e6a67529cd4c08b92968365d8a7ed9f43"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
