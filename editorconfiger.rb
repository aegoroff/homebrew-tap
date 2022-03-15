# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Editorconfiger < Formula
  desc "Plain tool to validate and compare .editorconfig files"
  homepage "https://github.com/aegoroff/editorconfiger"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/editorconfiger/releases/download/v0.2.5/editorconfiger-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "66fe37d2a208cadd0c607dd3dc8e2d8f1810a329c245fe55e30450af5589016c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/editorconfiger/releases/download/v0.2.5/editorconfiger-v0.2.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "822f566c66d9f1121fd724aeb725af9bfbaa82bbb5d0141084f6ee73b281f694"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
