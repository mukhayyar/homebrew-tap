class Twin < Formula
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"
  license "MIT"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.1/twin_0.5.1_darwin_universal.tar.gz"
      sha256 "dc27b4064c2ab763752a3dbf7d17b6bf1be0feb9d1b16095eb44912bc1277108"
    end
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.1/twin_0.5.1_darwin_universal.tar.gz"
      sha256 "dc27b4064c2ab763752a3dbf7d17b6bf1be0feb9d1b16095eb44912bc1277108"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.1/twin_0.5.1_linux_amd64.tar.gz"
      sha256 "ea2701a5e770cb78a100dc50f152a53644304a957b798fd7b611fc45247dbd39"
    end
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.5.1/twin_0.5.1_linux_arm64.tar.gz"
      sha256 "79245ca3577605bd4ca0e66db039eb3579333e946bc110f3060d151f97e1837d"
    end
  end

  def install
    bin.install "twin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twin --version")
  end
end
