cask "nvidia-geforce-now" do
  version "2.0.26.108,301A7F"
  sha256 "964f2603e7c9a7508eb351e671411180d376adb15a0d3a088a9face03869cc1c"

  url "https://ota-downloads.nvidia.com/ota/GeForceNOW-release.app_#{version.after_comma}.zip"
  appcast "https://ota.nvidia.com/release/available?product=GFN-mac&version=#{version.before_comma}&channel=OFFICIAL",
          must_contain: "[]" # Only happens when there are no newer versions
  name "NVIDIA GeForce NOW"
  desc "Cloud gaming platform"
  homepage "https://www.nvidia.com/en-us/geforce/products/geforce-now/"

  depends_on macos: ">= :yosemite"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "GeForceNOW.app", target: "NVIDIA GeForce NOW.app"

  zap trash: [
    "~/Library/Application Support/NVIDIA/GeForceNOW",
    "~/Library/Preferences/com.nvidia.gfnpc.mall.helper.plist",
  ]
end
