{ config, pkgs, ... }:
{
  i18n.consoleKeyMap = "be-latin1";
  services.xserver.layout = "be";
  services.xserver.xkbOptions = "eurosign:e";

  i18n.consoleFont = "Lat2-Terminus16";

  # i18n.supportedLocales = ["en_US.UTF-8" "nl_BE.UTF-8"];
  i18n.defaultLocale = "en_US.UTF-8";

  time.timeZone = "Europe/Brussels";
}
