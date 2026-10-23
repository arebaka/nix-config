{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./options.nix
    ./completion.nix
    ./keybindings.nix
    ./syntax-highlighting.nix
    ./autosuggestion.nix
    ./antidote.nix
    ./starship.nix
  ];

  home-manager.users.arelive.programs.zsh = {
    enable = true;
    dotDir = config.home-manager.users.arelive.home.homeDirectory;
    defaultKeymap = "emacs";
    autocd = true;

    history = {
      save = 1000000;
      extended = true;
    };

  };
}
