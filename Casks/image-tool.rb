cask "image-tool" do
  version "1.4.1"
  sha256 "66ef0c6cdf2e90981bc8bd0d1131e6e0f141744406997712550b8b5a05022d39"

  url "http://www.jimmcgowan.net/diskimages/ImageTool#{version}.dmg"
  name "Image Tool"
  homepage "http://www.jimmcgowan.net/Site/ImageTool.html"

  livecheck do
    url "http://www.jimmcgowan.net/Site/ImageTool.html"
    strategy :page_match
    regex(%r{href=.*?/ImageTool(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Image Tool.app"
end
