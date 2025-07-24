class Bump < Formula
  desc "Interactive TUI for semantic versioning and changelog generation"
  homepage "https://github.com/MattressPadley/bump"
  version "0.1.5"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.5/bump-darwin-amd64.tar.gz"
    sha256 "d56b91468378e909e43f5dd214f3abf5a5b4289d4dfec4b3fc836039cfec1580"
  else
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.5/bump-darwin-arm64.tar.gz"
    sha256 "ab57776c0be33e0ecc5c78e553e736548f6aaa5993c23bc69a38cccfcd888892"
  end

  def install
    if Hardware::CPU.intel?
      bin.install "bump-darwin-amd64" => "bump"
    else
      bin.install "bump-darwin-arm64" => "bump"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bump -version")
  end
end
