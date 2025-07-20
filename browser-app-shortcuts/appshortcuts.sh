#!/bin/bash
chromium --class=Instagram --user-data-dir="$HOME/.config/chromium-instagram" --no-first-run --app=https://www.instagram.com &
chromium --class=WhatsApp --user-data-dir="$HOME/.config/chromium-whatsapp" --no-first-run --app=https://web.whatsapp.com

