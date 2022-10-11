# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dirstat < Formula
  desc "Small tool that shows selected folder or drive (on Windows) usage statistic"
  homepage "https://github.com/aegoroff/dirstat"
  version "1.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.2/dirstat_1.2.2_darwin_arm64.tar.gz"
      sha256 "9dda62a54940776a01f120556046a97e9966e44969f1d5897dd72e42fd06a924"

      def install
        bin.install "dirstat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.2/dirstat_1.2.2_darwin_amd64.tar.gz"
      sha256 "31e7b9401973263682c32a6f1db3255e8b134dba2e9316ceaf3c9be329e0aefa"

      def install
        bin.install "dirstat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.2/dirstat_1.2.2_linux_armv7.tar.gz"
      sha256 "d5ba210e2c3d36d8bbdab57da3f07b9abc31b658a99c660d8fde13532abe7903"

      def install
        bin.install "dirstat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.2/dirstat_1.2.2_linux_arm64.tar.gz"
      sha256 "8014bb40eec1c3d76b1e6e06002f1d01eb0fe99711a03d1e8d2d920c12e0e4b9"

      def install
        bin.install "dirstat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/dirstat/releases/download/v1.2.2/dirstat_1.2.2_linux_amd64.tar.gz"
      sha256 "e23b537dca8831943ede0cfa946b70a1e77a19bd58491b2a367c064d4aa024d4"

      def install
        bin.install "dirstat"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dirstat ver")
  end
end
