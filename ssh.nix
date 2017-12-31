{ config, pkgs, ... }:
{
  programs.ssh.startAgent = true;

  programs.ssh.extraConfig = ''
    Host github.com
      IdentityFile ~/.ssh/id_rsa_github
  '';
}
