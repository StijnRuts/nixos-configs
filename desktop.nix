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
    xdg-user-dirs
    kdeApplications.konsole
    kdeApplications.dolphin-plugins
    kdeApplications.okular
    kdeApplications.print-manager
    kdeApplications.kwalletmanager
    kdeApplications.kgpg
  ];
}
