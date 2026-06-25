class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.9/kube-logger-agent-darwin-arm64"
      sha256 "2f781eeaf40e3cff91323aea5d83e11b62febde07942233cccb3c6084b43869a"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.9/kube-logger-agent-darwin-x64"
      sha256 "3a4f63a2b329e5931fd3335a9f1ca701f145bdfc7e01fc6d155c6a5236f9a741"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.9/kube-logger-agent-linux-arm64"
      sha256 "13f24a899a386b86de214b493ff9fc87196a1fc1d23c46dfed61306a10261bba"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.9/kube-logger-agent-linux-x64"
      sha256 "827acf200a8f8a84c91a198c98fec0253c523aea8393998af762b4a9ac1bb364"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
