{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;
    libinput.enable = true;
    displayManager.sddm.enable = true;
    displayManager.sddm.autoNumlock = true;
    desktopManager.plasma5.enable = true;
  };

  environment.systemPackages = with pkgs; [
    ark
    dolphin
    gwenview
    kdeApplications.dolphin-plugins
    kdeApplications.kcalcore
    kdeApplications.kgpg
    kdeApplications.konsole
    kdeApplications.kwalletmanager
    kdeApplications.okular
    kdeApplications.print-manager
    kdeApplications.spectacle
    xdg-user-dirs
    xorg.xkill
  ];
}
