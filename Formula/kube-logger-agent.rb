class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.4/kube-logger-agent-darwin-arm64"
      sha256 "ba31306ea340f251631d7f57b04c71842e9d98a77629c580d579ededc8f93dbb"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.4/kube-logger-agent-darwin-x64"
      sha256 "8d8166e46683e8b2c0c22dd65d0758bd7bb90f2eca196c6bf0be3e034a9fc189"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.4/kube-logger-agent-linux-arm64"
      sha256 "91e70adfb7aecdd9ca12b291c1c8c9e807c9f2f810f5ce4e790529ba8f5d0f4b"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.4/kube-logger-agent-linux-x64"
      sha256 "98c2df27365aa5bd5c0e1a0d70d547d81e0d61ad32933e6a5c4708b40e1ca05b"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
