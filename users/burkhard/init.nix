{ config, pkgs, sysVars, usrVars, ... }:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.burkhard = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      _1password
      _1password-gui
      cargo
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
      shellAliases = {
        ls = "eza -X --icons";
        la = "eza -Xa --icons";
        ll = "eza -Xhl --git";
        lla = "eza -Xhla --git";
        grep = "grep --color=auto";
        v = "nvim";
        nv = "neovide";
        open = "xdg-open";
      };
      sessionVariables = {
        EDITOR = "vim";
      };
    };

    programs.git = {
      enable = true;
      userName = usrVars.name;
      userEmail = usrVars.email;
    };


    # This needs to be set and should stay the version of the inital nixos isntall
    home.stateVersion = "23.11";
    programs.home-manager.enable = true;
  };
}

