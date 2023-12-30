# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Grok < Formula
  desc "Regular expressions macro engine. GROK is a tool like UNIX grep on steroids"
  homepage "https://github.com/aegoroff/grok"
  version "0.2.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/grok/releases/download/0.2.23/grok-0.2.23-x86_64-apple-darwin.tar.gz"
      sha256 "5d2199d3a0fe9eb61de3d3714369248ee8adf0c74c9dcd2e3de809fade509818"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/grok/releases/download/0.2.23/grok-0.2.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f6fb1d3c2b256daacdfd6810c6320b363760cdf10891da82f2a28567be4b0ae7"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
