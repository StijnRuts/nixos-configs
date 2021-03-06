{ config, pkgs, ... }:
{
  # Set of aliases for bash shell
  programs.bash.shellAliases = {
    unalias = "type";
    ls = "ls --color=auto";
    ll = "ls -la";
    grep = "grep --color=auto";
    nix-install = "sudo nixos-rebuild switch";
    nix-update = "sudo nixos-rebuild switch --upgrade";
    nix-search = "nix-env -qaP | grep";
    nix-search-haskell = "nix-env -f \"<nixpkgs>\" -qaP -A haskellPackages | grep";
    nix-search-node = "nix-env -f \"<nixpkgs>\" -qaP -A nodePackages | grep";
  };

  # Enable Bash completion for all interactive bash shells
  programs.bash.enableCompletion = true;

  # Shell script code called during interactive bash shell initialisation
  programs.bash.interactiveShellInit = ''
    # no duplicates in history
    HISTCONTROL="ignoreboth:erasedups"
  '';

  # Add to inputrc
  environment.etc.inputrc = pkgs.lib.mkForce {
    text = builtins.readFile <nixpkgs/nixos/modules/programs/bash/inputrc>
      + ''
        # case insensitive completion
        set completion-ignore-case on
      '';
  };

  # Shell script code used to initialise the bash prompt.
  programs.bash.promptInit = ''
    if [ "$TERM" != "dumb" -o -n "$INSIDE_EMACS" ]; then
      PS1_CLEAR="\[$(tput sgr0)\]"
      PS1_COLOR_PRIMARY="\[\033[1;32m\]"
      PS1_COLOR_SECONDARY="\[\033[38;5;11m\]"

      PS1_NEWLINE="\\n"
      PS1_WORKDIR="\\w"
      PS1_PROMPT="\\$"

      GIT_PROMPT=${pkgs.git}/share/git/contrib/completion/git-prompt.sh

      if [ -a $GIT_PROMPT ]; then
        # * unstaged
        # + staged
        # % untracked
        # $ stashed
        # < behind
        # > ahead
        # <> diverged
        # = up-to-date
        GIT_PS1_SHOWDIRTYSTATE=1
        GIT_PS1_SHOWUNTRACKEDFILES=1
        GIT_PS1_SHOWSTASHSTATE=1
        GIT_PS1_SHOWUPSTREAM=auto
        GIT_PS1_DESCRIBE_STYLE=branch
        source $GIT_PROMPT
        PS1_GIT='$(__git_ps1 " [%s]")'
      else
        PS1_GIT=""
      fi

      PS1=$PS1_CLEAR
      PS1+=$PS1_NEWLINE
      PS1+=$PS1_COLOR_PRIMARY
      PS1+=$PS1_WORKDIR
      PS1+=$PS1_COLOR_SECONDARY
      PS1+=$PS1_GIT
      PS1+=$PS1_CLEAR
      PS1+=$PS1_NEWLINE
      PS1+=$PS1_PROMPT
      PS1+=" "
    fi
  '';
}
