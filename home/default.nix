{ hyprland, pkgs, ...}: { 

  home = {
    username = "pijo";
    homeDirectory = "/home/pijo";
  };

  imports = [
    hyprland.homeManagerModules.default;
  ]

  programs.home-manager.enable = true;

  home.stateVersion = "23.11";

}
