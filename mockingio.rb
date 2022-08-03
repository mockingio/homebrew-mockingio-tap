# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockingio < Formula
  desc "mockingio is a mocking tool"
  homepage "https://github.com/mockingio/mockingio"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.6/mockingio_v0.0.6_darwin_arm64.tar.gz"
      sha256 "72b197d356bfb810bc1d632fb4c0aaf2ad737b1ed2e7a9ae0c8bf07b155f41cd"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.6/mockingio_v0.0.6_darwin_amd64.tar.gz"
      sha256 "eb6fae45a85e8e0d645b1d438ae80ea1d5a18e81d35485c9daab5d01404fb6fb"

      def install
        bin.install "mockingio"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.6/mockingio_v0.0.6_linux_arm64.tar.gz"
      sha256 "c39c2191161f12c16c1a70240e25cbde6c09544d0ca880aa2e22c3175c59a6ee"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.6/mockingio_v0.0.6_linux_amd64.tar.gz"
      sha256 "bb10ade7cf4cc85750d59d5eaed0d6d1a043d6b1bf865aed461ca8ebeecf8d2f"

      def install
        bin.install "mockingio"
      end
    end
  end

  test do
    system "#{bin}/mockingio --version"
  end
end
