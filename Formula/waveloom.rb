# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-beta.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.2/waveloom_darwin_arm64.tar.gz"
      sha256 "23236a5c2677581286e3ffa2edceb28c98512e328ec9ed8bfc9ef5dcffff4558"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.2/waveloom_darwin_amd64.tar.gz"
      sha256 "65928f527a123786a11afbbc188ae6e68ec24414b36198f386e738ece331d75a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.2/waveloom_linux_arm64.tar.gz"
      sha256 "447504ada911207c7f3d486adeb2f3ee3ad92375a7e27b849f5f68fddee889d4"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-beta.2/waveloom_linux_amd64.tar.gz"
      sha256 "c0bec94956a00d140c2eb205ccf9b441017020d9f872e39fd833e2b5684e1f3e"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
