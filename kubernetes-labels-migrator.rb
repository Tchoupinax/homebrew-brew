class KubernetesLabelsMigrator < Formula
  desc "Your favorite tool to migrate labels on your deploy without any downtime "
  homepage "https://github.com/Tchoupinax/k8s-labels-migrator"
  url "https://github.com/Tchoupinax/k8s-labels-migrator/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "f1dbb1bc1a58d724913a34694b64fc28694a77b8168598d79c6b858f0fb11883"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
