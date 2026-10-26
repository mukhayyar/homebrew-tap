class Twin < Formula
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"
  license "MIT"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.2/twin_0.5.2_darwin_universal.tar.gz"
      sha256 "557cf31d33371f89581619f35ea7280de0a183508b105e57f32695f2d2e1bcca"
    end
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.2/twin_0.5.2_darwin_universal.tar.gz"
      sha256 "557cf31d33371f89581619f35ea7280de0a183508b105e57f32695f2d2e1bcca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.2/twin_0.5.2_linux_amd64.tar.gz"
      sha256 "903bca82f56906f0a3abcf9c715b0786712618148b033425fdc844a37e142eb1"
    end
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.2/twin_0.5.2_linux_arm64.tar.gz"
      sha256 "425893e5f112cf129033b2469d5d51b99b1f89c47bf339ce4f2c5a39541e9161"
    end
  end

  def install
    bin.install "twin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twin --version")
  end
end
