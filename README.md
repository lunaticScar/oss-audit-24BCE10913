# 🐧 OSS Audit — Bash Scripts
**Author:** Shreshth Awasthi | **Roll No:** 24BCE10913 | **Course:** Open Source Software | **Software:** Python

---

## 📁 Files
```
├── script1_system_identity.sh       # System Identity Report
├── script2_foss_inspector.sh        # FOSS Package Inspector
├── script3_disk_permission.sh       # Disk & Permission Auditor
├── script4_log_analyzer.sh          # Log File Analyzer
└── script5_manifesto_generator.sh   # Python Manifesto Generator
```

---

## ⚙️ Prerequisites
Linux/Ubuntu system with `bash`, `python3`, `lsb_release`, and standard tools (`awk`, `grep`, `du`) installed.

---

## 🚀 Setup — Make Scripts Executable
```bash
chmod +x *.sh
```

---

## 📜 Scripts — How to Run & What They Do

### Script 1 — System Identity Report
```bash
./script1_system_identity.sh
```
Collects and prints system info: kernel version (`uname -r`), logged-in user (`whoami`), uptime (`uptime -p`), home directory (`$HOME`), distro name (`lsb_release`), and current date. All values are stored in variables and printed in a formatted banner.

---

### Script 2 — FOSS Package Inspector
```bash
./script2_foss_inspector.sh
```
Checks if `python3` is installed using `command -v`. If found, prints its version and path (`which`). A `case` statement then prints a short description of the package. The `PACKAGE` variable at the top can be changed to inspect `git`, `nginx`, etc.

---

### Script 3 — Disk & Permission Auditor
```bash
./script3_disk_permission.sh
```
Loops through key directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`). For each, it extracts permissions + owner using `ls -ld | awk` and disk usage using `du -sh`. Also checks if Python's user package directory (`~/.local/lib`) exists and shows its permissions.

---

### Script 4 — Log File Analyzer
```bash
# Basic usage (searches for "python" by default)
./script4_log_analyzer.sh /var/log/syslog

# Custom keyword
./script4_log_analyzer.sh /var/log/syslog error

# Test with a sample log
echo -e "Python started\nRunning python3\nDone" > test.log
./script4_log_analyzer.sh test.log python
```
Takes a log file path and optional keyword (defaults to `python`) as arguments. Validates the file exists, waits in a loop if it's empty, then reads it line by line counting keyword matches with `grep -iq`. Prints the count and last 5 matching lines.

---

### Script 5 — Python Manifesto Generator
```bash
./script5_manifesto_generator.sh
```
Prompts for three inputs (`read -p`): favorite library, one word for the community, and a project idea. Inserts them into a manifesto template and saves it to `python_manifesto_<username>.txt` using `>` and `>>`. Prints the result with `cat`.

---

## 🔑 Key Bash Concepts Used

| Concept | Example |
|--------|---------|
| Command substitution | `KERNEL=$(uname -r)` |
| Default argument | `${2:-"python"}` |
| Array + for loop | `for DIR in "${DIRS[@]}"` |
| Case statement | `case $PACKAGE in python3) ... esac` |
| Arithmetic | `COUNT=$((COUNT + 1))` |
| File write/append | `echo "text" > file` / `>> file` |

---

## 🪪 License
[MIT License](https://opensource.org/licenses/MIT) — Submitted for academic purposes.
