class LocalAiAdvisor < Formula
  desc "Hardware-aware local AI model recommendations"
  homepage "https://github.com/chrislaughlin/local-ai-advisor"
  url "https://github.com/chrislaughlin/local-ai-advisor/archive/54c58ee3d51f5abff54d6cf5a1e912245c1de6de.tar.gz"
  version "0.1.0"
  sha256 "a8ee1b658711c827027e20ec2eb1d40833a539af6f4b4d862048df4c0e6d1bd2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/local-ai-advisor --version")
  end
end
