{inputs, pkgs, ...}:

{

  #gdm config
  services.xserver = {
    enable = true;
    displayManager = {
      sessionPackages = [ pkgs.hyprland ];
      gdm.enable = true;
      gdm.wayland = true;
    };
  };

  boot.plymouth.enable = true;

  programs.dconf.enable = true;
}
