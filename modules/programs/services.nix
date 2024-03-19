{ pkgs, ... }:

{

  services.geoclue2.appConfig = {
      "gammastep" = {
        isAllowed = true;
        isSystem = false;
        users = [ "pijo" ];
      };
  };

  programs.light.enable = true;

  environment.systemPackages = with pkgs; [
    # wlsunset
    gammastep
    brightnessctl
  ];
  
  programs.light.enable = true;

  environment.systemPackages = with pkgs; [
    # wlsunset
    gammastep
    brightnessctl
  ];
  # Systemd services setup
  systemd.packages = with pkgs; [
    auto-cpufreq
  ];
  
  # Enable Services
  services.geoclue2.enable = true;
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
  services.auto-cpufreq.enable = true;
  # services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  environment.systemPackages = with pkgs; [
    at-spi2-atk
    qt6.qtwayland
    psi-notify
    poweralertd 
    playerctl
    psmisc
    grim
    wget
    slurp
    imagemagick
    swappy
    ffmpeg_6-full
    # wl-screenrec
    wf-recorder
    wl-clipboard
    cliphist
    clipboard-jh
    xdg-utils
    wtype
    wlrctl
    hyprpicker
    pyprland
    dunst
    avizo
    wlogout
    wpaperd
    # swww
    gifsicle
    tree
  ];
}
