cask "saladict" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.8"
  sha256 arm:   "5ab9d81d9c3fe8d4c45333e350d77eb6e606ef3be19e2bbd1c28a18c9197cdda",
         intel: "ef18331f9dee23e7f19c8f0a616858901f5a3f6c9a1075b07b29511e9c323178"

  url "https://github.com/allentown521/saladict/releases/download/#{version}/saladict_#{version}_#{arch}.dmg"
  name "saladict"
  desc "Cross-platform software for text translation and recognize"
  homepage "https://github.com/allentown521/saladict"

  app "saladict.app"
  binary "#{appdir}/saladict.app/Contents/MacOS/Saladict"

  zap trash: [
    "~/Library/Application Support/allen.town.focus.saladict",
    "~/Library/Caches/allen.town.focus.saladict",
  ]
end
