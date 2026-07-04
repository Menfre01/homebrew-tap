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
      sha256 "d6dca6e770b8b9d8313a2ffd5ff7e5f0dcc2835e1f7b5b3fe66acbb1dd382376"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_darwin_amd64.tar.gz"
      sha256 "006a05ab868a8ad59903d2d498405712814aa80a92d357c43030a921bfae6a62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_arm64.tar.gz"
      sha256 "6249fc98184fe2573c098c9a63f9d94887657ec6c0771c21fe2b19113ae99b07"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.12/waveloom_linux_amd64.tar.gz"
      sha256 "c4a8257053ef7aee77c8ddee7a41467569462e080787a4bf8cfd275fb7cd2e38"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
