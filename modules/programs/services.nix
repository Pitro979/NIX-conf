{ pkgs, ... }:

{

  programs.light.enable = true; 
   
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

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };

  programs.regreet.enable = true;
  services.greetd = {
    enable = true;
    settings = {
      initial_session = {
        user = "pijo";
        command = "$SHELL -l";
      };
    };
  };
 

  programs = {
    bash = {
      interactiveShellInit = ''
        if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
           Hyprland #prevents cursor disappear when using Nvidia drivers
        fi
      '';
    };
  };


  environment.systemPackages = with pkgs; [
    xdg-utils 
    tree
    brightnessctl
  ];
}
