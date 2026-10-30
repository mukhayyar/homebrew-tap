class Twin < Formula
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"
  license "MIT"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.6.1/twin_0.6.1_darwin_universal.tar.gz"
      sha256 "bf95201117d38c02c8cc92f2455cdb55ec8e2ee035d02a51a1ed3b947135c4ad"
    end
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.6.1/twin_0.6.1_darwin_universal.tar.gz"
      sha256 "bf95201117d38c02c8cc92f2455cdb55ec8e2ee035d02a51a1ed3b947135c4ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.6.1/twin_0.6.1_linux_amd64.tar.gz"
      sha256 "cbfee348a317bdf757f0490c1d1f68213d923c1192fde6224dfb440ce4739f97"
    end
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.6.1/twin_0.6.1_linux_arm64.tar.gz"
      sha256 "712c77bef54b732afef72541369abc1616425064d1ebb61dce5f7615c6734ebe"
    end
  end

  def install
    bin.install "twin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twin --version")
  end
end
