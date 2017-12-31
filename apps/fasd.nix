{ config, pkgs, ... }:
{
  environment.systemPackages = [ pkgs.fasd ];

  programs.bash.shellAliases = {
    a  = "fasd -a";       # any
    s  = "fasd -si";      # show / search / select
    d  = "fasd -d";       # directory
    f  = "fasd -f";       # file
    sd = "fasd -sid";     # interactive directory selection
    sf = "fasd -sif";     # interactive file selection
    z  = "fasd_cd -d";    # cd, same functionality as j in autojump
    zz = "fasd_cd -d -i"; # cd with interactive selection
  };
}
