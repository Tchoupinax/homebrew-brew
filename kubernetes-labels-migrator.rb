class KubernetesLabelsMigrator < Formula
  desc "Your favorite tool to migrate labels on your deployments without any downtime "
  homepage "https://github.com/Tchoupinax/k8s-labels-migrator"
  url "https://github.com/Tchoupinax/k8s-labels-migrator/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "89b0f33cf47799c0bf9cbe8ebc33a34015d5bbcda00b1e4fcd594dda37da1fbd"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
