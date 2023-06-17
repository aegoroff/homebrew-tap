# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Solv < Formula
  desc "SOLution Validation tool that analyzes Microsoft Visual Studio solutions"
  homepage "https://github.com/aegoroff/solv"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solv/releases/download/0.7.2/solv-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "ade62406bcf0e46763d8e24c8243b979c2415d85e56bf736980c3b5742715ff0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solv/releases/download/0.7.2/solv-0.7.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af039702a20cb01456c238282679fa954f39bcc812052621dece7c60497cff72"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
