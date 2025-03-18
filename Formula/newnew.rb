class Newnew < Formula
  desc "Project bootstrapper"
  homepage "https://github.com/mattresspadley/newnew"
  version "0.5.1"
  url "https://github.com/MattressPadley/newnew/releases/download/v0.5.1/newnew-macos-v0.5.1.tar.gz"
  sha256 "864869e160803a03182b3161d4bb6b19a9417a9a1554061716547dca1e7a9d6c"
  license "MIT"

  def install
    bin.install "newnew"
  end

  test do
    system "#{bin}/newnew", "--version"
  end
end