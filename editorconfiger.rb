# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Editorconfiger < Formula
  desc "Plain tool to validate and compare .editorconfig files"
  homepage ""
  version "0.4.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/editorconfiger/releases/download/0.4.12/editorconfiger-0.4.12-x86_64-apple-darwin.tar.gz"
      sha256 "d59e4dc0808662092046a3322bc1837c03b191725665efe8fd751448326efd2e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/aegoroff/editorconfiger/releases/download/0.4.12/editorconfiger-0.4.12-aarch64-apple-darwin.tar.gz"
      sha256 "4890c8140cf8de32c3e7aea4750b225af6dc9bfe8b9cc77d469471cc147e9110"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/editorconfiger/releases/download/0.4.12/editorconfiger-0.4.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4924bd00739d2bacc086c230472cb39587ae90893190a47edaa4374d79be800e"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
