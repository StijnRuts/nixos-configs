{ config, pkgs, ... }:
{
  imports = [
    ./atom.nix
    ./git.nix
    ./vim.nix
  ];
}
