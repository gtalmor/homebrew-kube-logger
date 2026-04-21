class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.3/kube-logger-agent-darwin-arm64"
      sha256 "9cca36eb3f252f70d2241252a61849c282ecd550aaffb5eb1de9641b4e9a4c1a"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.3/kube-logger-agent-darwin-x64"
      sha256 "0ef6dcca6fda79cfa537c1398de827468efe22be3f7e24bac82d347c9435aba4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.3/kube-logger-agent-linux-arm64"
      sha256 "491a600cc035ee250765cabea956e1b87f9c13492b824ebfcaa5bf6fb4458852"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.3/kube-logger-agent-linux-x64"
      sha256 "50a73120dc80c86112eff9ce0edbbdc5d6a824e63be9b3da0667e68552d3b693"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
