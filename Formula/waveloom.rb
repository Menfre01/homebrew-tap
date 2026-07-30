# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_darwin_arm64.tar.gz"
      sha256 "ab3e44573277416abbf21916fd8e939404f9bd5f20899ca00f5a6eb011ffab31"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_darwin_amd64.tar.gz"
      sha256 "bf545369c824d400daa7cdcc3f74cd602ab16bdd43c128322a961b4e4a1fe42f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_arm64.tar.gz"
      sha256 "08dbfe7490956efc8c39435aa28fe2a6d729ec86244ba2aa98c9d50fda4d4f8a"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_amd64.tar.gz"
      sha256 "0a7f00a78ca551b88826e35d84873ce8a28b9bf52117dffe27bd483619ab3f2f"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
