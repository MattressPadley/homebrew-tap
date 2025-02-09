class Bump < Formula
  desc "Version management CLI for multiple languages"
  homepage "https://github.com/mattresspadley/bump"
  version "0.0.4"
  url "https://github.com/mattresspadley/bump/releases/download/v0.0.4/bump-macos"
  sha256 "REPLACE_WITH_YOUR_SHA256"
  license "MIT"

  def install
    bin.install "bump"
  end

  test do
    system "#{bin}/bump", "--version"
  end
end