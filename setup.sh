#!/usr/bin/env bash
set -e  # exit on first error

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 1. Create venv if it doesn't already exist
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
    echo "Created .venv"
fi

# 2. Activate it
source .venv/bin/activate

# 3. Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# 4. Add quad-env/Simulation to this venv's path via .pth file
SITE_PACKAGES="$(python -c "import site; print(site.getsitepackages()[0])")"
echo "$REPO_ROOT/quadcopter-sim/Simulation" > "$SITE_PACKAGES/quadenv.pth"

echo "Setup complete. Activate with: source ,venv/bin/activate"