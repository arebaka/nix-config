{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.programs.zsh.initContent = lib.mkOrder 1150 ''
    function() {
      autoload -Uz up-line-or-beginning-search down-line-or-beginning-search add-zle-hook-widget
      zle -N up-line-or-beginning-search
      zle -N down-line-or-beginning-search

      back-dir() {
        popd &>/dev/null
        zle reset-prompt
        print
        zle reset-prompt
      }

      forward-dir() {
        zle reset-prompt
        print
        ls
        zle reset-prompt
      }

      parent-dir() {
        pushd .. &>/dev/null
        zle reset-prompt
        print
        ls
        zle reset-prompt
      }

      home-dir() {
        pushd ~ &>/dev/null
        zle reset-prompt
        print
        ls
        zle reset-prompt
      }

      zle -N back-dir
      zle -N forward-dir
      zle -N parent-dir
      zle -N home-dir

      # Left, Right and Backspace are already bound by zsh itself
      typeset -A key
      key[Up]="''${terminfo[kcuu1]}"
      key[Down]="''${terminfo[kcud1]}"
      key[Home]="''${terminfo[khome]}"
      key[End]="''${terminfo[kend]}"
      key[PageUp]="''${terminfo[kpp]}"
      key[PageDown]="''${terminfo[knp]}"
      key[Insert]="''${terminfo[kich1]}"
      key[Delete]="''${terminfo[kdch1]}"
      key[Shift-Tab]="''${terminfo[kcbt]}"
      key[Ctrl-Left]="''${terminfo[kLFT5]:-^[[1;5D}"
      key[Ctrl-Right]="''${terminfo[kRIT5]:-^[[1;5C}"
      key[Ctrl-Delete]="''${terminfo[kDC5]:-^[[3;5~}"
      key[Ctrl-Backspace]="^H"
      key[Alt-Left]="''${terminfo[kLFT3]:-^[[1;3D}"
      key[Alt-Right]="''${terminfo[kRIT3]:-^[[1;3C}"
      key[Alt-Up]="''${terminfo[kUP3]:-^[[1;3A}"
      key[Alt-Home]="''${terminfo[kHOM3]:-^[[1;3H}"

      bindkey " " magic-space

      [[ -n "''${key[Up]}"             ]] && bindkey -- "''${key[Up]}"             up-line-or-beginning-search
      [[ -n "''${key[Down]}"           ]] && bindkey -- "''${key[Down]}"           down-line-or-beginning-search
      [[ -n "''${key[Home]}"           ]] && bindkey -- "''${key[Home]}"           beginning-of-line
      [[ -n "''${key[End]}"            ]] && bindkey -- "''${key[End]}"            end-of-line
      [[ -n "''${key[PageUp]}"         ]] && bindkey -- "''${key[PageUp]}"         beginning-of-buffer-or-history
      [[ -n "''${key[PageDown]}"       ]] && bindkey -- "''${key[PageDown]}"       end-of-buffer-or-history
      [[ -n "''${key[Insert]}"         ]] && bindkey -- "''${key[Insert]}"         overwrite-mode
      [[ -n "''${key[Delete]}"         ]] && bindkey -- "''${key[Delete]}"         delete-char
      [[ -n "''${key[Shift-Tab]}"      ]] && bindkey -- "''${key[Shift-Tab]}"      reverse-menu-complete
      [[ -n "''${key[Ctrl-Left]}"      ]] && bindkey -- "''${key[Ctrl-Left]}"      backward-word
      [[ -n "''${key[Ctrl-Right]}"     ]] && bindkey -- "''${key[Ctrl-Right]}"     forward-word
      [[ -n "''${key[Ctrl-Delete]}"    ]] && bindkey -- "''${key[Ctrl-Delete]}"    kill-word
      [[ -n "''${key[Ctrl-Backspace]}" ]] && bindkey -- "''${key[Ctrl-Backspace]}" backward-kill-word
      [[ -n "''${key[Alt-Left]}"       ]] && bindkey -- "''${key[Alt-Left]}"       back-dir
      [[ -n "''${key[Alt-Right]}"      ]] && bindkey -- "''${key[Alt-Right]}"      forward-dir
      [[ -n "''${key[Alt-Up]}"         ]] && bindkey -- "''${key[Alt-Up]}"         parent-dir
      [[ -n "''${key[Alt-Home]}"       ]] && bindkey -- "''${key[Alt-Home]}"       home-dir

      if (( ''${+terminfo[smkx]} && ''${+terminfo[rmkx]} )); then
        function zle_application_mode_start { echoti smkx }
        function zle_application_mode_stop { echoti rmkx }
        add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
        add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
      fi
    }
  '';
}
