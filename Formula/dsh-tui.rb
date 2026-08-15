# typed: false
# frozen_string_literal: true

class DshTui < Formula
  desc "Terminal client for deepseek-harness (pure client, connects to a dsh host)"
  homepage "https://github.com/Menfre01/dsh-tui"
  version "0.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/dsh-tui/releases/download/v0.0.1/dsh-tui_darwin_arm64.tar.gz"
      sha256 "13fc2001d9acb3978a2f49a7337d959803a0964dbdddec5ae76178a0ac2154b8"
    else
      url "https://github.com/Menfre01/dsh-tui/releases/download/v0.0.1/dsh-tui_darwin_amd64.tar.gz"
      sha256 "c987dfed24d5982e1cbd43bbd23ac0f5e7cdffdde2bac74dd4bc96183d659563"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Menfre01/dsh-tui/releases/download/v0.0.1/dsh-tui_linux_arm64.tar.gz"
      sha256 "1a85c1cf5d673150dbad338ade0b4e02625a10729cff66472971c174b5834aca"
    else
      url "https://github.com/Menfre01/dsh-tui/releases/download/v0.0.1/dsh-tui_linux_amd64.tar.gz"
      sha256 "c961d5efd9c4ffd054d33a8d276122443780658b65c5b1265117b4ab798f6fbd"
    end
  end

  def install
    bin.install "dsh-tui"
  end

  test do
    assert_match "dsh-tui v#{version}", shell_output("#{bin}/dsh-tui --version")
  end
end
