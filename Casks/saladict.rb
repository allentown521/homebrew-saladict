cask "saladict" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.8"
  sha256 arm:   "f2123d1d00a118bafdac59ff34198af7c887a8b8f5850a7a158c80f915778c10",
         intel: "a8987402fd28a037cf30171c7859f04d0fd3740ee958f90931e6a2a3f35f781e"

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
