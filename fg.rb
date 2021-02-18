# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fg < Formula
  desc "Small console app written in Go that allows you to easily group all files in the dir specified"
  homepage "https://github.com/aegoroff/fg"
  version "0.2.4"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aegoroff/fg/releases/download/v0.2.4/fg_0.2.4_darwin_amd64.tar.gz"
    sha256 "ad412a1dc1afaaea80c17b0d0c92c1ed8ecfaba92439da52f20a1fc771ce32ac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/aegoroff/fg/releases/download/v0.2.4/fg_0.2.4_darwin_arm64.tar.gz"
    sha256 "348c88df622acf87ee153994d3b9fa8fe6d2d47e848f3ce30e2ee4389a0f28d0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aegoroff/fg/releases/download/v0.2.4/fg_0.2.4_linux_amd64.tar.gz"
    sha256 "9dd4ee1049da6faf152e8f540cf11d56c024c8ffb08ebcac597fe0de3972fecf"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/aegoroff/fg/releases/download/v0.2.4/fg_0.2.4_linux_armv7.tar.gz"
    sha256 "f088f93ea79d96c90e4d73b4a8c067d8f41ff35952e730af681a29dda9e982ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/aegoroff/fg/releases/download/v0.2.4/fg_0.2.4_linux_arm64.tar.gz"
    sha256 "e6b3f5fee3628e5e9c5bea1cef978a440c8241d2d3b527d0b0ee8fe997ba2239"
  end

  def install
    bin.install "fg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fgr ver")
  end
end
