![KernelSU](https://img.shields.io/badge/KernelSU-supported-brightgreen)


# Motorola OTA Notification Blocker (KernelSU)

A clean, systemless KernelSU module that permanently disables Motorola software update notifications by bind-mounting empty directories over OTA components.

No services.  
No background processes.  
No RAM usage.

---

## 🔧 What This Does

Motorola ROMs rely on specific system directories for OTA checks and notifications.  
This module replaces those directories with empty bind-mounted directories at boot, causing OTA components to silently fail without crashing or retrying.

The system paths remain present, preventing recovery repairs or integrity checks from triggering.

---

## 🧩 Targeted Paths

- /system/etc/nondisable
- /system/priv-app/3c_ota
- /system/product/etc/nondisable
- /system/product/priv-app/3c_ota
- /system/system_ext/etc/nondisable
- /system/system_ext/priv-app/3c_ota

---

## ✅ Benefits

- No RAM usage (no tmpfs)
- No running services
- No notification spam
- No system partition modification
- Safe to enable/disable
- OTA components remain intact but inert

---

## 📲 Requirements

- Motorola device
- KernelSU installed
- Android 11+

---

## 🚀 Installation

1. Download the module ZIP from Releases
2. Open KernelSU
3. Modules → Install
4. Select ZIP
5. Reboot

---

## 🔍 Verification

After reboot:
Directory should exist and be empty.

```sh
ls /system/system_ext/priv-app/3c_ota
