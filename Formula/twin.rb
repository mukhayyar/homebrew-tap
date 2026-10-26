class Twin < Formula
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"
  license "MIT"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.0/twin_0.5.0_darwin_universal.tar.gz"
      sha256 "14fdc7f07816193523cceaada5c954b0fe8e0f554320d9ec6e5614593c5c1e4f"
    end
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.0/twin_0.5.0_darwin_universal.tar.gz"
      sha256 "14fdc7f07816193523cceaada5c954b0fe8e0f554320d9ec6e5614593c5c1e4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.0/twin_0.5.0_linux_amd64.tar.gz"
      sha256 "2bcf11c53bd28e790802c2940b61df7ae69deb91d1efec8d2bb85acc88db8bec"
    end
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.0/twin_0.5.0_linux_arm64.tar.gz"
      sha256 "6944c81d47e9a453ee446decad706ffb3c008c475265a1b1cf84bb0e559fa2ea"
    end
  end

  def install
    bin.install "twin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twin --version")
  end
end
