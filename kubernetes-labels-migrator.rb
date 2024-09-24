class KubernetesLabelsMigrator < Formula
  desc "Your favorite tool to migrate labels on your deployments without any downtime."
  homepage "https://github.com/Tchoupinax/k8s-labels-migrator"
  url "https://github.com/Tchoupinax/k8s-labels-migrator/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "8dc92f20783b155dc6e31e9bd24559524ce78d6058d996efdee79dc5866b126f"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
