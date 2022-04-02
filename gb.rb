class Gb < Formula
  desc "Tools to easily switch and view your git branches"
  homepage "https://github.com/Tchoupinax/git-branch"
  url "https://github.com/Tchoupinax/git-branch/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "b17a4c44f002f6f1e80aea4e8c0e9ac5261425025a1f286d7693b5eb8097f834"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
