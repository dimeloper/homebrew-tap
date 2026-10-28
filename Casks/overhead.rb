cask "overhead" do
  version "0.9.0"
  sha256 "3c61f231906e2ca9280b0a0e354ad0c6a530e748d7bb481253d9ed462506da26"

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
