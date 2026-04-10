class Pjf < Formula
  desc "A CLI that guarantees harmony across all your projects and package.json files."
  homepage "https://github.com/Tchoupinax/package-json-formatter"
  url "https://github.com/Tchoupinax/package-json-formatter/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "1b024d8c75cbfd23b70a28844fb14a6c2d6562259602cfbe4895d06a1739327f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
