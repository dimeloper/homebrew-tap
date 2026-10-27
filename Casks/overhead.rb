cask "overhead" do
  version "0.8.0"
  sha256 "4efbd4780a14612f97ca11e08fc65eb88ee0b9029753625bd8bde711a4e42965"

  url "https://github.com/dimeloper/overhead/releases/download/v#{version}/Overhead-#{version}.dmg"
  name "Overhead"
  desc "Menu bar monitor for memory, CPU and battery per development project"
  homepage "https://github.com/dimeloper/overhead"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Overhead.app"

  uninstall quit: "com.dimeloper.overhead"

  zap trash: [
    "~/Library/Application Support/Overhead",
    "~/Library/Preferences/com.dimeloper.overhead.plist",
  ]
end
