cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.20.1"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "0839deb1b4bc6477235ab42873bd7400a79e258043b5007dd4e0aa65b6179928",
           intel: "26c53b488d25fb3dabdfc0a68c5e8fa587776fa93b4685ed7896af600f718cbb"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

