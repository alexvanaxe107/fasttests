with import <nixpkgs> {};
let
  pythonEnv = python3.withPackages (ps: [
    ps.fastapi
  ]);
in mkShell {
  packages = [
    pythonEnv
  ];
}
