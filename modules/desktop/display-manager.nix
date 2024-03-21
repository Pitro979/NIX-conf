{ pkgs, ... }:

{
  # Enable Display Manager
  services.xserver.displayManager.sddm.enable = true; 

  environment.systemPackages = with pkgs; [
    libsForQt5.sddm
  ];
}

