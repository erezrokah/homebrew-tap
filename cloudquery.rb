# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudquery < Formula
  desc "Easily monitor and ask questions about your infrastructure."
  homepage "https://cloudquery.io"
  version "0.13.8"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.13.8/cloudquery_Darwin_x86_64.zip"
      sha256 "00d42d77d6e8924e8a33dc66429a04c6dbc874be5b330961dbe2671dbd960a76"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.13.8/cloudquery_Darwin_arm64.zip"
      sha256 "27ef06520cc33555910fda8472ec00e75e9a87f912058b348dea33fe52668dcb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.13.8/cloudquery_Linux_x86_64.zip"
      sha256 "ef04c20266388ab9fc9807e457147f1351829bb06add1564e997d764c604c6d0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.13.8/cloudquery_Linux_arm64.zip"
      sha256 "a1ccf4fb9debbbba13a3774b5fcee6881ff15038647cc0cd92e7d62563c2b7e2"
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
