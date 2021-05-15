# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scrt < Formula
  desc "A secret manager for the command-line"
  homepage "https://github.com/loderunner/scrt"
  version "0.0.0-alpha2"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/loderunner/scrt/releases/download/v0.0.0-alpha2/scrt_0.0.0-alpha2_darwin_x86_64.tar.gz"
    sha256 "15cc1fc538fafd838a32cd3a8dcb807571843a6049ac57cc611309b1f5716779"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/loderunner/scrt/releases/download/v0.0.0-alpha2/scrt_0.0.0-alpha2_darwin_arm64.tar.gz"
    sha256 "e868a566b8654330fd9e1f8936045ce2c47226c25887a4aa76fc6b06a42a8515"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/loderunner/scrt/releases/download/v0.0.0-alpha2/scrt_0.0.0-alpha2_linux_x86_64.tar.gz"
    sha256 "9e5b960b2ad988cdd880d7c0b8ecd4f3872d26773973439fb4e210e040018eb4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/loderunner/scrt/releases/download/v0.0.0-alpha2/scrt_0.0.0-alpha2_linux_armv6.tar.gz"
    sha256 "5ef1382d48307f4f722062ea5ca68e14e770e740e072f7ce109f30d3daf5ab2c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/loderunner/scrt/releases/download/v0.0.0-alpha2/scrt_0.0.0-alpha2_linux_arm64.tar.gz"
    sha256 "0cbb0f5ae8a5dd78fc46994399404b2a90fe0b8cdfa135257391d9170f69806d"
  end

  def install
    bin.install "scrt"
  end

  test do
    system "#{bin}/scrt --version"
  end
end