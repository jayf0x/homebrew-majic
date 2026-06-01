class Mejic < Formula
  desc "Menu bar app that adds custom right-click actions to Finder via macOS Services"
  homepage "https://github.com/jayf0x/majic"
  url "https://github.com/jayf0x/majic/releases/download/v0.1.1/Mejic-0.1.1-arm64.zip"
  sha256 "db5ad00e6cd028667cc3f8c837830a035ed636aac0ef69bccde70c5d4c49e92e"
  version "0.1.1"

  def install
    bin.install "Mejic"
  end

  def caveats
    <<~EOS
      Mejic is a menu bar app. Launch it with:
        Mejic

      Start automatically on login:
        osascript -e 'tell application "System Events" to make login item at end with properties {path:"#{HOMEBREW_PREFIX}/bin/Mejic", hidden:false}'

      Remove from Login Items:
        osascript -e 'tell application "System Events" to delete login item "Mejic"'
    EOS
  end

  test do
    assert_predicate bin/"Mejic", :exist?
    assert_predicate bin/"Mejic", :executable?
  end
end
