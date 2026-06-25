class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.8/kube-logger-agent-darwin-arm64"
      sha256 "313b0848a2e5f62af46fdcb425bb489dd82773cb70916327ae761154713c2b24"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.8/kube-logger-agent-darwin-x64"
      sha256 "eb3dff3de0ee1485ba386b705db806c98c27501d38f70c9fa8aa8e9fb9466826"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.8/kube-logger-agent-linux-arm64"
      sha256 "cdc2d89a6a0c47b0efdd5e7b64d98c7b3469f1399666dde916fdf9d92b161a62"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.2.8/kube-logger-agent-linux-x64"
      sha256 "ca9da77bfb86db01bf0d0b15710fe625e3feae2b4c7d7fafa02067071d198d90"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
