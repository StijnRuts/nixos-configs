{ config, pkgs, ... }:
{
  fonts.enableDefaultFonts = true;

  fonts.fonts = with pkgs; [
    cantarell_fonts
    dejavu_fonts
    emojione
    fira
    fira-code
    fira-code-symbols
    fira-mono
    font-droid
    freefont_ttf
    google-fonts
    hack-font
    inconsolata
    liberation_ttf
    libertine
    nerdfonts
    noto-fonts
    noto-fonts-emoji
    opensans-ttf
    profont
    source-code-pro
    source-sans-pro
    source-serif-pro
    terminus_font
    terminus_font_ttf
    ubuntu_font_family
    unifont
  ];
}
