# Build Tiny Tapeout with LibreLane

## Environment setup

```bash
export LIBRELANE_ROOT=~/librelane
export SKY130_PDK_VERSION=6d4d11780c40b20ee63cc98e645307a9bf2b2ab8
export TT_CONFIG=sky130.yaml:../../mux_overrides.yaml

pip3 install ciel
ciel enable --pdk sky130 $SKY130_PDK_VERSION
```

Then install LibreLane with Nix, as explained [here](https://librelane.readthedocs.io/en/latest/getting_started/common/nix_installation/installation_linux.html), taking care of the following:

1. Look at the value of `LIBRELANE_TAG` in [.github/config/librelane.txt](.github/config/librelane.txt) to find the exact LibreLane commit you need to check out. Installing a different version will likely not work, as LibreLane is still in beta and the API is not very stable.

2. Clone LibreLane to ~/librelane (or change the value of the `LIBRELANE_ROOT` environment variable).

## Repository setup

First, make sure that you have checked out the submodules:

```bash
git submodule update --init
```

Then install all the Python dependencies. You may want to use a virtual enviroment (venv or similar).

```bash
pip install -r tt-multiplexer/py/requirements.txt -r tt/requirements.txt
```

## Fetching the projects

Run the following commands to generate the configuration for building Tiny Tapeout:

```bash
python tt/configure.py --update-shuttle
```

## Harden

```bash
nix-shell ${LIBRELANE_ROOT}/shell.nix --run "python -m librelane tt/rom/config.json"
nix-shell ${LIBRELANE_ROOT}/shell.nix --run "cd tt-multiplexer/ol2/tt_ctrl && python build.py"
nix-shell ${LIBRELANE_ROOT}/shell.nix --run "cd tt-multiplexer/ol2/tt_mux && python build.py"
python tt/configure.py --copy-macros
nix-shell ${LIBRELANE_ROOT}/shell.nix --run "cd tt-multiplexer/ol2/tt_top && python build.py --skip-xor-checks"
```

Note: We're skipping the XOR checks as they takes a lot of time and require much RAM (~ 64 GB). If you have enough RAM, you can remove the `--skip-xor-checks` flag.

You'll find the final GDS in `tt-multiplexer/ol2/tt_top/runs/RUN_*/final/gds/openframe_project_wrapper.gds`. To copy it (along with the lef, gl verilog, and spef files), run:

```bash
python tt/configure.py --copy-final-results
```
