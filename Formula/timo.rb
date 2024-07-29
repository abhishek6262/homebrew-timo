# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timo < Formula
  desc "Capture and search thoughts in your terminal."
  homepage "https://github.com/abhishek6262/timo"
  url "https://github.com/abhishek6262/timo/releases/download/v0.2.3/timo.tar.gz"
  sha256 "e5c8f26280429f597e6ef51e88267c118f4096a17017d8f4d307ad1b0e1d6453"
  version "0.2.3"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "timo"
    bin.install "target/release/timo"
  end
end
