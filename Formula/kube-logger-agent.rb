class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.5/kube-logger-agent-darwin-arm64"
      sha256 "640afb3e1df257e2793e9d8aee756ae5dabab9ceac5cd113a3f402bf0da4f60b"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.5/kube-logger-agent-darwin-x64"
      sha256 "399d2573f4290b3263b7152eadce2f2a4d62ce9a8aeab601cdd981b3688b2d8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.5/kube-logger-agent-linux-arm64"
      sha256 "ace5d9e46691aa13e2fc0459086662949fbcb9ffec432b98518eae6b002901a9"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.5/kube-logger-agent-linux-x64"
      sha256 "153745e8e01a98c9b6203a420c53efb89b0ca2fb8f0ec575b964c05595de30ca"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
