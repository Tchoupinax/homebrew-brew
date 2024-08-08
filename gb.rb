class Gb < Formula
  desc "Tools to easily switch and view your git branches"
  homepage "https://github.com/Tchoupinax/git-branch"
  url "https://github.com/Tchoupinax/git-branch/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "6e21f50ac2e46f65fcdf2ead297a4ee9f84990a49db756004ad4e5d6d2187c6d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
