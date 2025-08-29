# 🪝 Czkawka for macOS - Complete Installation & Usage Guide

A complete, no-nonsense guide to install and run **Czkawka** on macOS (both Intel and Apple Silicon). Includes stable and nightly builds, permissions, command-line steps, troubleshooting, and more.

---

## 📋 Table of Contents

- [🪝 What is Czkawka?](#-what-is-czkawka)
- [💻 MacBook Requirements](#-macbook-requirements)
- [📦 Stable Versions](#-stable-versions)
  - [⚪ Stable Releases (Arm & Intel)](#-stable-releases-arm--intel)
  - [🔵 Stable Version (Apple Silicon Only)](#-stable-version-apple-silicon-only)
  - [🟢 Stable Version (Intel, With HEIF ✅)](#-stable-version-intel-with-heif-)
  - [🔴 Stable Version (Intel, No HEIF ❌)](#-stable-version-intel-no-heif-)
  - [⚫ Nightly Builds (Arm & Intel)](#-nightly-builds-arm--intel)
- [⚙️ Installation via Terminal (Bash/Zsh)](#️-installation-via-terminal-bashzsh)
- [🔐 System Permissions](#-system-permissions)
- [🚀 Usage](#-usage)
- [🔧 Troubleshooting](#-troubleshooting)
- [💡 Why Use the Single Executable?](#-why-use-the-single-executable)
- [🆘 Support](#-support)

---

## 🪝 What is Czkawka?

Czkawka is a lightning-fast, multi-purpose file cleaner that can:

- Remove duplicate files
- Detect similar images/videos
- Locate empty folders and large files
- Optimize storage on your Mac

Free, open-source, written in Rust. No installer needed.

---

## 💻 MacBook Requirements

**Check Your Chip Type:**

- Click "🍎 Apple menu" → "About This Mac"
- Look for the **Chip** or **Processor**:
  - "Apple M1 / M2 / M3" = Apple Silicon (ARM)
  - "Intel i5 / i7 / i9" = Intel

---

## 📦 Stable Versions

### ⚪ **Stable Releases (Arm & Intel)**

Browse All Stable Releases: [View All Stable Releases](https://github.com/qarmin/czkawka/releases)

### 🔵 Stable Version (Apple Silicon Only)

**Latest Stable Build**: [mac_czkawka_gui_arm](https://github.com/qarmin/czkawka/releases/latest/download/mac_czkawka_gui_arm) Apple Silicon (M1/M2/M3). Native ARM64 binary.

### 🟢 Stable Version (Intel, With HEIF ✅)

**HEIF Support Intel Build**: [mac_czkawka_gui_heif](https://github.com/qarmin/czkawka/releases/latest/download/mac_czkawka_gui_heif) Intel Macs with full HEIF (iPhone photo format) support.

### 🔴 Stable Version (Intel, No HEIF ❌)

**Standard Intel Build**: [mac_czkawka_gui](https://github.com/qarmin/czkawka/releases/latest/download/mac_czkawka_gui) Intel Macs only. No HEIF support.

### ⚫ Nightly Builds (Arm & Intel)

**Development Versions**: [Nightly Releases](https://github.com/qarmin/czkawka/releases/tag/Nightly) Built from the latest commits. May contain bugs or instability. Not guaranteed to run cleanly.

---

### 📚 HEIF Support Notes 

- **Apple Silicon:** No HEIF support (native libraries unavailable)
- **Intel Macs:** Use the `_heif` build for full HEIF support

### 💼 GUI Only

This guide uses **GUI versions only** — not the CLI binaries.

---

## ⚙️ Installation via Terminal (Bash/Zsh)

**Steps for All Macs:**

Ensure you download the correct GUI binary for your Mac, choosing between Intel or Apple Silicon versions, and check if you need HEIF support. Click the appropriate download link above; the file will be saved to your Downloads folder. Next, open your preferred terminal, then copy and paste the provided command to proceed. (In this example, we'll use the native arm macOS GUI file `mac_czkawka_gui_arm`)

### Part 1: Setup and Run
```bash
cd "$HOME/Downloads"                     # 📁 Navigate to your Downloads folder
mv mac_czkawka_gui_arm czkawka          # ✏️ Rename the file to "czkawka" (for simplicity)
chmod +x czkawka                         # 🔓 Make it executable
./czkawka                               # 🚀 Run it to test it opens properly
```

### Part 2: Move to Applications Folder From Downloads Folder
```bash
mv "$HOME/Downloads/czkawka" /Applications/
```

### What These Commands Do:
- 📁 Navigate to your Downloads folder
- ✏️ Rename the file to "czkawka" (for simplicity)
- 🔓 Make it executable
- 🚀 Run it to test it opens properly
- 📦 Move to Applications for easy GUI access

---

## 🔐 System Permissions

**Full Disk Access (if needed)**

For scanning system directories:

- Open **System Preferences** → **Security & Privacy** → **Privacy**
- Select **Full Disk Access**
- Click the lock icon and enter your password
- Click the ➕ button and add:
  - `/System/Applications/Utilities/Terminal.app`
  - `/Applications/czkawka`
  - Optional: `/Applications/iTerm.app`, `Warp`, or any 3rd-party terminal
- Enable toggles for all

**If macOS Blocks the App:**

- Go to **System Settings** → **Privacy & Security**
- Scroll to bottom
- Click **"Open Anyway"**

**Permissions Fix (if needed):**

```bash
chmod +x /Applications/czkawka
```

---

## 🚀 Usage

**Launching Czkawka:**

- GUI: Applications → Czkawka (double-click)
- Terminal:

```bash
/Applications/czkawka
```

**Recommended Settings:**

- Mode: Duplicates
- Method: Hash (Blake3 is fastest)
- Threads: 4–8 for Apple Silicon

---

## 🔧 Troubleshooting

⚠️ **Important Warning**

Be careful when using "Similar Images" or "Similar Videos." Manually verify matches before deleting. False positives happen.

### Pixbuf/Image Loading Crashes

**If you get "Unrecognized image file format" or pixbuf errors:**

1. **Clear corrupted configs first:**
   ```bash
   rm -rf "$HOME/Library/Application Support/pl.Qarmin.Czkawka"
   rm -rf "$HOME/Library/Caches/pl.Qarmin.Czkawka"
   ```

2. **Run with detailed error info:**
   ```bash
   cd /Applications
   RUST_BACKTRACE=full ./czkawka
   ```

3. **If still crashing, try a different build:**
   - Download [Nightly ARM build](https://github.com/qarmin/czkawka/releases/tag/Nightly) instead
   - Or try Intel build with Rosetta: [mac_czkawka_gui](https://github.com/qarmin/czkawka/releases/latest/download/mac_czkawka_gui)

4. **Alternative: Homebrew installation (if single executable fails):**
   ```bash
   # Install dependencies first
   brew install gtk4 adwaita-icon-theme ffmpeg librsvg libheif libraw pkg-config
   
   # Then install Czkawka
   brew install --cask czkawka
   ```

### Common Issues

- **App won't open / Can't verify developer**

  - Right-click app → Open
  - Or use "Open Anyway" from System Settings
  - Or re-run `chmod +x /Applications/czkawka`

- **Permission denied / Can't scan everything**

  - Grant Full Disk Access to both Terminal and the Czkawka app

- **App closes when Terminal closes**

  - Launch from Finder instead

- **GTK4 warnings in Terminal**

  - Harmless warnings like:
    ```
    Gtk-WARNING **: Broken accounting of active state...
    ```
    Ignore them.

### Still Having Issues?

If problems persist after trying the above solutions:

1. Enable detailed logging: `RUST_BACKTRACE=full RUST_LOG=debug ./czkawka`
2. Report the issue on [GitHub Issues](https://github.com/qarmin/czkawka/issues) with:
   - Your macOS version
   - Mac chip type (Apple Silicon/Intel)
   - Which build you tried
   - Full terminal output

---

## 💡 Why Use the Single Executable?

- ❌ No installer needed
- 🚪 Portable — 1 file
- ❎ Easy to uninstall/delete
- ⚡ Clean, minimal, fast
- ⬆️ Simple to update (just replace file)

---

## 🆘 Support

- 📚 [qarmin/czkawka on GitHub](https://github.com/qarmin/czkawka)
- ✉️ [Submit an issue](https://github.com/qarmin/czkawka/issues) (bug/feature request)
- ℹ️ Check the README and Wiki for more

---

### 🎉 Done!

Enjoy a faster, cleaner Mac experience. Czkawka does the dirty work so you don't have to.
