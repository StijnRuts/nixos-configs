{ config, pkgs, ... }:
{
  environment.systemPackages = [ pkgs.ranger ];

  programs.bash.interactiveShellInit = ''
    # This script references /usr/bin/ranger, which does not exist on NixOS
    # source ${pkgs.ranger}/share/doc/ranger/examples/bash_automatic_cd.sh

    # So we replicate the ranger-cd function here
    function ranger-cd {
      tempfile="$(mktemp)"
      ${pkgs.ranger}/bin/ranger --choosedir="$tempfile"
      test -f "$tempfile" &&
      if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
      fi
      rm -f -- "$tempfile"
    }

    alias ranger="ranger-cd";
  '';
}
