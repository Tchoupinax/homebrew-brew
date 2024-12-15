class SshList < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/ssh-list/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "12a82fb20ae9fc76703ba1ca76911c1ac97fb5819d794fca79295c0d531f2514"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
