# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.9/waveloom_darwin_arm64.tar.gz"
      sha256 "0e556ae9704a26c3695476cdf28987d4a35710e3ac58cdcd90c8c13a5b133536"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.9/waveloom_darwin_amd64.tar.gz"
      sha256 "03289dfc31a02324dd4f32e93a8e334415a4ddb408818d473bd88c3a08ae2d49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.9/waveloom_linux_arm64.tar.gz"
      sha256 "cfaa6eeb7a4ffa6cbfc00f0b05f1247164a3ac291399ea4522b34a9c1f133459"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.9/waveloom_linux_amd64.tar.gz"
      sha256 "f4f16f3098c81e63f0475f6d2e225503a1190a4ab60423903130709b10deecd6"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
