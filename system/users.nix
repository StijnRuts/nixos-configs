{ config, pkgs, ... }:
{
  users.extraUsers.stijn = {
    isNormalUser = true;
    hashedPassword = "$6$x2M9vuF9Wij2n$nKlQza8F/B5U7A3iriM8WNzXZco6srsR99wqv.L58t6ThBtAGIHKcBx.CTHQkBVIt/JfPvMV.c352EajQVk55.";
    extraGroups = ["wheel" "networkmanager"];
    uid = 1000;
  };

  users.mutableUsers = false;

  environment.systemPackages = with pkgs; [ pkgs.xdg-user-dirs ];

  system.activationScripts = {
    xdg-user-dirs = {
      text = "${pkgs.xdg-user-dirs}/bin/xdg-user-dirs-update";
      deps = ["users"];
    };
  };
}
