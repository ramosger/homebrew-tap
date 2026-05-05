class LightitAi < Formula
  desc "Light-it AI Stack TUI installer — bootstrap your AI coding environment"
  homepage "https://github.com/ramosger/lightit-ai"
  url "https://github.com/ramosger/lightit-ai/releases/download/v0.1.0/lightit-ai"
  version "0.1.0"
  sha256 "12979e6b910d4032674c4816ea04baea04112f72f6aa07540446eb504163f346"
  license "MIT"

  depends_on "php"

  def install
    bin.install "lightit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightit-ai --version 2>&1")
  end
end
