# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudquery < Formula
  desc "Easily monitor and ask questions about your infrastructure."
  homepage "https://cloudquery.io"
  version "0.11.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cloudquery/cloudquery/releases/download/v0.11.2/cloudquery_Darwin_x86_64.zip"
    sha256 "7833390b2d3e1980c96187a60dd497f793be4883cd3d4068955f2df1e0d7fe2a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cloudquery/cloudquery/releases/download/v0.11.2/cloudquery_Linux_x86_64.zip"
    sha256 "1e298c5ff860297ac1416e20b1ad7ade642f281580f026aad97fb46c21004c3a"
  end

  def install
    bin.install "cloudquery"
  end
end
