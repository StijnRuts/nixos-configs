{ config, pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;

    # Create an alias for the unstable channel
    packageOverrides = pkgs: {
      unstable = import <nixos-unstable> {
        config = config.nixpkgs.config;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    unstable.firefox
    unstable.chromium
    gimp inkscape krita pinta
    gparted filelight kompare okteta
    curl wget elinks lynx
    tmux htop rsync dos2unix ncdu ddrescue shellcheck
    imagemagick ffmpeg pandoc
    p7zip unzip unrar
    hunspell hunspellDicts.en-us #hunspellDicts.nl-be
  ];

  imports = [
    ./fasd.nix
    ./libre-office.nix
    ./ranger.nix
    ./redshift.nix
  ];
}
