{ config, lib, pkgs, inputs, ... }:

let
  # every module of the toolchain segment looks the same
  toolchainModule = symbol: {
    inherit symbol;
    style = "fg:black bg:toolchain";
    version_format = "\${raw}";
    format = "[ $symbol ($version )]($style)";
  };
in
{
  home-manager.users.arelive.programs.starship = {
    enable = true;

    settings = {
      add_newline = false;

      palette = "arelive";
      palettes.arelive = {
        accent = "#7d80b8";
        root = "#b87e7d";
        git = "#f05133";
        toolchain = "#f3e4a5";
        container = "#7db890";
      };

      format = lib.concatStrings [
        "[](accent)"
        "$username"
        "$os"
        "$hostname"
        "[](fg:accent bg:git)"
        "$git_branch"
        "$git_commit"
        "$git_status"
        "$git_metrics"
        "[](fg:git bg:toolchain)"
        "$bun"
        "$c"
        "$cpp"
        "$cmake"
        "$golang"
        "$nodejs"
        "$rust"
        "[](fg:toolchain bg:container)"
        "$container"
        "$docker_context"
        "[](fg:container)"
        "$directory"
        "$line_break"
        "$status"
        "$character"
      ];

      right_format = lib.concatStrings [
        "$jobs"
        "$time"
      ];

      username = {
        show_always = true;
        style_user = "bg:accent";
        style_root = "bg:root";
        format = "[$user]($style)";
      };

      os = {
        disabled = false;
        style = "bg:accent";
        format = "[ $symbol  ]($style)";
        symbols = {
          NixOS = "";
          Macos = "";
          Android = "";
          Linux = "";
        };
      };

      hostname = {
        ssh_only = false;
        ssh_symbol = "";
        style = "bg:accent";
        format = "[$ssh_symbol$hostname ]($style)";
      };

      git_branch = {
        symbol = "";
        style = "bg:git";
        format = "[ $symbol $branch(:$remote_branch) ]($style)";
      };

      git_commit = {
        tag_disabled = false;
        tag_symbol = "";
        style = "bg:git";
        format = "[\\($hash$tag\\) ]($style)";
      };

      git_status = {
        style = "bg:git";
        format = "[\\[$all_status$ahead_behind\\] ]($style)";
      };

      git_metrics = {
        disabled = false;
        added_style = "fg:black bg:git";
        deleted_style = "fg:black bg:git";
        format = "([+$added]($added_style))([-$deleted]($deleted_style))[ ](bg:git)";
      };

      bun = toolchainModule "";
      cmake = toolchainModule "";
      golang = toolchainModule "";
      nodejs = toolchainModule "";
      c = toolchainModule "" // {
        format = "[ $symbol (($name)$version )]($style)";
      };
      cpp = toolchainModule "" // {
        disabled = false;
        format = "[ $symbol (($name)$version )]($style)";
      };
      rust = toolchainModule "" // {
        format = "[ $symbol (($toolchain) $version )]($style)";
      };

      container = {
        style = "fg:black bg:container";
        format = "[ $symbol\\[$name\\] ]($style)";
      };

      docker_context = {
        symbol = "";
        style = "fg:black bg:container";
        format = "[ $symbol $context ]($style)";
      };

      directory = {
        truncation_length = 8;
        truncate_to_repo = false;
        truncation_symbol = "…/";
        read_only = "";
        style = "bold white";
        format = " [$path]($style)[ $read_only]($read_only_style) ";
      };

      status = {
        disabled = false;
        format = "[$status( $signal_name)]($style) ";
      };

      jobs.style = "accent";

      time = {
        disabled = false;
        style = "accent";
        format = "[$time]($style)";
      };
    };

  };
}
