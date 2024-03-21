{ pkgs, ... }:

{

  programs.light.enable = true;

  environment.systemPackages = with pkgs; [
    brightnessctl
  ];
   
  services.auto-cpufreq.enable = true;
  services.auto-cpufreq.settings = {
    battery = {
       governor = "powersave";
       turbo = "never";
    };
    charger = {
       governor = "performance";
       turbo = "auto";
    };
  };
    
  # Enable Services
  programs.direnv.enable = true;
  services.upower.enable = true;
  programs.fish.enable = true;
  programs.dconf.enable = true;
  services.dbus.enable = true;
  services.dbus.packages = with pkgs; [
  	xfce.xfconf
  	gnome2.GConf
  ];
  services.mpd.enable = true;
  services.tumbler.enable = true; 
  services.fwupd.enable = true;


  environment.systemPackages = with pkgs; [
    xdg-utils 
    tree
  ];
}
