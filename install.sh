SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=true

print() {
  ui_print "$1"
  sleep 0.1
}

print_modname() {
  print ""
  print "╔══════════════════════════════════════╗"
  print "║                                      ║"
  print "║        ⚡ ZTE REDMAGIC 11 Pro+ ⚡     ║"
  print "║                                      ║"
  print "║            Xecute Edition            ║"
  print "║                                      ║"
  print "╚══════════════════════════════════════╝"
  print ""
  print "  ┌──────────────────────────────┐"
  print "  │  Device Spoof Module         │"
  print "  │  Performance Profile         │"
  print "  │  Installing...               │"
  print "  └──────────────────────────────┘"
  print ""
}

on_install() {
  print ""
  print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  print "  ⚡ Preparing installation..."
  print "  ⚡ Extracting files..."
  print "  ⚡ Applying configuration..."
  print "  ⚡ Setting permissions..."
  print "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  print ""
}

MOD_EXTRACT() {
  print "  → Extracting system files..."
  unzip -o "$ZIPFILE" system/* -d "$MODPATH" >&2
  print "  ✓ Extraction complete"
}

set_permissions() {
  print "  → Setting permissions..."
  set_perm_recursive "$MODPATH" 0 0 0755 0644
  print "  ✓ Permissions applied"
  print ""
}

print_finish() {
  print "╔══════════════════════════════════════╗"
  print "║                                      ║"
  print "║          ✅ Installation Done        ║"
  print "║                                      ║"
  print "║        Thanks for using Xecute       ║"
  print "║                                      ║"
  print "╚══════════════════════════════════════╝"
  print ""
}