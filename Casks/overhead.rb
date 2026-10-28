cask "overhead" do
  version "0.8.1"
  sha256 "718ac75e07b20ca3d475b06336e00444616e95b479a95cffa3143e7c82027a60"

  url "https://github.com/dimeloper/overhead/releases/download/v#{version}/Overhead-#{version}.dmg"
  name "Overhead"
  desc "Menu bar monitor for memory, CPU and battery per development project"
  homepage "https://github.com/dimeloper/overhead"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Overhead.app"

  uninstall quit: "com.dimeloper.overhead"

  zap trash: [
    "~/Library/Application Support/Overhead",
    "~/Library/Preferences/com.dimeloper.overhead.plist",
  ]
end
