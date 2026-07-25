# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.2/waveloom_darwin_arm64.tar.gz"
      sha256 "989d305f26dfa1a1121a87ca0480691152aa2d86d6e7c5d114b42401d1eca89e"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.2/waveloom_darwin_amd64.tar.gz"
      sha256 "710a82b5163278b59cb6bf69f8388e2a3abee4d565bc62fd56876943ece0bcf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.2/waveloom_linux_arm64.tar.gz"
      sha256 "f960b77ae185385fede10b8bf8d228ae00593aa69a5c7e19c43c81492c49ce75"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.3.2/waveloom_linux_amd64.tar.gz"
      sha256 "36bb3f6bdd5a2aaa7230e9bad64e11f59d9a3ef45ece7a1a8d8476476c3b6232"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
