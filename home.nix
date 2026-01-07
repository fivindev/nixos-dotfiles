{ config, pkgs, ... }:

{
    home.username = "alec";
    home.homeDirectory = "/home/alec";
    home.stateVersion = "25.11";
    programs.bash = {
        enable = true;
        shellAliases = {
            btw = "echo i use nixos, btw";
        };
    };
    # home.file.".config/qtile".source = ./config/qtile;
    # home.file.".config/nvim".source = ./config/nvim;
    home.packages = with pkgs; [
        neovim
        ripgrep
        nil
        nixpkgs-fmt
        nodejs
        gcc
        gh
    ];

    programs.gh = {
        enable = true;
        gitCredentialHelper.enable = true;
    };

    programs.git = {
        enable = true;
        userName = "fivindev";
        userEmail = "$GITEMAIL";
    };
}
