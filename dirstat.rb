# This file was generated by GoReleaser. DO NOT EDIT.
class Dirstat < Formula
  desc "A small tool that shows selected folder or drive (on Windows) usage statistic"
  homepage "https://github.com/aegoroff/dirstat"
  version "0.10.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aegoroff/dirstat/releases/download/v0.10.1/dirstat_0.10.1_darwin_amd64.tar.gz"
    sha256 "790c26c4932a6e90e5522131f1fd29355edc30e25f1efc3baa6a7e69b999efd0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/dirstat/releases/download/v0.10.1/dirstat_0.10.1_linux_amd64.tar.gz"
      sha256 "1e1ae5f55b5f317f573decf861f276bacc9bff592a317915c4c93b93d3ef029f"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aegoroff/dirstat/releases/download/v0.10.1/dirstat_0.10.1_linux_arm64.tar.gz"
        sha256 "ecd3cc5b78f99434d98206de008d689c5c897696b18d56c89aed603f55e056a0"
      else
        url "https://github.com/aegoroff/dirstat/releases/download/v0.10.1/dirstat_0.10.1_linux_armv7.tar.gz"
        sha256 "d519c3a950a50931e40c0b8d90913dc1824fdc35fa715289ea366f1263da72a9"
      end
    end
  end

  def install
    bin.install "dirstat"
  end
end
