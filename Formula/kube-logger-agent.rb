class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.2/kube-logger-agent-darwin-arm64"
      sha256 "ce224a1e41533e5d5ff71b62ca6d3972f1a8afceca51495dcd805d45ec686b6a"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.2/kube-logger-agent-darwin-x64"
      sha256 "edd2049f86825c6a8b74623e4afccadcf4079d11c6ba65f53adccde2c881cdf9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.2/kube-logger-agent-linux-arm64"
      sha256 "93ebff48886d7ef5d4b34f158793e4855dfc6c0e0cf39f30cda55faf832751ea"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.2/kube-logger-agent-linux-x64"
      sha256 "c7b6ca0de30ac903a5567a57bdc19c586fa31a727e2a93f68f9c04b52a3fab59"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
