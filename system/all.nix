{ config, pkgs, ... }:
{
  imports = [
    ./boot.nix
    ./desktop.nix
    ./locale.nix
    ./networking.nix
    ./services.nix
    ./shell.nix
    ./ssh.nix
    ./users.nix
  ];
}
