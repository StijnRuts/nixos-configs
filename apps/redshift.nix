{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    redshift redshift-plasma-applet
  ];

  services.redshift = {
    enable = true;
    latitude = "4.35";
    longitude = "50.85";
    # temperature.day = 5500;
    # temperature.night = 3700;
    # brightness.day = "1";
    # brightness.night = "1";
  };
}
