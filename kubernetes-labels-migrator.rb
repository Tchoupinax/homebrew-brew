class KubernetesLabelsMigrator < Formula
  desc "Your favorite tool to migrate labels on your deployments without any downtime."
  homepage "https://github.com/Tchoupinax/k8s-labels-migrator"
  url "https://github.com/Tchoupinax/k8s-labels-migrator/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "3bb51133e72e6b2857d26d33f583b356d747f982cc19a267b83802cfefdee521"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    require "net/http"
    require 'date'

    uri = URI("https://api.github.com/repos/Tchoupinax/k8s-labels-migrator/releases/latest")
    resp = Net::HTTP.get(uri)
    resp_json = JSON.parse(resp)
    
    latest_version = resp_json["tag_name"]
    build_date = Date.parse(resp_json["published_at"]).strftime('%Y-%m-%d')

    ldflags = %W[
      -s -w
      -X main.version=#{latest_version}
      -X main.buildDate=#{build_date}
    ]

    system "go", "build", "-mod=readonly", *std_go_args(ldflags:)
  end

  test do
    system "false"
  end
end
