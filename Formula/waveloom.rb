# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.3/waveloom_darwin_arm64.tar.gz"
      sha256 "4ad93d027ea36e0f87c033bf54ba03d4890d8672fda6e1a337cb163db5751e01"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.3/waveloom_darwin_amd64.tar.gz"
      sha256 "d8c6643426a6ea68bc15b93daaee36cf3abd346434136555179e5059aeac9611"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.3/waveloom_linux_arm64.tar.gz"
      sha256 "6f4adab027c9e2c86b66f1c41552ccfb23df7e5791dd3e071dfb7729339ac66b"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.3/waveloom_linux_amd64.tar.gz"
      sha256 "2628eca1d49cb354f20fc5bc798ffd049a234f51e462ef27f18409d44f888c1d"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
