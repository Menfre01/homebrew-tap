# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.1/waveloom_darwin_arm64.tar.gz"
      sha256 "5b16cf60ad3fb150ce52f7f944eea3d11f9be7ae045f538562a6fa333703e2f0"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.1/waveloom_darwin_amd64.tar.gz"
      sha256 "13510b181468d0b5896abc19e2612c2820247ec93c74ac0ef3b05bd5f35a7e38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.1/waveloom_linux_arm64.tar.gz"
      sha256 "69f5f11b0643be14f0e1f0d2339c64eb2160b0ebea87a3427d0e7cb77752966e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.1/waveloom_linux_amd64.tar.gz"
      sha256 "41e8e01c104ea8aad9cf2439dd7140330247c8d41d0b15b7d87245e62d15fff0"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
