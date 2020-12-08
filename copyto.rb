# This file was generated by GoReleaser. DO NOT EDIT.
class Copyto < Formula
  desc "A small command line app written in Go that allows you to easily one way sync between folders"
  homepage "https://github.com/aegoroff/copyto"
  version "1.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aegoroff/copyto/releases/download/v1.1.1/copyto_1.1.1_darwin_amd64.tar.gz"
    sha256 "dd89c5916b88559eb951b043e286828cb355dc5138e07cd43c750609b3bd5065"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/aegoroff/copyto/releases/download/v1.1.1/copyto_1.1.1_linux_amd64.tar.gz"
      sha256 "732dc404e4a73ee91120292b9301ca0931d3428e69979e636f20267dd7e83770"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aegoroff/copyto/releases/download/v1.1.1/copyto_1.1.1_linux_arm64.tar.gz"
        sha256 "7e392aa108dd4465151ae4103690c47ed701d26de74b38d22dedf0ff879e345e"
      else
        url "https://github.com/aegoroff/copyto/releases/download/v1.1.1/copyto_1.1.1_linux_armv7.tar.gz"
        sha256 "ec1fd2d19fa7ce5e26cc8b1560e006d6c2d2f1c7606ab713f0d6f1efce33dfa7"
      end
    end
  end

  def install
    bin.install "copyto"
  end
end
