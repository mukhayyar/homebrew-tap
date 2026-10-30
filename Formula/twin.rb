class Twin < Formula
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"
  license "MIT"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.6.0/twin_0.6.0_darwin_universal.tar.gz"
      sha256 "3949e68bf80367def22c6a085e02bad181accb900fabca5e30dc8d2da1291175"
    end
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.6.0/twin_0.6.0_darwin_universal.tar.gz"
      sha256 "3949e68bf80367def22c6a085e02bad181accb900fabca5e30dc8d2da1291175"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.6.0/twin_0.6.0_linux_amd64.tar.gz"
      sha256 "342299fd1e0d1cfd6ad695a5bb411032dc864c54db35853cf17c8bd43a646847"
    end
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.6.0/twin_0.6.0_linux_arm64.tar.gz"
      sha256 "161ac5bacbe2640fc9987a07c8a9056be9f39fded629b2ae48f14619d2323b84"
    end
  end

  def install
    bin.install "twin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twin --version")
  end
end
