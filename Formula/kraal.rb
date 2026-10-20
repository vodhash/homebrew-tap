# kraal's formula, put in the tap by kraal's release workflow (packaging/homebrew/publish.sh).
class Kraal < Formula
  desc "Terminal workspaces for coding agents and SSH fleets"
  homepage "https://github.com/vodhash/kraal"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vodhash/kraal/releases/download/v0.5.3/kraal-aarch64-apple-darwin.tar.gz"
      sha256 "6e9e8d806fb019d8989569224a886da0419e6db0897bf884575a343a86e873d4"
    end
    on_intel do
      url "https://github.com/vodhash/kraal/releases/download/v0.5.3/kraal-x86_64-apple-darwin.tar.gz"
      sha256 "1481730d4668f4d4b000d66afaf0a8c5940488e48d9bbeb84c9bdfcb74ca61b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vodhash/kraal/releases/download/v0.5.3/kraal-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7361bd5985c89f3f611196bc30f5732e2609bcfe3c704dfaa68a83a3965bdf7"
    end
    on_intel do
      url "https://github.com/vodhash/kraal/releases/download/v0.5.3/kraal-x86_64-unknown-linux-musl.tar.gz"
      sha256 "edd63a5c296282e14c0791a9c3680835a01480e56e118c874b5dbf0679c4f608"
    end
  end

  def install
    bin.install "kraal"
  end

  test do
    assert_match "kraal #{version}", shell_output("#{bin}/kraal --version")
  end
end
