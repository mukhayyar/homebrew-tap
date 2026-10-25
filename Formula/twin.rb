class Twin < Formula
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"
  version "0.3.0"
  license "MIT"

  on_macos do
    url "https://github.com/mukhayyar/twin/releases/download/v0.3.0/twin_0.3.0_darwin_universal.tar.gz"
    sha256 "811ba414cb536b4cd586eb9db775bee3fa26c1728d0b872c16b823bb686605a2"
  end

  on_linux do
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.3.0/twin_0.3.0_linux_amd64.tar.gz"
      sha256 "bf54d2d2cac84a60226070e09636f9e003ddc33146f17e050902bd01143c7a5f"
    end
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.3.0/twin_0.3.0_linux_arm64.tar.gz"
      sha256 "7a01d8ef89604851d6ad0efe257be34f5b5d821b1512ec3d36953d7fb1a43a6b"
    end
  end

  def install
    bin.install "twin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twin --version")
  end
end
