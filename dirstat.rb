# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dirstat < Formula
  desc "Small tool that shows selected folder or drive (on Windows) usage statistic"
  homepage "https://github.com/aegoroff/dirstat"
  version "1.3.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/aegoroff/dirstat/releases/download/v1.3.1/dirstat_1.3.1_darwin_amd64.tar.gz"
      sha256 "80d6272642de248a4668f087aead75062e637c3cda1e93900b55589e3ec561c4"

      def install
        bin.install "dirstat"
      end
    end
    on_arm do
      url "https://github.com/aegoroff/dirstat/releases/download/v1.3.1/dirstat_1.3.1_darwin_arm64.tar.gz"
      sha256 "be7258902f5e35789496d042a07d98884865a36cbd76247246fca05834b0d15e"

      def install
        bin.install "dirstat"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aegoroff/dirstat/releases/download/v1.3.1/dirstat_1.3.1_linux_amd64.tar.gz"
        sha256 "285c094aaf4caf27f25ef8fed763448480d6d72fc4bfd07296ec87da7547c02c"

        def install
          bin.install "dirstat"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/aegoroff/dirstat/releases/download/v1.3.1/dirstat_1.3.1_linux_armv7.tar.gz"
        sha256 "24ad6be14986395b9c6a9f5b44102c4977f4227914024c8ab3fc56cfe3562e74"

        def install
          bin.install "dirstat"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aegoroff/dirstat/releases/download/v1.3.1/dirstat_1.3.1_linux_arm64.tar.gz"
        sha256 "d89edf1ffa69024666dc802f90f6d54891c2f9fefe12bfbef6d4be636ec98ad9"

        def install
          bin.install "dirstat"
        end
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dirstat ver")
  end
end
