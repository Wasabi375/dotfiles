{ config, pkgs, sysVars, usrVars, ... }:
{
  users.users.burkhard = {
    packages = with pkgs; [
      starship
    ];
  };


  home-manager.users.burkhard = {
    programs.starship = {
      enable = true;
      settings = builtins.fromTOML (builtins.readFile ./starship.toml);
    };
  };
}
