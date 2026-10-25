class Twin < Formula
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"
  license "MIT"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.4.0/twin_0.4.0_darwin_universal.tar.gz"
      sha256 "4c21bab47b3049fd420fc6ef5037c456573796a46cf9435e43736f4956cda354"
    end
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.4.0/twin_0.4.0_darwin_universal.tar.gz"
      sha256 "4c21bab47b3049fd420fc6ef5037c456573796a46cf9435e43736f4956cda354"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mukhayyar/twin/releases/download/v0.4.0/twin_0.4.0_linux_amd64.tar.gz"
      sha256 "01b0835a7aa41bf68fc730cb67f8640c559739e0c2dd33b76669f08f74578c7a"
    end
    on_arm do
      url "https://github.com/mukhayyar/twin/releases/download/v0.4.0/twin_0.4.0_linux_arm64.tar.gz"
      sha256 "68e926c2a96d9b8bffdaaf68c795cb3a4b4962a7666274d3f181a106f7f44e77"
    end
  end

  def install
    bin.install "twin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twin --version")
  end
end
