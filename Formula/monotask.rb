class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.0/monotask-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ef50db1b207fa65318b8ff9ce8f6629517ff6b1987992bf2dbfeebb5a834bf62"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v0.3.0/monotask-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "019ed44dae9f3e459863d9e686b36d1b9b511473d13258daf4abc7d334b0bff7"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v0.3.0/monotask-v0.3.0-x86_64-linux.tar.gz"
    sha256 "60f5be6f70cc24acdd6985a24c11958d88455b23b44ed9aac4ccb56d7f5b5339"
  end

  def install
    bin.install "monotask"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotask ai-help")
  end
end
