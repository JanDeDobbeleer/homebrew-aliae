cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.25.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "8e530dc9642e292e14e02a633aec44a03094816d6031318d21f37fb9d3e60b9c",
           intel: "b342fc51032ab1d336779f106d057036269e1221c3e14e5385f4a88feb92fdf1"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

