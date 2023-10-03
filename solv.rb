# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Solv < Formula
  desc "SOLution Validation tool that analyzes Microsoft Visual Studio solutions"
  homepage "https://github.com/aegoroff/solv"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solv/releases/download/0.14.0/solv-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "5039518bf8645b0ccddc47b42f2b4223fa494f2ea9c7aba97815098103688df6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solv/releases/download/0.14.0/solv-0.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5487cf60c87ff421d5f536e4c77b76fa121cffe709fce9fe55e00604836753bf"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
