# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudquery < Formula
  desc "Easily monitor and ask questions about your infrastructure."
  homepage "https://cloudquery.io"
  version "0.14.0-beta"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.14.0-beta/cloudquery_Darwin_x86_64.zip"
      sha256 "8fd0014be085e6059e968e701a99d7ed7328b3b03115c61ac3002b5c6d329889"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.14.0-beta/cloudquery_Darwin_arm64.zip"
      sha256 "624375e13831cfe861a3f37b34a9dd24a5600548c743a86b0fe89b6b80824dd8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.14.0-beta/cloudquery_Linux_x86_64.zip"
      sha256 "0b959809f7b821ddda4689cca31677d5b3cc3b656e63b42be61e81ae37492703"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.14.0-beta/cloudquery_Linux_arm64.zip"
      sha256 "476e1292356473405109d2b1e0f1a6cc3bb5ad9bcd5c4b1d8b24597ec5b54310"
    end
  end

  def install
    bin.install "cloudquery"
    output = Utils.safe_popen_read("#{bin}/cloudquery", "completion", "bash")
    (bash_completion/"cloudquery").write output
    output = Utils.safe_popen_read("#{bin}/cloudquery", "completion", "zsh")
    (zsh_completion/"_cloudquery").write output
    output = Utils.safe_popen_read("#{bin}/cloudquery", "completion", "fish")
    (fish_completion/"cloudquery.fish").write output
  end
end
