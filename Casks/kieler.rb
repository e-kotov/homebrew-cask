cask "kieler" do
  version "1.1.1"
  sha256 "c77841e8786d197bf493efcb36166fe05a2509eac68c0a2e9d0974033bb4cd39"

  url "https://rtsys.informatik.uni-kiel.de/~kieler/files/release_sccharts_#{version}/sccharts_rca_#{version}-macosx.cocoa.x86_64.tar.gz"
  name "kieler"
  desc "Graphical model-based design tool"
  homepage "https://rtsys.informatik.uni-kiel.de/confluence/display/KIELER"

  app "kieler.app"

  postflight do
    Quarantine.release!(download_path: "#{appdir}/kieler.app") if Quarantine.available?
  end

  zap trash: [
    "~/Library/Caches/de.cau.cs.kieler.product",
    "~/Library/Preferences/de.cau.cs.kieler.product.plist",
    "~/Library/Saved Application State/de.cau.cs.kieler.product.savedState",
  ]
end
