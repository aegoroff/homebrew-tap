# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Grok < Formula
  desc "Regular expressions macro engine. GROK is a tool like UNIX grep on steroids"
  homepage "https://github.com/aegoroff/grok"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/grok/releases/download/0.2.5/grok-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "1d0d50639ddc32f4df0f5322e52ea6b3f442699c7d4a3583670a9aec38323d4e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/grok/releases/download/0.2.5/grok-0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "edbba96e8bba8c3538bc3e36d6b0f7c6fca511f362cc4fcc1a6d9c0f495759a8"
    end
  end

  def install
    bin.install "grok"
  end

end
