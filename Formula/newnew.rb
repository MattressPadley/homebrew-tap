class Newnew < Formula
  desc "Project bootstrapper"
  homepage "https://github.com/mattresspadley/newnew"
  version "0.5.0"
  url "https://github.com/MattressPadley/newnew/releases/download/v0.5.0/newnew-macos-v0.5.0.tar.gz"
  sha256 "7b0ce44b5603a848c4d35165f28e4d24fe2a1e2e367ac5c2e51a3f0f0fe80a39"
  license "MIT"

  def install
    bin.install "newnew"
  end

  test do
    system "#{bin}/newnew", "--version"
  end
end