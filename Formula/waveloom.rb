# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.7.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.4/waveloom_darwin_arm64.tar.gz"
      sha256 "5d806be509fea3d46b4f32fb36111d056f7360109fb938680abc801a03b24b65"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.4/waveloom_darwin_amd64.tar.gz"
      sha256 "b5937f820cdf595adcba2dd9e67bd66e7b690b724259b2bb1149d143a504ea59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.4/waveloom_linux_arm64.tar.gz"
      sha256 "012d9885633f89d23803d632a6706d28f2539093f407434db873e15744583e5b"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.7.4/waveloom_linux_amd64.tar.gz"
      sha256 "ca5f70c5ed002fc72094cf9c810530b215f08cc49ae5aac6d07261d2c106128a"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
