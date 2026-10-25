cask "twin" do
  version "0.4.0"
  sha256 "a99b94e05d3a4b0bb72f0eb2f60768df08d679c8a81c76632f7f2265e1f9d235"

  url "https://github.com/mukhayyar/twin/releases/download/v#{version}/Twin-#{version}.zip"
  name "Twin"
  desc "Clone any Mac app into a twin with its own isolated profile"
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
