class Apollo < Formula
  desc "AI-powered coding assistant for your terminal"
  homepage "https://github.com/i-luv-pho/apollov2"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.0/apollo-darwin-arm64.tar.gz"
      sha256 "eae7c09a93ed15108830ddc2f734d4dcc39e8784102d29f2304a08110b626851"
    else
      url "https://github.com/i-luv-pho/apollov2/releases/download/v1.0.0/apollo-darwin-x64.tar.gz"
      sha256 "42e751e0d5725f5092dd8cf043c60266e5c8f46c5145e1d5d8dd7b3e9c62d355"
    end
  end

  def install
    bin.install "apollo"
  end

  test do
    assert_match "apollo", shell_output("#{bin}/apollo --help")
  end
end
