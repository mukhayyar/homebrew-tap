cask "twin" do
  version "0.6.0"
  sha256 "79799af105dd5f941d1a92853e9464ec0204b329fb353a8e8c63458740935b02"

  url "https://github.com/mukhayyar/twin/releases/download/v#{version}/Twin-#{version}.zip"
  name "Twin"
  desc "Clone any app into a twin with its own isolated profile"
  homepage "https://github.com/mukhayyar/twin"

  depends_on macos: :sonoma

  app "Twin.app"

  # Twin is ad-hoc signed rather than notarized; without this, Gatekeeper
  # refuses to open it on first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Twin.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.mukhayyar.twin.plist",
    "~/Library/Saved Application State/com.mukhayyar.twin.savedState",
  ]
end
