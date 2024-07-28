# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timo < Formula
  desc "Capture and search thoughts in your terminal."
  homepage "https://github.com/abhishek6262/timo"
  url "https://github.com/abhishek6262/timo/releases/download/v0.2.1/timo.tar.gz"
  sha256 "febafb638b273f8c04b33009ce687b8106d7450c66e46cd78ec908f1d902d3b8"
  version "0.2.1"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "timo"
    bin.install "target/release/timo"
  end
end
