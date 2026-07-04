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
      sha256 "2780a00dc8f70b3cad6506cbf3d5bfab642a30685ad409af9b24b5216ce86cf7"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_darwin_amd64.tar.gz"
      sha256 "2a1c760275cb939a111c3fdba09ba7cf7639c9312393fc6f20137d55b6f7d6c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_arm64.tar.gz"
      sha256 "9a8f5792d5bbd8e63cf982449996317ed5dc5829f5527608317d47d293985574"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_amd64.tar.gz"
      sha256 "731dff110819d76a2fb8ac56647a03dba2d5f1431fd05c5fb49c90f0842134c0"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
