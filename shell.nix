{ config, pkgs, ... }:
{
  # Shell script code called during interactive bash shell initialisation
  programs.bash.interactiveShellInit = "";

  # Shell script code called during login bash shell initialisation
  programs.bash.loginShellInit = "";

  # Shell script code used to initialise the bash prompt.
  programs.bash.promptInit = ''
    # Provide a nice prompt if the terminal supports it.
    if [ "$TERM" != "dumb" -o -n "$INSIDE_EMACS" ]; then
      PROMPT_COLOR="1;31m"
      let $UID && PROMPT_COLOR="1;32m"
      PS1="\n\[\033[$PROMPT_COLOR\][\u@\h:\w]\\$\[\033[0m\] "
      if test "$TERM" = "xterm"; then
        PS1="\[\033]2;\h:\u:\w\007\]$PS1"
      fi
    fi
  '';

  # Shell script code called during bash shell initialisation.
  programs.bash.shellInit = "";

  # Set of aliases for bash shell
  programs.bash.shellAliases = {
    l = "ls -alh";
    ll = "ls -l";
    ls = "ls --color=tty";
  };

  # Enable Bash completion for all interactive bash shells
  programs.bash.enableCompletion = true;
}
