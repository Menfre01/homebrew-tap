# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.5/waveloom_darwin_arm64.tar.gz"
      sha256 "832d153cd400f84bfe0af02dbfda7dd90cf6c9e3e96ea57b689a6ca13b3f5c8a"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.5/waveloom_darwin_amd64.tar.gz"
      sha256 "cf9a6a818e9b829563b4cbe05cb5cd1a805054316d6ac34708cfcee0629146aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.5/waveloom_linux_arm64.tar.gz"
      sha256 "b00af935d638e5a14d49ff84b279cb3c60419403fdb42a84db247a345507a5a6"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.5/waveloom_linux_amd64.tar.gz"
      sha256 "07ceded5188e3cad18e3c39d70820dc27fa72f2aa5995f0d55182a010c813e2f"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
