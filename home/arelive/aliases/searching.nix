{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.home = {
    shellAliases = {
      grep = "grep --color=auto";
      egrep = "grep -E --color=auto";
      fgrep = "grep -F --color=auto";

      findn = "find . -name";
      findf = "find . -type f";
      findd = "find . -type d";
      findp = "find . -perm";
      findu = "find . -user";
      findg = "find . -group";
      finda = "find . -atime";
      findm = "find . -mtime";
      findc = "find . -cmin";
      finds = "find . -size";
      findfe = "find . -type f -empty";
      findde = "find . -type d -empty";

      hgrep = "history 0 | grep --color=auto";

    };
  };
}
