cask "twin" do
  version "0.3.0"
  sha256 "c86a9630e4c1ab9d1719ad7e0d46c74b439b8b44fd23c93857b7d000d4bee87f"

  url "https://github.com/mukhayyar/twin/releases/download/v#{version}/Twin-#{version}.zip"
  name "Twin"
  desc "Clone any Mac app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"

  depends_on macos: ">= :sonoma"

  app "Twin.app"

  # Twin is ad-hoc signed rather than notarized; without this, Gatekeeper
  # refuses to open it on first launch.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Twin.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.mukhayyar.twin.plist",
    "~/Library/Saved Application State/com.mukhayyar.twin.savedState",
  ]
end
