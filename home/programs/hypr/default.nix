{ config, lib, pkgs, hyprland, ... }:

{
  imports = [ 
    ./hyprland-environement.nix
  ];

  home.packages = with pkgs; [ 
    waybar
    eww
    swww
  ];
  
  #test later systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;
    settings = {
      "$mod" = "SUPER";
      bind = [
        "$mod, Q, exec, $TERMINAL"
      ];
    };
  };
}
