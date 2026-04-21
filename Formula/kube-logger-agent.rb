class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.9/kube-logger-agent-darwin-arm64"
      sha256 "a3232720b5b85552393e6a08931699addcbac16beb639846d8a4d02d87f583c7"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.9/kube-logger-agent-darwin-x64"
      sha256 "6e38dabc30a82040c527b638db483cd210ca94ebf5ba1dd170652b9f40d85a85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.9/kube-logger-agent-linux-arm64"
      sha256 "e60ab2e79281208155333d5a760ee05da84aefb43d6739caf4273729982fde37"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.9/kube-logger-agent-linux-x64"
      sha256 "ba1b132e33a8109f533dc7214bfc0a620f0040cb38e49934df13992b56810819"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
