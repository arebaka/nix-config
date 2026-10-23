{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.programs.zsh = {
    syntaxHighlighting = {
      enable = true;

      # home-manager adds "main" by itself; pattern has to go after it,
      # otherwise main repaints the tokens and only the spaces stay red
      highlighters = lib.mkAfter [
        "brackets"
        "pattern"
      ];

      styles = {
      unknown-token = "fg=red";
      alias = "fg=green,bold";
      suffix-alias = "fg=green,bold";
      global-alias = "fg=green,bold";
      builtin = "fg=yellow,underline";
      function = "fg=cyan,underline";
      precommand = "fg=yellow,bold";
      commandseparator = "fg=blue";
      hashed-command = "fg=cyan";
      globbing = "fg=magenta";
      history-expansion = "fg=magenta,bold";
      command-substitution = "fg=black,bg=white";
      command-substitution-delimiter = "fg=blue,bold";
      process-substitution = "fg=black,bg=white";
      process-substitution-delimiter = "fg=blue,bold";
      arithmetic-expansion = "fg=black,bg=white";
      single-hyphen-option = "fg=cyan,bold";
      double-hyphen-option = "fg=cyan,bold";
      back-quoted-argument = "fg=black,bg=white";
      back-quoted-argument-delimiter = "fg=blue,bold";
      single-quoted-argument = "italic";
      double-quoted-argument = "italic";
      dollar-quoted-argument = "italic";
      rc-quote = "bold";
      dollar-double-quoted-argument = "fg=cyan,bold";
      back-double-quoted-argument = "bold";
      back-dollar-quoted-argument = "bold";
      assign = "fg=cyan,bold";
      redirection = "fg=red,bold";
      comment = "fg=8,bold";
      named-fd = "fg=red,bold";
      numeric-fd = "fg=red,bold";

      };

      patterns = {
        "rm -r*" = "fg=white,bold,bg=red";
        "rm * -r*" = "fg=white,bold,bg=red";

      };

    };

    localVariables.ZSH_HIGHLIGHT_MAXLENGTH = 512;
  };
}
