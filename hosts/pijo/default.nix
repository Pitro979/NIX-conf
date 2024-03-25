{ config, lib, pkgs, ... }:

{
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
    ./sound.nix
    ./services.nix
  ];

}
