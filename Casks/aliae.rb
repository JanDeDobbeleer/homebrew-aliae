cask "aliae" do
    desc "Cross shell and platform alias management"
    homepage "https://aliae.dev"
    arch arm: "arm64", intel: "amd64"
    version "0.16.0"
    url "https://github.com/JanDeDobbeleer/aliae/releases/download/v#{version}/aliae-darwin-#{arch}"
    sha256 arm:   "ba57ca788a4059c4fe8867f22db176d1bcc4105714145754b83359e3ff9ba1fd",
           intel: "20ad98dd22eec38736e299f640d8f85adc8fc10c57d48e10222c9ab6a86e330f"
    name "aliae"
    binary "aliae-darwin-#{arch}", target: "aliae"
    auto_updates true
end

