# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Solv < Formula
  desc "SOLution Validation tool that analyzes Microsoft Visual Studio solutions"
  homepage "https://github.com/aegoroff/solv"
  version "0.16.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solv/releases/download/0.16.4/solv-0.16.4-x86_64-apple-darwin.tar.gz"
      sha256 "f39f8cedc90a53ba945c5d939dead9bf1d90d283c90342cdfcf31569451eba8b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/aegoroff/solv/releases/download/0.16.4/solv-0.16.4-aarch64-apple-darwin.tar.gz"
      sha256 "ae5f688ffd54619dfb136f1d0e2ae42d5a994c654b1f1d00a3596c58a3acd9c7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solv/releases/download/0.16.4/solv-0.16.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c7fed284487d61ae1e8aed414e3c99dd132614d0f8affc67e5881f8a6ccb3b55"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
