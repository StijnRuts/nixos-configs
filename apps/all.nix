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
    curl wget
    unstable.firefox
  ];
}
