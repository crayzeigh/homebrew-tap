# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MetalCli < Formula
  desc "Official Equinix Metal CLI"
  homepage "https://metal.equinix.com/developers/docs/libraries/cli/"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/crayzeigh/metal-cli/releases/download/v0.7.1/metal-darwin-amd64"
      sha256 "04282c722c0f6a04773ad369ea5c64839de92a9e6804a8e4ed88de8e7f4a9c06"

      def install
        bin.install "metal-darwin-amd64" => "metal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/crayzeigh/metal-cli/releases/download/v0.7.1/metal-linux-armv6"
      sha256 "5243297b68c5d6f68b810bd79cb890f1d54ad768b1fec44a7e898aad539828b5"

      def install
        bin.install "metal-linux-armv6" => "metal"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/crayzeigh/metal-cli/releases/download/v0.7.1/metal-linux-arm64"
      sha256 "27607d334932c2d853330c618948d9a8b469cd56f8eb7daa78e7daef0dcd1beb"

      def install
        bin.install "metal-linux-arm64" => "metal"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/crayzeigh/metal-cli/releases/download/v0.7.1/metal-linux-amd64"
      sha256 "bd4dd4a8083c344043cdb1874a5045906f2f622b5efcf8c7e7c9bdb4af027cd5"

      def install
        bin.install "metal-linux-amd64" => "metal"
      end
    end
  end

  depends_on "go" => :build
end
