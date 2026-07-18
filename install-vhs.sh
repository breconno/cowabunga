#!/usr/bin/env bash
set -euo pipefail

# Install VHS and dependencies on Ubuntu Server.

if [[ "${EUID}" -eq 0 ]]; then
  SUDO=""
else
  SUDO="sudo"
fi

echo "[1/7] Installing base packages..."
${SUDO} apt-get update
${SUDO} apt-get install -y ca-certificates curl gpg

echo "[2/7] Configuring Charm APT repository..."
${SUDO} mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | ${SUDO} gpg --dearmor -o /etc/apt/keyrings/charm.gpg
${SUDO} chmod a+r /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | ${SUDO} tee /etc/apt/sources.list.d/charm.list >/dev/null

echo "[3/7] Installing VHS and FFmpeg..."
${SUDO} apt-get update
${SUDO} apt-get install -y vhs ffmpeg

echo "[4/7] Installing ttyd..."
${SUDO} curl -fsSL https://github.com/tsl0922/ttyd/releases/latest/download/ttyd.x86_64 -o /usr/local/bin/ttyd
${SUDO} chmod +x /usr/local/bin/ttyd

echo "[5/7] Installing headless browser runtime dependencies..."
${SUDO} apt-get install -y \
  libnss3 \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libcups2 \
  libdrm2 \
  libxkbcommon0 \
  libxcomposite1 \
  libxdamage1 \
  libxfixes3 \
  libxrandr2 \
  libgbm1 \
  libasound2 \
  libpango-1.0-0 \
  libpangocairo-1.0-0 \
  libgtk-3-0 \
  libxss1

echo "[6/7] Enabling VHS no-sandbox mode for server environments..."
if ! grep -q '^export VHS_NO_SANDBOX=true$' "${HOME}/.bashrc"; then
  echo 'export VHS_NO_SANDBOX=true' >> "${HOME}/.bashrc"
fi

echo "[7/7] Verifying installation..."
vhs --version
ttyd --version || true

echo "Install complete."
echo "Run 'source ~/.bashrc' or start a new shell to load VHS_NO_SANDBOX."


  
  
