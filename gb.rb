class Gb < Formula
  desc "Tools to easily switch and view your git branches."
  homepage "https://github.com/Tchoupinax/git-branch"
  url "https://github.com/Tchoupinax/git-branch/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "58df0e42f6a07bb8fb202c4f42f07d77a56213f1785699590ce09e74919a9de6"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
