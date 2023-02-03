# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Solt < Formula
  desc "Small console app written in Go that allows you to easily analyze sources and Microsoft Visual Studio solutions and projects"
  homepage "https://github.com/aegoroff/solt"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aegoroff/solt/releases/download/v1.2.1/solt_1.2.1_darwin_arm64.tar.gz"
      sha256 "5b19b768b0a0a7c70f403dd2c8cadb18d0418542093ca9e746451d02e6c8ec56"

      def install
        bin.install "solt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solt/releases/download/v1.2.1/solt_1.2.1_darwin_amd64.tar.gz"
      sha256 "d84d425fa939496a4d598336570a475d8aa04512f8752d4b783745be4d0ec2ff"

      def install
        bin.install "solt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/aegoroff/solt/releases/download/v1.2.1/solt_1.2.1_linux_armv7.tar.gz"
      sha256 "56071420dd35a05457589a7d6728a8d0db721d573d6e3406b117370ff3211d6a"

      def install
        bin.install "solt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/solt/releases/download/v1.2.1/solt_1.2.1_linux_amd64.tar.gz"
      sha256 "1af6051c1a9107959e23f5ec74b6f37f09030298eac7e9ad4a62326e6fb36621"

      def install
        bin.install "solt"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/solt ver")
  end
end
