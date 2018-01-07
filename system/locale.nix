{ config, pkgs, ... }:
{
  i18n.consoleKeyMap = "be-latin1";
  services.xserver.layout = "be";
  services.xserver.xkbOptions = "eurosign:e";

  i18n.consoleFont = "Lat2-Terminus16";

  i18n.defaultLocale = "en_US.UTF-8";

  environment.sessionVariables = {
    LANGUAGE = "en_US.UTF-8";
    LC_MONETARY = "nl_BE.UTF-8";
    LC_MEASUREMENT = "nl_BE.UTF-8";
    LC_NUMERIC = "nl_BE.UTF-8";
    LC_PAPER = "nl_BE.UTF-8";
    LC_TIME = "nl_BE.UTF-8";
  };

  time.timeZone = "Europe/Brussels";
}
