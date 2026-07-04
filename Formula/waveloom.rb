# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_darwin_arm64.tar.gz"
      sha256 "c01c1f66a91063981e2a8a9b2e9c6cc057106a153555a3b9ae25b37b64207685"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_darwin_amd64.tar.gz"
      sha256 "3b64dcf51971f1ef51abaf7adfec04bbad1d465171cddccd7ba76da93748b97b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_arm64.tar.gz"
      sha256 "9930582e05ad84f11b88c37bc0939f774ace6513ba7ee095970baa8a0286f9ce"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_amd64.tar.gz"
      sha256 "67de381bac0e9fca6b77e4e35333db7815034079bacecca0e3fdcd3a2f90d9ef"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
