# typed: false
# frozen_string_literal: true

class Waveloom < Formula
  desc "Terminal-based coding agent optimized for DeepSeek prefix caching"
  homepage "https://github.com/Menfre01/waveloom"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.2/waveloom_darwin_arm64.tar.gz"
      sha256 "e379ddbe7eceb1cca816dd273f7814384936d00317ca2e1deb6994639873a51d"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.2/waveloom_darwin_amd64.tar.gz"
      sha256 "9ee6b2843f738834909e4704735f564c9b6df4adfe8387ded4085c21ed44dce3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.2/waveloom_linux_arm64.tar.gz"
      sha256 "1983013bbd0a4dea646a14c630366e948c76d1111234a389164ea13645d5ba91"
    else
      url "https://github.com/Menfre01/waveloom/releases/download/v0.8.2/waveloom_linux_amd64.tar.gz"
      sha256 "edf4204a5812ad1f4fd8df8e4b09a25bdc3f134380be8f2ffa3cf2cabb48d716"
    end
  end

  def install
    bin.install "waveloom"
  end

  test do
    assert_match "waveloom version #{version}", shell_output("#{bin}/waveloom --version")
  end
end
