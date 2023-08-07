{pkgs ? import <nixpkgs> {}}:
let
  pythonEnv = pkgs.python3.withPackages (ps: [
    ps.fastapi
    ps.uvicorn
  ]);
in pkgs.mkShell {
  packages = [
    pythonEnv
  ];
}
