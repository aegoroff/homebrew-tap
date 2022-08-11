# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Editorconfiger < Formula
  desc "Plain tool to validate and compare .editorconfig files"
  homepage "https://github.com/aegoroff/editorconfiger"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/editorconfiger/releases/download/v0.2.7/editorconfiger-v0.2.7-x86_64-apple-darwin.tar.gz"
      sha256 "3b4174b0c8c5efc3a935ae6a250c83bd1788c513103d471421277919702fa9ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/editorconfiger/releases/download/v0.2.7/editorconfiger-v0.2.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b315f3384dce1efdf422526123dfa0a059e5461fde496d7ff56160b5da72d69a"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
