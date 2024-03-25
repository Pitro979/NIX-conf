
{config, pkgs, lib, ...}:

{

  imports =[
    ../../modules/hw/sound.nix
    ../../modules/languages
    ../../modules/programs
  ]; 

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 5;
  boot.initrd.enable = true;
  boot.initrd.systemd.enable = true;

    # Networking
  networking.hostName = "nixos-pijo";
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Rome";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "it_IT.UTF-8";
    LC_IDENTIFICATION = "it_IT.UTF-8";
    LC_MEASUREMENT = "it_IT.UTF-8";
    LC_MONETARY = "it_IT.UTF-8";
    LC_NAME = "it_IT.UTF-8";
    LC_NUMERIC = "it_IT.UTF-8";
    LC_PAPER = "it_IT.UTF-8";
    LC_TELEPHONE = "it_IT.UTF-8";
    LC_TIME = "it_IT.UTF-8";
  };

  users.users.pijo = {
    isNormalUser = true;
    description = "pijo";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      discord
      curl
      wget
      neovim
      unzip
      zathura
      mpv
      imv
      htop
      libreoffice-qt
      thefuck
    ];
  };
  
  # Start ssh agent
  programs.ssh.startAgent = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Override packages
  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  # Nix Configuration
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];    
  };

  #Garbage colector
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  system.autoUpgrade = {
   enable = true;
   channel = "https://nixos.org/channels/nixos-23.05";
  };


  system.stateVersion = "23.11";
}
