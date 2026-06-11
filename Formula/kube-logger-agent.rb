class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.7/kube-logger-agent-darwin-arm64"
      sha256 "ba089a86d2cc2b145aa6b6f7c5df23a94215dcac7d80a050fd2c89cedd7f13e9"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.7/kube-logger-agent-darwin-x64"
      sha256 "a764ccb45b1698cb4a7e2c529f1ca40f16460269fa342cc0d66ca650958d463b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.7/kube-logger-agent-linux-arm64"
      sha256 "e28c137beef0130e96d3f0adbeded3624ca1f8d4cbe122bb488caf079d71a89d"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.7/kube-logger-agent-linux-x64"
      sha256 "3d134d2117b5aa703d81e96b9d50f0eed4b4db0272a255a77eff9474b9f9bb9d"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
