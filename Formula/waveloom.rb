# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.2/waveloom_darwin_arm64.tar.gz"
      sha256 "8c984d2f699f828befc4cefa467e16986643cc3d7ab1c0330e512f8f50ef039d"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.2/waveloom_darwin_amd64.tar.gz"
      sha256 "38f9ed7d88d1f5d4cf1c782404ba800d3facea90b64cec3488967d0c8eadd32a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.2/waveloom_linux_arm64.tar.gz"
      sha256 "9cb4114e579c08364b30026c6e8704f8ac0845a039461be56f12fa1332aeaeaf"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.2/waveloom_linux_amd64.tar.gz"
      sha256 "10218bdb572da56d76072dcced06618480c3746456177927f3aa38b82818f951"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
