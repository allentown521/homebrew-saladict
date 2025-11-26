cask "saladict" do
  arch arm: "aarch64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "60573361b548cb839fe9e7f17f2b471ce774194bd8a33534f9894ed7557be38c",
         intel: "98be5ce67120d95313a94b60f86ef4067b53dba988ac8afe2f590161a573f6dd"

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
