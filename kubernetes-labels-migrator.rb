class KubernetesLabelsMigrator < Formula
  desc "Your favorite tool to migrate labels on your deploy without any downtime "
  homepage "https://github.com/Tchoupinax/k8s-labels-migrator"
  url "https://github.com/Tchoupinax/k8s-labels-migrator/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "226f70f74e488d4c31969c21915dc34c302a950b0dfc4a0d5ffc011b3cfab4f7"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
