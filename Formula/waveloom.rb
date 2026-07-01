# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.7/waveloom_darwin_arm64.tar.gz"
      sha256 "e2e74b2b6f5b8cc6f16ea6884c90fe94f753b10e29d83e1ae25cc640646d83e6"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.7/waveloom_darwin_amd64.tar.gz"
      sha256 "aef4e6b5a4646a889d2f203c235f3544bb31938c8200d7b24f2d12ff6e258601"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.7/waveloom_linux_arm64.tar.gz"
      sha256 "eb1fb4a752f1e61434a3fa83aaa87781bfbabec03c70d8df45997def46c92721"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.7/waveloom_linux_amd64.tar.gz"
      sha256 "d535370726b5419356548b96e5d35b2ef353ca40bfe8928315d155cdb75e5aa6"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
