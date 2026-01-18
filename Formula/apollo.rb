class Apollo < Formula
  desc "AI-powered coding assistant for your terminal"
  homepage "https://github.com/i-luv-pho/apollov2"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.1/apollo-darwin-arm64.tar.gz"
      sha256 "00a66b6c359a59c5171625fe94a09e7aa92ebd0d0ec5df81116f599405e87ce1"
    else
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.1/apollo-darwin-x64.tar.gz"
      sha256 "1482b36c2ba8633bdb8119eb6c9a5e4453870940f3797ce5c788c8a886a1c8ec"
    end
  end

  def install
    bin.install "apollo"
  end

  test do
    assert_match "apollo", shell_output("#{bin}/apollo --help")
  end
end
