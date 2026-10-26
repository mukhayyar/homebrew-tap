class Twin < Formula
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"
  license "MIT"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.3/twin_0.5.3_darwin_universal.tar.gz"
      sha256 "1effd5e1597dc4ff35eb2acdcddcc7abdcc51bf3a41889660c912f9f13106fe3"
    end
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.3/twin_0.5.3_darwin_universal.tar.gz"
      sha256 "1effd5e1597dc4ff35eb2acdcddcc7abdcc51bf3a41889660c912f9f13106fe3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.3/twin_0.5.3_linux_amd64.tar.gz"
      sha256 "81d881531489b670e282573d134d78abf27edb9c87371e4e62ae37ad55f3d1ac"
    end
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.3/twin_0.5.3_linux_arm64.tar.gz"
      sha256 "4ae5e4da6a9cd43ba12ad0e3de6e503397e53c6cb30495f5c6545aa8ed187267"
    end
  end

  def install
    bin.install "twin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twin --version")
  end
end
