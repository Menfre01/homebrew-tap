# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.0/waveloom_darwin_arm64.tar.gz"
      sha256 "fc17979301fcc0dcb4cc4e3b6c0be83c837c475fd6c8f2a495e426a6615d5024"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.0/waveloom_darwin_amd64.tar.gz"
      sha256 "d81427ce7f7a43d37c07d612c0ba2e096b0623f340e56f525e84177721a32af6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.0/waveloom_linux_arm64.tar.gz"
      sha256 "741e055a2159f24721ce423849b64aa4e58f45613c723cd2de8f24a77d1632a6"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.0/waveloom_linux_amd64.tar.gz"
      sha256 "d6634fa33e9a4c41d8c5082189ac667cbec0d187b999a098c2a67b2c7b3e11a6"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
