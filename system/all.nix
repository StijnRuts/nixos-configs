{ config, pkgs, ... }:
{
  imports = [
    ./boot.nix
    ./bluetooth.nix
    ./desktop.nix
    ./fonts.nix
    ./locale.nix
    ./networking.nix
    ./services.nix
    ./shell.nix
    ./ssh.nix
    ./users.nix
  ];
}
