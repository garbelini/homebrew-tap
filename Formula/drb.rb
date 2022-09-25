# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private"
class Drb < Formula
  desc "drb - Drone CI command line browser"
  homepage ""
  version "0.2.0"
  license "MIT"

  on_macos do
    url "https://github.com/garbelini/drb/releases/download/v0.2.0/drb_0.2.0_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "bd43d14228afde475a96c1ef54200a5b17ff3a2ab138ca17a150daa2289ed1dc"

    def install
      bin.install "drb"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Drb
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/garbelini/drb/releases/download/v0.2.0/drb_0.2.0_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f2d08b049a487183f07865310b776f7e03b5c464037d8507c57a53efd5637ca8"

      def install
        bin.install "drb"
      end
    end
  end
end
