# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudquery < Formula
  desc "Easily monitor and ask questions about your infrastructure."
  homepage "https://cloudquery.io"
  version "0.15.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.15.4/cloudquery_Darwin_x86_64.zip"
      sha256 "928338453c09c9a94749c08c8f53b66f419be71cdee0b94b475da8ef01767bf2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.15.4/cloudquery_Darwin_arm64.zip"
      sha256 "5cf4d2975c77256f816840f9f463a670a129f1bb79a1ab44fa6ff2d8ad7bca3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.15.4/cloudquery_Linux_x86_64.zip"
      sha256 "fe585e4a62defaa783a8d0c72971c1210fbc4027a91c1f2c0aa8e68e5e57b376"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cloudquery/cloudquery/releases/download/v0.15.4/cloudquery_Linux_arm64.zip"
      sha256 "333bba14343240a6529c25e9ac123817033a2b7831501abd9886816aa1ae9900"
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
