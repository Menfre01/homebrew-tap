# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.8/waveloom_darwin_arm64.tar.gz"
      sha256 "69ffd33e1285fdf00c7a7323d03bc65f806ba12897935caaa9c31b2cfff45930"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.8/waveloom_darwin_amd64.tar.gz"
      sha256 "5c0c6dde9c198c55ca0ca15bd5431c674de5392e79fb606f62c585a48a1d5bbb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.8/waveloom_linux_arm64.tar.gz"
      sha256 "7b6347fc5750f377c947aca10fcace792d26b4f9da402b048f277f7ec8af3a95"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.8/waveloom_linux_amd64.tar.gz"
      sha256 "3c1e21e0f9045a4ae4098c99235741c73c436b3135ecea2f3f925b3eb7126769"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
