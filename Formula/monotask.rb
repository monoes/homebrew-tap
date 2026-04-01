class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.21/monotask-v0.3.21-aarch64-apple-darwin.tar.gz"
      sha256 "66e445f9a5324c5cc86336451bc7952477e0000933536eb280de255f13f1255c"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.21/monotask-v0.3.21-x86_64-apple-darwin.tar.gz"
      sha256 "a57c55729859e2798fb86ca34748d30f1107214962d9c437a8dbec7ee7a59419"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.21/monotask-v0.3.21-x86_64-linux.tar.gz"
    sha256 "3350e9f739729fc116827b8bc79d277ac01f04bda45556f2d9900c694bcd694a"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
