class Gb < Formula
  desc "Tools to easily switch and view your git branches"
  homepage "https://github.com/Tchoupinax/git-branch"
  url "https://github.com/Tchoupinax/git-branch/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "f8c5794398c6761bbc45e6ba33603d8d6e8230eadc27b4afedada3b26ad18ff3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
