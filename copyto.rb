# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Copyto < Formula
  desc "Small console app written in Go that allows you to easily one way sync between folders"
  homepage "https://github.com/aegoroff/copyto"
  version "1.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/copyto/releases/download/v1.2.10/copyto_1.2.10_darwin_amd64.tar.gz"
      sha256 "031f1c254b3046906e2ea7f5fed3773c18a060baca65070a0a5ce98babbd88ad"

      def install
        bin.install "copyto"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aegoroff/copyto/releases/download/v1.2.10/copyto_1.2.10_darwin_arm64.tar.gz"
      sha256 "bb3e22b8ccb9ded29f26a14bcead0ce2f1da4b97a4775c9d99ac26ec7000e0e2"

      def install
        bin.install "copyto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/aegoroff/copyto/releases/download/v1.2.10/copyto_1.2.10_linux_armv7.tar.gz"
      sha256 "cb2271b040bb4f3c0fcde48d92167eaa129154700e35210c49f6f506e1dd0043"

      def install
        bin.install "copyto"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aegoroff/copyto/releases/download/v1.2.10/copyto_1.2.10_linux_arm64.tar.gz"
      sha256 "5f2540981de0d490bd898f558a4f79ba908acff1209f5a8f5152b6bbfc501439"

      def install
        bin.install "copyto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/copyto/releases/download/v1.2.10/copyto_1.2.10_linux_amd64.tar.gz"
      sha256 "3ba48b213134a2cc06920fb4f272bab3f97f6a8377584d8af521344c1c19e7ac"

      def install
        bin.install "copyto"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/copyto ver")
  end
end
