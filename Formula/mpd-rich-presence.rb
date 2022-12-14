# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class MpdRichPresence < Formula
  desc "MPD Rich Presence for Discord"
  homepage "https://winston.sh"
  version "0.7.1"

  depends_on "mpd"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nekowinston/mpd-rich-presence/releases/download/v0.7.1/mpd-rich-presence_0.7.1_darwin_arm64.tar.gz"
      sha256 "c77d9963599506ae947638d2bfff51cb7d35a93477c80ff549f1ec2d31bed143"

      def install
        bin.install "mpd-rich-presence"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nekowinston/mpd-rich-presence/releases/download/v0.7.1/mpd-rich-presence_0.7.1_darwin_amd64.tar.gz"
      sha256 "eee4cd4c94117737ffb6ad8717d38870068f14117063016a9463817c6c76900a"

      def install
        bin.install "mpd-rich-presence"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nekowinston/mpd-rich-presence/releases/download/v0.7.1/mpd-rich-presence_0.7.1_linux_arm64.tar.gz"
      sha256 "3a9a3ca1b03f7e163305414f616136fa14c454122a0e19d04f86d150399777ad"

      def install
        bin.install "mpd-rich-presence"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nekowinston/mpd-rich-presence/releases/download/v0.7.1/mpd-rich-presence_0.7.1_linux_amd64.tar.gz"
      sha256 "7eade16015f13fe9269e8e6b98f2fe18a2aaf82534ab48a4b68f4853afa10503"

      def install
        bin.install "mpd-rich-presence"
      end
    end
  end

  service do
    run [opt_bin/"mpd-rich-presence"]
    keep_alive true
    log_path var/"log/mpd-rich-presence.log"
    error_log_path var/"log/mpd-rich-presence.log"
  end
end
