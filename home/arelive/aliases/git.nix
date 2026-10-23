{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.home.shellAliases = {
    gita = "git add";
    gitaa = "git add --all";
    gitb = "git branch";
    gitc = "git commit -m";
    gith = "git checkout";
    githb = "git checkout -b";
    gitC = "git clone";
    gitd = "git diff";
    gitds = "git diff --stat --summary";
    gitdc = "git diff --cached";
    gitdcs = "git diff --cached --stat --summary";
    gitf = "git fetch";
    gitl = "git log";
    gitlo = "git log --oneline";
    gitls = "git log --stat";
    gitlg = "git log --graph";
    gitlos = "git log --oneline --stat";
    gitlog = "git log --oneline --graph";
    gitlsg = "git log --stat --graph";
    gitlosg = "git log --oneline --stat --graph";
    gitm = "git merge";
    gitp = "git push";
    gitpt = "git push --tags";
    gitpu = "git push -u";
    gitpuom = "git push -u origin master";
    gitP = "git pull";
    gitr = "git remote";
    gitra = "git remote add";
    gitR = "git reset";
    gitRh = "git reset --hard";
    gits = "git status -sM";
    gitsb = "git status -sbM";
    gitH = "git show";
    gitt = "git tag";
    gitv = "git revert";

  };
}
