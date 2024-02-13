{
  description = "Wasabi Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };


  outputs = { self, nixpkgs, home-manager, ... }:
    let
      lib = nixpkgs.lib;
      sysVars = {
        system = "x86_64-linux";
        hostName = "SylphrenaNix";
      };
      usrVars = {
        userName = "burkhard";
        name = "Burkhard Mittelbach";
        email = "wasabi37a@googlemail.com";
        wallpaper = "/home/share/Wallpaper";
      };
    in
    {
      nixosConfigurations.${sysVars.hostName} = lib.nixosSystem {
        system = sysVars.system;
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
        ];
        specialArgs = {
          inherit sysVars;
          inherit usrVars;
        };
      };
    };
}
