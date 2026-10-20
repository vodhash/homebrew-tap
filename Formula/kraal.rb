# kraal's formula, put in the tap by kraal's release workflow (packaging/homebrew/publish.sh).
class Kraal < Formula
  desc "Terminal workspaces for coding agents and SSH fleets"
  homepage "https://github.com/vodhash/kraal"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vodhash/kraal/releases/download/v0.6.0/kraal-aarch64-apple-darwin.tar.gz"
      sha256 "e0ff7cc3240aa2ca5145772808861dd17fee67f5fb6c76cd3d5523e4b44a4289"
    end
    on_intel do
      url "https://github.com/vodhash/kraal/releases/download/v0.6.0/kraal-x86_64-apple-darwin.tar.gz"
      sha256 "5758441b3aace315299a75c35343647429e3c8683e961f235db9160e0e648af0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vodhash/kraal/releases/download/v0.6.0/kraal-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6175952f541f4e53388efb2b74d8f882b62cfd4bb3bce8c67cccdf867065f399"
    end
    on_intel do
      url "https://github.com/vodhash/kraal/releases/download/v0.6.0/kraal-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f6deca53fddbaccd96ea793da9bb5cc94c3b1333818ab50e364660b7e38d1666"
    end
  end

  def install
    bin.install "kraal"
  end

  test do
    assert_match "kraal #{version}", shell_output("#{bin}/kraal --version")
  end
end
