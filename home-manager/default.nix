{ hyprland, pkgs, ...}: { 

  home = {
    username = "pijo";
    homeDirectory = "/home/pijo";
  };

  programs.home-manager.enable = true;

  home.stateVersion = "23.11";

}
