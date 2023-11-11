# typed: false
# frozen_string_literal: true
# This file was generated by releaser. DO NOT EDIT.
class Grok < Formula
  desc "Regular expressions macro engine. GROK is a tool like UNIX grep on steroids"
  homepage "https://github.com/aegoroff/grok"
  version "0.2.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/grok/releases/download/0.2.14/grok-0.2.14-x86_64-apple-darwin.tar.gz"
      sha256 "f20cb9fb0e5fb9beee296250423955aa4f79a5844bbc5899e4e1c0ca9bec3ea6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/grok/releases/download/0.2.14/grok-0.2.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "642450a4d56e4befdc1099deabb596cf0a5be0f1cdfd8452ecd9b64bf8faeac0"
    end
  end

  def install
    bin.install Dir["*"]
  end

end
