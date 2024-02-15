{ config, pkgs, sysVars, usrVars, ... }:
{

  imports =
    [
      ./1password.nix
      ./starship.nix
    ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.burkhard = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      cargo
      discord
      eza
      fd
      firefox
      gcc
      gh
      git-absorb
      neovide
      neovim
      ripgrep
      thunderbird
      tree
      unzip
      zoxide
    ];
  };


  home-manager.users.burkhard = {
    programs.bash = {
      enable = true;
      profileExtra =
        ''
          if [ "$(tty)" = "/dev/tty1" ]; then 
              exec Hyprland 
          fi
        '';
      initExtra =
        ''
          function nix-dev-temp {
              nix flake init --template github:Wasabi375/dev-templates#$1
          }
        '';
      shellAliases = {
        ls = "eza -X --icons";
        la = "eza -Xa --icons";
        ll = "eza -Xhl --git";
        lla = "eza -Xhla --git";
        grep = "grep --color=auto";
        v = "nvim";
        nv = "neovide";
        open = "xdg-open";
        ".." = "z ..";
      };
      sessionVariables = {
        EDITOR = "vim";
        ELECTRON_OZONE_PLATFORM_HINT = "wayland";
        NIXOS_OZONE_WL = 1;
      };
    };

    programs.git = {
      enable = true;
      userName = usrVars.name;
      userEmail = usrVars.email;
    };

    programs.zoxide.enable = true;

    # This needs to be set and should stay the version of the inital nixos isntall
    home.stateVersion = "23.11";
    programs.home-manager.enable = true;
  };
}

