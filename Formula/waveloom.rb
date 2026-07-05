# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.1.0-alpha.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.14/waveloom_darwin_arm64.tar.gz"
      sha256 "523be5a0b77383fc9bae8af9dc270e0276810748e8e470e305b6ab20f9b177f4"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.14/waveloom_darwin_amd64.tar.gz"
      sha256 "0a3e11f6dc97e8d824e90e052ffda12dde14270e266f24f4e29fe27444a8cedf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.14/waveloom_linux_arm64.tar.gz"
      sha256 "090c81f0c5d170b2df1a8e1317d2e37caeb6b8473404043f9629744531df6173"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.1.0-alpha.14/waveloom_linux_amd64.tar.gz"
      sha256 "512bd54feffff506e01e5d535b668295af0ad4c137a30f75b192d46f6f09c2c2"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
