cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "1.1.2"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "06567fabb3a462860378c328f85a7f4235eeb382d294ff5ffac9b1b8b87cad6c",
           intel: "e187b95f1eb2b974e72796ec4c8c66afcd4fe101323ccaf175eff63615bfbda5"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

