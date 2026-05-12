class LightitAi < Formula
  desc "Light-it AI Stack TUI installer — bootstrap your AI coding environment"
  homepage "https://github.com/Light-it-labs/ai-setup-tui-back"
  url "https://github.com/Light-it-labs/ai-setup-tui-back/releases/download/v1.0.0/lightit-ai"
  version "1.0.0"
  sha256 "3dccc9bcb1a6c71939fa0731dbccbbaecc192ba0033e8c0b881dd024cb175c18"
  license "MIT"

  depends_on "php"

  def install
    bin.install "lightit-ai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightit-ai --version 2>&1")
  end
end
