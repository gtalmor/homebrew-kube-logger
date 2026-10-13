class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.1/kube-logger-agent-darwin-arm64"
      sha256 "7782a1e5e156539e5a735f981e4936de4b8af07984f189e860775a4b9d256365"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.1/kube-logger-agent-darwin-x64"
      sha256 "6ad6855a32617374af7a40725b33f25a3123748e32aa07a1c4d0b3790b1ddc47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.1/kube-logger-agent-linux-arm64"
      sha256 "e0b6a4e5f32883de5ec7b881aa3fd499b9d292e22f625e93d3fa1ee32dc96c28"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.3.1/kube-logger-agent-linux-x64"
      sha256 "baabbe844e666b316799630d41d7513087e0d4e4b6575c9c79932e8b52dd2162"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
