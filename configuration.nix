{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./boot.nix
    ./networking.nix
    ./locale.nix
    ./services.nix
    ./shell.nix
    ./ssh.nix
    ./desktop.nix
    ./users.nix
    ./apps.nix
    ./scratchpad.nix
  ];

  # Keep your NixOS system up-to-date automatically.
  system.autoUpgrade.enable = true;

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "17.09"; # Did you read the comment?
}
