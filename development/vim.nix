{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (neovim.override { vimAlias = true; })
  ];

  programs.vim.defaultEditor = true;
}
