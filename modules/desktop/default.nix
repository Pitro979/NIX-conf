{ config, lib, pkgs, ... }:

{
  imports = [
    ./display-manager.nix
    ./hyprland.nix
    ./gnome.nix
  ];

}
