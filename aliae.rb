class Aliae < Formula
  desc "Cross shell and platform alias management"
  homepage "https://aliae.dev"
  url "https://github.com/JanDeDobbeleer/aliae/archive/v0.9.1.tar.gz"
  head "https://github.com/JanDeDobbeleer/aliae.git", branch: "main"
  sha256 "b4763195c568a38b53b94a2c472539a8e48ca5560c7422b6fb8afab3f3d84720"
  license "MIT"
  version "0.9.1"

  depends_on "go@1.20" => :build

  def install
    Dir.chdir("src") do
      ENV["GOPROXY"] = ENV.has_key?("HOMEBREW_GOPROXY") ? ENV["HOMEBREW_GOPROXY"] : ""
      system("go build -o=aliae -ldflags=\"-s -w -X \'main.Version=0.9.1\'\"")
      bin.install "aliae"
    end
  end

  def caveats
    <<~EOS
      Thanks for installing aliae.
      Have a look at https://www.aliae.dev/docs/setup/shell for detailed instructions for your shell.

      If you're enjoying aliae, feel free to donate or become a sponsor.
      https://github.com/sponsors/JanDeDobbeleer

      In case you're looking for help, want to share how you use aliae, or find like-minded individuals, join our Discord community!
      https://discord.gg/n7E3DkXssv
    EOS
  end

  test do
    system "#{bin}/aliae", "--help"
  end
end

