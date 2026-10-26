cask "twin" do
  version "0.5.0"
  sha256 "83a2181de5cd1a170fca3dbf84c92e9a610b89cb9a5280d6e87437d29a205361"

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
