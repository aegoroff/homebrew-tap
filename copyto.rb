# This file was generated by GoReleaser. DO NOT EDIT.
class Copyto < Formula
  desc "Small console app written in Go that allows you to easily one way sync between folders"
  homepage "https://github.com/aegoroff/copyto"
  version "1.2.0"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/aegoroff/copyto/releases/download/v1.2.0/copyto_1.2.0_darwin_amd64.tar.gz"
    sha256 "e37cb8bcde93c969e3d71a7a17c95164fe182cd13061a87070d27e23e242075f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aegoroff/copyto/releases/download/v1.2.0/copyto_1.2.0_linux_amd64.tar.gz"
    sha256 "939cd560c32471a0262545f30d698a4a79c2d95a6891f3bb2e2fc468dc70563d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/aegoroff/copyto/releases/download/v1.2.0/copyto_1.2.0_linux_armv7.tar.gz"
    sha256 "8c16770026e72d549d2903b307aae985a80ea498e58ba5b51f03ffd285f574a6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/aegoroff/copyto/releases/download/v1.2.0/copyto_1.2.0_linux_arm64.tar.gz"
    sha256 "90692ca06393e0ffdd513e279577efa2d1a4cfef87d3eaa9a4741f18426ef6a2"
  end

  def install
    bin.install "copyto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/copyto ver")
  end
end
