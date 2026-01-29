![KernelSU](https://img.shields.io/badge/KernelSU-supported-brightgreen)

# Motorola OTA Notification Blocker (KernelSU)

A clean, systemless KernelSU module that permanently disables Motorola software update notifications by bind-mounting empty directories over OTA components.

No services.  
No background processes.  
No RAM usage.

---

## 🔧 What This Module Does

Motorola OTA components rely on specific system directories to run update checks and display notifications.  
This module **bind-mounts empty directories** over those paths at boot, causing OTA components to silently fail while keeping system paths intact.  

- Safe for system integrity  
- No bootloop risk  
- Fully reversible  

---

## 🧩 Targeted Directories

- /system/etc/nondisable
- /system/priv-app/3c_ota
- /system/product/etc/nondisable
- /system/product/priv-app/3c_ota
- /system/system_ext/etc/nondisable
- /system/system_ext/priv-app/3c_ota


---

## ✅ Benefits

- Silently blocks Motorola OTA notifications  
- Keeps system paths intact  
- Zero runtime overhead (no RAM usage)  
- No background services running  
- Safe to enable/disable at any time  

---

## 📲 Requirements

- Motorola device  
- KernelSU installed  
- Android 11 or higher  

---

## 🚀 Installation

1. Download the module ZIP from the [Releases page](https://github.com/juic3b0x/Motorola-OTA-Blocker-KernelSU/releases)  
2. Open KernelSU → Modules → Install  
3. Select `Motorola-OTA-Blocker-KernelSU.zip`  
4. Reboot  

---

## 🔍 Verification

After reboot, the OTA directories will exist but be empty. The module silently prevents OTA notifications from appearing.

```sh
ls /system/system_ext/priv-app/3c_ota
```

---

## ⚠️ Notes

- This module does **not** delete any system files  
- OTA updates are blocked only while the module is active  
- Safe and fully reversible    

---

## 👤 Author

juic3b0x

---

## 📄 License

MIT License – see [LICENSE](LICENSE)
