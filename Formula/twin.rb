class Twin < Formula
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"
  license "MIT"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.4/twin_0.5.4_darwin_universal.tar.gz"
      sha256 "8729320a7df1d849085ef23d00238b2711da9a3db1965e550a2cfc87576d0953"
    end
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.4/twin_0.5.4_darwin_universal.tar.gz"
      sha256 "8729320a7df1d849085ef23d00238b2711da9a3db1965e550a2cfc87576d0953"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.4/twin_0.5.4_linux_amd64.tar.gz"
      sha256 "3b9d9c9158e9262234203cab22fcb7bbb11c5ef933fcf43dd9603719f6039d80"
    end
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.4/twin_0.5.4_linux_arm64.tar.gz"
      sha256 "5fee58aa569ee57cc7d7f32481c84b2762f5d47c1e779889201d960fde8b4491"
    end
  end

  def install
    bin.install "twin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twin --version")
  end
end
