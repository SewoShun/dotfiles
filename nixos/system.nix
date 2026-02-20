{ pkgs, ... }:
{
  system = {
    activationScripts.fixBinSh = {
      text = ''
        rm -f /bin/sh /bin/bash /usr/bin/env 2>/dev/null || true
      '';
      deps = [ ];
    };

    replaceDependencies.replacements =
      let
        coreutils-full-name =
          "coreuutils-full"
          + builtins.concatStringsSep "" (
            builtins.genList (_: "_") (builtins.stringLength pkgs.coreutils-full.version)
          );

        coreutils-name =
          "coreuutils"
          + builtins.concatStringsSep "" (
            builtins.genList (_: "_") (builtins.stringLength pkgs.coreutils.version)
          );

        findutils-name =
          "finduutils"
          + builtins.concatStringsSep "" (
            builtins.genList (_: "_") (builtins.stringLength pkgs.findutils.version)
          );

        diffutils-name =
          "diffuutils"
          + builtins.concatStringsSep "" (
            builtins.genList (_: "_") (builtins.stringLength pkgs.diffutils.version)
          );
      in
      [
        {
          oldDependency = pkgs.coreutils-full;
          newDependency = pkgs.symlinkJoin {
            name = coreutils-full-name;
            paths = [ pkgs.uutils-coreutils-noprefix ];
          };
        }
        {
          oldDependency = pkgs.coreutils;
          newDependency = pkgs.symlinkJoin {
            name = coreutils-name;
            paths = [ pkgs.uutils-coreutils-noprefix ];
          };
        }
        {
          oldDependency = pkgs.findutils;
          newDependency = pkgs.symlinkJoin {
            name = findutils-name;
            paths = [ pkgs.uutils-findutils ];
          };
        }
        {
          oldDependency = pkgs.diffutils;
          newDependency = pkgs.symlinkJoin {
            name = diffutils-name;
            paths = [ pkgs.uutils-diffutils ];
          };
        }
      ];
  };
}
