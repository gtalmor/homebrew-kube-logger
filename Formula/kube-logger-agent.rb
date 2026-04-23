class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.4/kube-logger-agent-darwin-arm64"
      sha256 "586ce08ecdeb0edc2970727c07c3379ec9c85743cc6c118217fd92dea21605f0"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.4/kube-logger-agent-darwin-x64"
      sha256 "62643185ea47838c52ad6d845b5424b9f32ae140e812540bc6ac8aa96bd2c637"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.4/kube-logger-agent-linux-arm64"
      sha256 "b8e4bf6e8c0b1467cca72142ad07b52c39ed9473627f3253af839a6310f464a2"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.4/kube-logger-agent-linux-x64"
      sha256 "72e645f20015b1025cf4cd76122e9514530bd18620c2458609cda325aa0a5158"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
