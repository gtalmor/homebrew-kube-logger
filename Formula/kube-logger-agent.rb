class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.3/kube-logger-agent-darwin-arm64"
      sha256 "1891b5b6a6aed1f3c82ad086cb05d0dbf22db929ff1bec6e531392122cf03c42"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.3/kube-logger-agent-darwin-x64"
      sha256 "64aee5239974d3ad8a2af2227ed887f8ee7b1e5b23fbac7a4325469ebade0964"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.3/kube-logger-agent-linux-arm64"
      sha256 "321b344e4fedc5eb5e929be10138636df04a609d0470297e1e3b0faf736e79e4"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.3/kube-logger-agent-linux-x64"
      sha256 "49b23df3640da5bc654e37b75c5fd390512a6f51e87111521e760c41711e9c4f"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
