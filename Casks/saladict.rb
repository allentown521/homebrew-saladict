cask "saladict" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.8"
  sha256 arm:   "a71bca72ad2c38c4756bf667e578462cccdf2a74a66a715a7bb83aa4d13cf3c8",
         intel: "6a76d135a03576e019470e02656f0f8fa3d6a13706cc1d733736b7e66aa5eafe"

  url "https://github.com/allentown521/saladict/releases/download/#{version}/saladict_#{version}_#{arch}.dmg"
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
