# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudquery < Formula
  desc "Easily monitor and ask questions about your infrastructure."
  homepage "https://cloudquery.io"
  version "0.15.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.15.0/cloudquery_Darwin_x86_64.zip"
      sha256 "59133922f436ff8087611d816ad86400320ef50539bad90089c34e9bd9d5a7eb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.15.0/cloudquery_Darwin_arm64.zip"
      sha256 "f8b454b252c366cc15d34068435d344b5a91398fbc946152f103705fbd3fbaf3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.15.0/cloudquery_Linux_x86_64.zip"
      sha256 "f9e385bab01f9686cd781b44689c2498a1a40179a494301dfc086388f1268fea"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.15.0/cloudquery_Linux_arm64.zip"
      sha256 "729fff023d226fcffe759ec730270efc9ac096642a7b29d368a2b491cf2be316"
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
