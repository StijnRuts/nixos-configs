{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    libreoffice

    # Arch packages, no equivalent in NixOS?
    # hunspell hunspell-en hunspell-nl
    # hyphen hyphen-en hyphen-nl
    # libmythes mythes-en mythes-nl
    # languagetool libreoffice-extension-languagetool
  ];
}
