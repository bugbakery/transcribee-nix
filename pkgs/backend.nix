{ lib
, fetchzip
, pkgs
, python3Packages ? pkgs.python3.pkgs
, stdenv
}:
let
  common = import ../common.nix {
    fetchzip = fetchzip;
  };
in
python3Packages.buildPythonApplication rec {
  pname = "${common.name}-backend";
  version = common.version;
  src = common.source;

  format = "pyproject";

  nativeBuildInputs = [
    pkgs.pdm
    python3Packages.pdm-pep517
    pkgs.git
    pkgs.cacert
  ];

  propagagedBuildInputs = with pkgs; [
    # for automerge-py
    libiconv
    rustc
    cargo
    maturin

    # provides libmagic
    file
  ];

  doCheck = false;

  configurePhase = ''
    cd backend/
  '';

  installPhase = ''
    export PDM_TMP=$(mktemp -d)
    export PDM_CONFIG_FILE=$PDM_TMP/config

    pdm config cache_dir $PDM_TMP/cache
    TERM=dumb pdm install --no-lock --check --prod

    for i in __pypackages__/*/lib/magic/loader.py; do
      substituteInPlace "$i" --replace "find_library('magic')" "'${pkgs.file}/lib/libmagic${stdenv.hostPlatform.extensions.sharedLibrary}'";
    done

    mkdir -p $out
    cp -r * .* $out/
    cp -r ${./pages}/*.md $out/data/pages/
  '';
}
