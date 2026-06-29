# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.5/waveloom_darwin_arm64.tar.gz"
      sha256 "1723ac3344517c6df19611a9bd78e28ed042ba1e2d9cc68efed4c5b7db2a6358"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.5/waveloom_darwin_amd64.tar.gz"
      sha256 "819da50100fb1f8965bca4e4ec8780480f12f7e3d46b365dccdd7ef4fe9f79b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.5/waveloom_linux_arm64.tar.gz"
      sha256 "877971013ff7ff5208d8e3dcac51d282c13c6d4eab6f69474696764e3748c728"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.5/waveloom_linux_amd64.tar.gz"
      sha256 "9604e034f7b8a421f1238faea9d753952516d2eed959c3b0fdd6e30be51fea82"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
