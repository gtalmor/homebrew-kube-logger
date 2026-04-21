class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.1/kube-logger-agent-darwin-arm64"
      sha256 "bed6dcd19322789ab7db9e8fd1ab174b03e9a6678ef390b858cacf63d3615343"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.1/kube-logger-agent-darwin-x64"
      sha256 "7740727dfe4b52947d865bddda91ec9da0c51fd7c240f6017352335c5e0cac4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.1/kube-logger-agent-linux-arm64"
      sha256 "0061fd12d2aab571c820bd68f1ff98d73ae7644c72f68c17679d678c4b967dfb"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.1/kube-logger-agent-linux-x64"
      sha256 "0efa1208589160fdc9fc0b5652d7f1fef6094d6f0b67083e3ab2db80f741e315"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
