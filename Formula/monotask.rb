class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.11/monotask-v0.3.11-aarch64-apple-darwin.tar.gz"
      sha256 "98c3fc1bbe9e7b477e09cf27339d9da7320b41df25ef6c8577496ebdaa2bc1ab"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.11/monotask-v0.3.11-x86_64-apple-darwin.tar.gz"
      sha256 "20b8fbea01ef5ec2251c5a98fd5dd315409abfd68dffb1356a72076538fb2157"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.11/monotask-v0.3.11-x86_64-linux.tar.gz"
    sha256 "5672f605f0dee5247913bf7d704abec64b2a5c5f17ebdfbff8813bc0cabedd0d"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
