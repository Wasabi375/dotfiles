{ config, pkgs, sysVars, usrVars, ... }:
{

  users.users.burkhard = {
    packages = with pkgs; [
      _1password
      _1password-gui
    ];
  };

  nixpkgs.overlays = [
    (final: prev: {
      _1password-gui = prev._1password-gui.overrideAttrs (oldAttrs: {
        postInstall = (oldAttrs.postInstall or "") + ''
          substituteInPlace $out/share/applications/1password.desktop \
              --replace "Exec=1password %U" "Exec=1password --enable-features=UseOzonePlatform --ozone-platform=wayland %U"
        '';
      });
    })
  ];
}
