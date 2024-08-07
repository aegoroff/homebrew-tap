# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Solv < Formula
  desc "SOLution Validation tool that analyzes Microsoft Visual Studio solutions"
  homepage "https://github.com/aegoroff/solv"
  version "0.16.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solv/releases/download/0.16.5/solv-0.16.5-x86_64-apple-darwin.tar.gz"
      sha256 "0c0f8a420cdb957b5a0d1ceb53dacb1d4ccf9754867cf29cee6ce70fdc1ae3f7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/aegoroff/solv/releases/download/0.16.5/solv-0.16.5-aarch64-apple-darwin.tar.gz"
      sha256 "c750367dd53e4fb73a3b65fd4dbf8a90f34f4b51c20d77a4b1951fdfa8520dca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solv/releases/download/0.16.5/solv-0.16.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39ac78e65652ed2512c9e2991a5750fd9029e039064b9d79bedcaa1408424f0f"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
