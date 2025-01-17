cask "saladict" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.6"
  sha256 arm:   "8345fcad187efb9fffcbe88d9b62cd05d8bbc4cd05731fc89c5447ac17a6d8b4",
         intel: "ed49bfe4788b4a5cca76394e377817211c7c7544ce607ab41968da3845e5eb03"

  url "https://github.com/allentown521/saladict/releases/download/#{version}/Saladict_#{version}_#{arch}.dmg"
  name "Saladict"
  desc "Cross-platform software for text translation and recognize"
  homepage "https://github.com/allentown521/saladict"

  app "Saladict.app"
  binary "#{appdir}/Saladict.app/Contents/MacOS/Saladict"

  zap trash: [
    "~/Library/Application Support/allen.town.focus.saladict",
    "~/Library/Caches/allen.town.focus.saladict",
  ]
end
