class Ckg < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/check-git/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "88f93a72dc14d5b700437e98102830813e8290d34085e17d8f784cd9a72cc8ae"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
