class Apollo < Formula
  desc "AI-powered coding assistant for your terminal"
  homepage "https://github.com/i-luv-pho/apollov2"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.0/apollo-darwin-arm64.tar.gz"
      sha256 "5605e9089c68a46e07417a3c02c3d83d3a47cc358a6694ad8d328965c40b4e54"
    else
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.0/apollo-darwin-x64.tar.gz"
      sha256 "c859b91fd32f8898892bf4c00e84eddc4a05167c4a3b2ecf9d2507c8da7ac76d"
    end
  end

  def install
    bin.install "apollo"
  end

  test do
    assert_match "apollo", shell_output("#{bin}/apollo --help")
  end
end
