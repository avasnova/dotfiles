#!/bin/bash
chromium --class=Instagram --user-data-dir="$HOME/.config/chromium-instagram" --no-first-run https://www.instagram.com &
chromium --class=WhatsApp --user-data-dir="$HOME/.config/chromium-whatsapp" --no-first-run https://web.whatsapp.com

