# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Solt < Formula
  desc "Small console app written in Go that allows you to easily analyze sources and Microsoft Visual Studio solutions and projects"
  homepage "https://github.com/aegoroff/solt"
  version "1.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aegoroff/solt/releases/download/v1.0.9/solt_1.0.9_darwin_arm64.tar.gz"
      sha256 "14749e8122b0955e6fc25d8bd24c307355327db13f0ffb20a71485660c0ca3ad"

      def install
        bin.install "solt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solt/releases/download/v1.0.9/solt_1.0.9_darwin_amd64.tar.gz"
      sha256 "619957cbe2549fecff4981a97bf557029f173ff1fed1d659fa60c33d309d9fd5"

      def install
        bin.install "solt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solt/releases/download/v1.0.9/solt_1.0.9_linux_amd64.tar.gz"
      sha256 "1a2ce848117e8a5cb4f097a3e868a1ebede4b6dd7800ae38c4d0aeb50a6f6d3f"

      def install
        bin.install "solt"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/aegoroff/solt/releases/download/v1.0.9/solt_1.0.9_linux_armv7.tar.gz"
      sha256 "8e5256abcc4b9a712dc03e010133721c00ddf56a98a8005edc6b2c0638c37762"

      def install
        bin.install "solt"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/solt ver")
  end
end
