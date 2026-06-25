class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.10/kube-logger-agent-darwin-arm64"
      sha256 "c0f6a8b0e5cac5b2d4fef476202ceab4ebace56c8554d96b1cf9dedc93531f48"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.10/kube-logger-agent-darwin-x64"
      sha256 "11c7940daad134e8acefd59c5839fe4be046e38a3eecbe73714aca49dbe1fac2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.10/kube-logger-agent-linux-arm64"
      sha256 "6afa46588a788f8c61ca2a0dcecc3ed8275801ce88508ada2f23b4ce8fadf0e5"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.10/kube-logger-agent-linux-x64"
      sha256 "66adea71d3ebc266a0ab53d9359b1d11f0e656a33f59ff921b6232c4056cdc53"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
