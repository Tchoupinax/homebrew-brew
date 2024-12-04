class Ckg < Formula
  desc "_"
  homepage "https://github.com/Tchoupinax/homebrew-brew"
  url "https://github.com/Tchoupinax/check-git/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "384c7ecbef15488dcc963999449c64c8a8dc89c45e23ae2caa527d02d5362836"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
