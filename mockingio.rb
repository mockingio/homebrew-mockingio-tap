# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mockingio < Formula
  desc "mockingio is a mocking tool"
  homepage "https://github.com/mockingio/mockingio"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.8/mockingio_v0.0.8_darwin_arm64.tar.gz"
      sha256 "511898aa11f0b24324a3861f885ce708dcb096be7e3457312e4bb42b80e4f641"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.8/mockingio_v0.0.8_darwin_amd64.tar.gz"
      sha256 "cd8eca9e80474643e581d13818adbfcf10117e22d4fe9dcb4326941f3dc8f09b"

      def install
        bin.install "mockingio"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.8/mockingio_v0.0.8_linux_arm64.tar.gz"
      sha256 "6b04b636b3d44987fcdaf893a1d967010ff3a3e6a34218c5dabffd55814daf78"

      def install
        bin.install "mockingio"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mockingio/mockingio/releases/download/v0.0.8/mockingio_v0.0.8_linux_amd64.tar.gz"
      sha256 "b7cfa3e83a824be6e8e9c373b0d858d544a4008845eaa72971c382e05bc690a5"

      def install
        bin.install "mockingio"
      end
    end
  end

  test do
    system "#{bin}/mockingio --version"
  end
end
