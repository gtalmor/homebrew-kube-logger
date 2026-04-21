class KubeLoggerAgent < Formula
  desc "Streams Kubernetes logs over WebSocket to the hosted Kube Logger viewer"
  homepage "https://github.com/gtalmor/Kube-Logger"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.7/kube-logger-agent-darwin-arm64"
      sha256 "98811d91426148be649636be32226d214fa08645f6b0c9bf1c06dd392acf3956"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.7/kube-logger-agent-darwin-x64"
      sha256 "54d43cb3d9026ad4c89e5a16c11e1715a2f2c83974a1e46c430d2f376a68e138"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.7/kube-logger-agent-linux-arm64"
      sha256 "914790f8730a70025fc02ebeaf977f64fdc41f5325227da6098abda2bfdf20d8"
    else
      url "https://github.com/gtalmor/Kube-Logger/releases/download/v0.1.7/kube-logger-agent-linux-x64"
      sha256 "b2729c2de309cf140ff14b5dd33bc86d7d06be826f917b8a051afe0c5e1f4905"
    end
  end

  def install
    bin.install File.basename(stable.url) => "kube-logger-agent"
  end
end
