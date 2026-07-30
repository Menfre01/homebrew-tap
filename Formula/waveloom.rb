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
      sha256 "26a5438c38f62148c57f02e158b286281f9289e56a70c500a7d452d175245bd5"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_darwin_amd64.tar.gz"
      sha256 "3dffd48519671b92c6c1225ad96f1212ce5b2dd2a3cf277ce0ec898410dff919"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_arm64.tar.gz"
      sha256 "4dfc35db838a32ec14580f48669609da22e6cdf931a0bdda25b8d152e7628716"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.4.4/waveloom_linux_amd64.tar.gz"
      sha256 "ec45b4ba557df8e4aa05bdcc38fa671250d078282a58b41d56d8ea22a21ee28d"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
