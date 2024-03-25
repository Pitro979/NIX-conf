{inputs, pkgs, ...}:

{
  services.xserver = {
    enable = true;
    displayManager = {
      sessionPackages = [ inputs.hyprland.packages.${pkgs.system}.hyprland ];
      gdm.enable = true;
      gdm.wayland = true;
    };
  };

  boot.plymouth.enable = true;

  programs.dconf.enable = true;
}
