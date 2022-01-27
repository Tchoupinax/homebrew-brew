class Ckg < Formula
  desc "_"
  homepage "_"
  url "https://github.com/Tchoupinax/check-git/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "b9df59eb18a048b95c259ee0a1845c9a51a0e0f109b310adb9da16a7784723ca"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
