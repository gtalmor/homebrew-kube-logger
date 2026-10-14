class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.4/kube-logger-agent-darwin-arm64"
      sha256 "e1d27e64cab98443afb78241c8842b4c81e2fbbb1b9d40798f40c92f047cee47"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.4/kube-logger-agent-darwin-x64"
      sha256 "f3c7d4131a29d40cad5a35b07da105919933600c467191f77a3dbccc545f6f1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.4/kube-logger-agent-linux-arm64"
      sha256 "cba0011186be152149323e15883ee5c20b9c9e6b484bfe766bd0f6a4e1cc3f88"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.4/kube-logger-agent-linux-x64"
      sha256 "8415d4698521eeb771a7864ed8c317d4a6609b43cbbf9ffdaf4921ef1f33ccdd"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
