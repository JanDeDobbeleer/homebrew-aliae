cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.19.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "f8ac40261253c21913b71fb04cbbfec68278292e63fc2b820390ea9466c70b35",
           intel: "334d8162315add183fbfee01c4314f0b1b5e84a60c7eb68d528551ea03fb3396"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

