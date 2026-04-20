class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.5/kube-logger-agent-darwin-arm64"
      sha256 "4ac89e40f1e626919979a501abeba76403c7013a90ab8291eee0c2d1698fd0b2"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.5/kube-logger-agent-darwin-x64"
      sha256 "e36a1f8eade2fa975ca683b55008cf2c2bae4c45edb339b4abc7a14a8ca3410e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.5/kube-logger-agent-linux-arm64"
      sha256 "8e79ccf6d5ab7ea73b6ff88db0b728bc69a0c8654e6ca41ee08c778f51c02a71"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.5/kube-logger-agent-linux-x64"
      sha256 "dde8ba4265ff0d66c8e53b1d01d514cd4af355f135f33b0b03e523e7d475abaf"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
