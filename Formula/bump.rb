class Bump < Formula
  desc "Version management CLI for multiple languages"
  homepage "https://github.com/mattresspadley/bump"
  version "0.0.5"
  url "https://github.com/MattressPadley/bump/releases/download/v0.0.5/bump-macos-v0.0.5.tar.gz"
  sha256 "5610d778870306fc1d0c3cba5a607293025a590f201a702ec09f17edcf9aa736"
  license "MIT"

  def install
    bin.install "bump"
  end

  test do
    system "#{bin}/bump", "--version"
  end
end