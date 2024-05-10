class KubernetesLabelsMigrator < Formula
  desc "Your favorite tool to migrate labels on your deployments without any downtime "
  homepage "https://github.com/Tchoupinax/k8s-labels-migrator"
  url "https://github.com/Tchoupinax/k8s-labels-migrator/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "99b674f26732c9394d139beebfdcef8e7930c81566c8a3cd9837d69192d4c54a"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
