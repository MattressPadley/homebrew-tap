class Bump < Formula
  desc "Interactive TUI for semantic versioning and changelog generation"
  homepage "https://github.com/MattressPadley/bump"
  version "0.1.2"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.2/bump-darwin-amd64.tar.gz"
    sha256 "d787070858771fc53f92c1d5711b1999a705c2603cce20bd4057866caf791510"
  else
    url "https://github.com/MattressPadley/bump/releases/download/v0.1.2/bump-darwin-arm64.tar.gz"
    sha256 "94c64bbb94bfe1f1d42b21381bc758fa202a50cec49b50358122c23a6c99f433"
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
