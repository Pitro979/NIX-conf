{ config, pkgs, ... }:

{ 
  services.xserver = {
    autorun = false;
    enable = true;
    desktopManager.gnome.enable = true;
  };
}
