class Pjf < Formula
  desc "A CLI that guarantees harmony across all your projects and package.json files."
  homepage "https://github.com/Tchoupinax/package-json-formatter"
  url "https://github.com/Tchoupinax/package-json-formatter/archive/refs/tags/v0.0.1.tar.gz"
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
