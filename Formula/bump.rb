class Bump < Formula
  desc "Interactive TUI for semantic versioning and changelog generation"
  homepage "https://github.com/MattressPadley/bump"
  version "0.1.4"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.4/bump-darwin-amd64.tar.gz"
    sha256 "1677ea0e36c7bd94ff09618f671f856bcdb80b9a15e4716b06705bb9d1f440b0"
  else
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.4/bump-darwin-arm64.tar.gz"
    sha256 "7b25783971c50e531401b12dd1e604601a0a5637c959dad098121287bc2a6a9f"
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
