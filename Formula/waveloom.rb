# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.13/waveloom_darwin_arm64.tar.gz"
      sha256 "342e5d11d7c98866e0bf6a0ea6b2702e3fe485dace9cfeaa8fdc15d258058cde"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.13/waveloom_darwin_amd64.tar.gz"
      sha256 "4225433227c1e3939afd2182099b4198391c43d3199e2f9e1e724df02e494b1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.13/waveloom_linux_arm64.tar.gz"
      sha256 "5e4b3793bb12f124fa0cdaf266e81ad518c786d74542e240fada79145c65875e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.13/waveloom_linux_amd64.tar.gz"
      sha256 "fcfdb577e2474478ac85b9ba47622a34509debca64ade59c4960bceb550f8c50"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
