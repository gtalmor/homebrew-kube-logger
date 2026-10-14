class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.3/kube-logger-agent-darwin-arm64"
      sha256 "bda22c7e07a4b6e33b8fd1cbd6506736cdfe9de62a92157373ee799e323fe3ab"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.3/kube-logger-agent-darwin-x64"
      sha256 "717f5d99fb83d25d4abd99abc255fe725f2bc089978dc991b9923b4d0a74d412"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.3/kube-logger-agent-linux-arm64"
      sha256 "8e04cfeefd4efd9019a2de607aa888192512955440b97dd21742a36ff07b18da"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.3/kube-logger-agent-linux-x64"
      sha256 "adebce78224d023fc04e607357e146e2321f4671f12e6157e3f2a998bcbd12c1"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
