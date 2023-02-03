# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dirstat < Formula
  desc "Small tool that shows selected folder or drive (on Windows) usage statistic"
  homepage "https://github.com/aegoroff/dirstat"
  version "1.2.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.3/dirstat_1.2.3_darwin_amd64.tar.gz"
      sha256 "8b98033d8b840b362b1a9162da659e2bde17b9d6fe7f385217b5565119d3db8e"

      def install
        bin.install "dirstat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.3/dirstat_1.2.3_darwin_arm64.tar.gz"
      sha256 "af25c8b12bdfe22f7217b057a3b62b2a2cda1c8e94fddf355b8569765c39cb27"

      def install
        bin.install "dirstat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.3/dirstat_1.2.3_linux_amd64.tar.gz"
      sha256 "66dde67d2f28142770d62e0de46fe4753289a09aab4c0301f0015ed3282af26e"

      def install
        bin.install "dirstat"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.3/dirstat_1.2.3_linux_armv7.tar.gz"
      sha256 "574785bc53ba3cd57566b967c71883b4b7d8314f233ad745c1561e94d22ac7b3"

      def install
        bin.install "dirstat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.3/dirstat_1.2.3_linux_arm64.tar.gz"
      sha256 "1c419ae11b0da7a4c513334fc9d77e64865482de3207de21373eea311d92c1bd"

      def install
        bin.install "dirstat"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dirstat ver")
  end
end
