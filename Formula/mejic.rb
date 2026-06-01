class Mejic < Formula
  desc "Menu bar app that adds custom right-click actions to Finder via macOS Services"
  homepage "https://github.com/jayf0x/majic"
  url "https://github.com/jayf0x/majic/releases/download/vVERSION_PLACEHOLDER/Mejic-VERSION_PLACEHOLDER-arm64.zip"
  sha256 "SHA256_PLACEHOLDER"
  version "VERSION_PLACEHOLDER"

  on_arm do
    def install
      bin.install "Mejic"
    end
  end

  def install
    bin.install "Mejic"
  end

  def caveats
    <<~EOS
      Mejic is a menu bar app. Launch it with:
        Mejic

      To start Mejic automatically on login:
        osascript -e 'tell application "System Events" to make login item at end with properties {path:"#{HOMEBREW_PREFIX}/bin/Mejic", hidden:false}'

      To remove from Login Items:
        osascript -e 'tell application "System Events" to delete login item "Mejic"'

      To uninstall completely:
        brew uninstall mejic
    EOS
  end

  test do
    assert_predicate bin/"Mejic", :exist?
    assert_predicate bin/"Mejic", :executable?
  end
end
