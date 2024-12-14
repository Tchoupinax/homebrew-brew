class SshList < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/ssh-list/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "47bb1ed55a500e2752402f69b9ae0b11f76e9c5dd3d3150627214a37457b1133"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
