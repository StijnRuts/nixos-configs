{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    gitg
    gitAndTools.diff-so-fancy
  ];
}
