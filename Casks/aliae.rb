cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.26.5"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "2767c5fd92f1d45e3e4c1398d8b05048808a385d9503cfc7db81ce1014801b6f",
           intel: "b90622de530602512467973cb17eda75e051967d5a7a8414687e6946405afc0c"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

