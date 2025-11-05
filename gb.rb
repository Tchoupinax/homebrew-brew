class Gb < Formula
  desc "Tools to easily switch and view your git branches"
  homepage "https://github.com/Tchoupinax/git-branch"
  url "https://github.com/Tchoupinax/git-branch/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2dd74ae2c1d69c63c2f0b21880e9721c1e4b621f756ceb5612201ebe05e1c582"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
