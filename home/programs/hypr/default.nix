{ config, lib, pkgs, ... }:

{
  imports = [ 
    ./hyprland-environement.nix
  ];

  home.packages = with pkgs; [ 
    eww
    swaylock
  ];
  
  #test later systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;
  };
}
