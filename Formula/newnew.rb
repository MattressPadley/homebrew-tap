class Newnew < Formula
  desc "Project bootstrapper"
  homepage "https://github.com/mattresspadley/newnew"
  version "0.4.0"
  url "https://github.com/MattressPadley/newnew/releases/download/v0.4.0/newnew-macos-v0.4.0.tar.gz"
  sha256 "f20dffb4b5f715dea2891e47258cc81ec39ab9553e81ce1663960716d5812e7a"
  license "MIT"

  def install
    bin.install "newnew"
  end

  test do
    system "#{bin}/newnew", "--version"
  end
end