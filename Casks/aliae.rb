cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.17.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "68f1898dfd5c872b300378737fa5bd69b4fed55fd2cf0f65a68cf02aeeaeca54",
           intel: "4b04f89c8411c55b827a9779e68ab916c6dabde5091de4d65e60d9d0094ad48a"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

