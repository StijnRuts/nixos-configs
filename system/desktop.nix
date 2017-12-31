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
    xorg.xkill
    kdeApplications.konsole
    kdeApplications.dolphin-plugins
    kdeApplications.okular
    ark unzip unar p7zip
    kdeApplications.print-manager
    kdeApplications.kwalletmanager
    kdeApplications.kgpg
  ];
}
