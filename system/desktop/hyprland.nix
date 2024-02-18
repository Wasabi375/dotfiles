{ config, pkgs, usrVars, ... }:
{

  imports = [ ./sound.nix ];
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    enableNvidiaPatches = true;
  };

  security.polkit.enable = true;

  environment.systemPackages = with pkgs; [
    alacritty
    dolphin
    dunst
    hyprland
    polkit
    qt6ct
    waybar
    wayland
    wl-clipboard
    wofi
    wpaperd
    xdg-utils
  ];

  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal
    ];
  };

  services.dbus = {
    enable = true;
    packages = [ pkgs.dconf ];
  };
  programs.dconf.enable = true;

  home-manager.users.burkhard = {
    programs.wpaperd = {
      enable = true;
      settings = {
        default = {
          path = "${usrVars.wallpaper}";
          duration = "3m";
        };
      };

    };
  };
}
