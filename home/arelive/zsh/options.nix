{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.programs.zsh = {
    # only what differs from zsh defaults; history options live in default.nix
    setOptions = [
      "AUTO_PUSHD"
      "PUSHD_IGNORE_DUPS"
      "PUSHD_MINUS"
      "PUSHD_SILENT"
      "PUSHD_TO_HOME"

      "BRACE_CCL"
      "MARK_DIRS"
      "NO_NOMATCH"
      "NUMERIC_GLOB_SORT"
      "RC_EXPAND_PARAM"

      "ALWAYS_TO_END"
      "BASH_AUTO_LIST"
      "LIST_PACKED"
      "NO_ALWAYS_LAST_PROMPT"
      "NO_AUTO_LIST"
      "NO_AUTO_MENU"
      "NO_AUTO_PARAM_KEYS"
      "NO_AUTO_REMOVE_SLASH"
      "NO_LIST_AMBIGUOUS"
      "NO_LIST_BEEP"

      "HIST_NO_FUNCTIONS"
      "HIST_NO_STORE"

      "INTERACTIVE_COMMENTS"
      "NO_BEEP"
    ];

    localVariables.PROMPT_EOL_MARK = "";
  };
}
