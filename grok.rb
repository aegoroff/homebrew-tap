# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Grok < Formula
  desc "Regular expressions macro engine. GROK is a tool like UNIX grep on steroids"
  homepage "https://github.com/aegoroff/grok"
  version "0.2.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/grok/releases/download/0.2.27/grok-0.2.27-x86_64-apple-darwin.tar.gz"
      sha256 "dc0beacf2555c4994a185aadf955543dcb1495fcd8888e2e6ed6c34054c61367"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/grok/releases/download/0.2.27/grok-0.2.27-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f31cfc820388fe23f0177b4b5f1f74dcec8ed55dbabfbb97027b2b71897520a8"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
