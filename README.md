
# oss-audit-24BEC10087

# Open Source Software Audit — Git

This is my audit project for the Open Source Software course. I chose Git as my software and put together this report covering its background, licensing, ethics, and how it fits into the Linux ecosystem. I also wrote five shell scripts as part of the practical component.

## About Me

- **Name:** Ayush Raghav
- **Registration Number:** 24BEC10087
- **Course:** Open Source Software (OSS)

---

## Why Git?

I picked Git because it's something I actually use. Almost every developer does. It's one of the best examples of open-source software that genuinely changed how the world writes code, and I wanted to understand it beyond just the commands.

---

## Part A — Background and Philosophy

### Where Git came from

Git was created by Linus Torvalds in 2005. The Linux kernel project was using a tool called BitKeeper for version control, but when that arrangement fell apart, Torvalds built Git himself in a matter of weeks. His priorities were simple — make it fast, make it distributed, and make it free.

Before Git, most version control systems had a central server. If that server went down, nobody could work. Git changed that by giving every developer a complete copy of the repository. There's no single point of failure.

It took off quickly. GitHub launched in 2008, and within a few years Git had basically become the default. Today it's used everywhere — personal projects, startups, and companies like Google and Microsoft.

### The License

Git is licensed under **GPL v2** (GNU General Public License, version 2) — the same license as the Linux kernel.

The idea behind GPL is that software should stay free. Not free as in no cost, but free as in you can actually do things with it. The four freedoms it protects are:

1. You can run it however you want
2. You can read and study the source code
3. You can change it
4. You can share it with others

The important catch with GPL is that if you modify the software and distribute it, you have to release your changes under GPL too. You can't take open-source code, make improvements, and then lock it down. That's what makes it different from something like the MIT license, which is more permissive and lets companies do pretty much whatever they want including keeping changes private.

### Ethics

Open source is built on the idea that knowledge should be shared. When code is public, anyone can learn from it, audit it for security problems, or build on top of it. That's a genuinely good thing.

But there's a darker side too. Some companies take open-source projects, build profitable products around them, and give nothing back to the community that made those projects possible. The developers who maintain these tools often do it in their spare time for free. That's a real problem, and it's something the open-source community has been wrestling with for years.

The ethical approach is pretty straightforward — if you use open-source software to make money or build something, contribute back where you can. Report bugs, write documentation, submit fixes, or even just sponsor the maintainers.

---

## Part B — Linux and Git

Git lives comfortably in the Linux environment. The main binary sits at `/usr/bin/git`, system-wide config is at `/etc/gitconfig`, and per-user settings go in `~/.gitconfig`. Linux's permission system (read/write/execute for user, group, and others) is what controls who can access and modify repositories on a shared system.

Installing Git on Ubuntu is straightforward:

```bash
sudo apt update
sudo apt install git
```

You can verify the version with:

```bash
git --version
```

---

## The Scripts

I wrote five scripts for this project. Each one covers a different aspect of Linux and shell scripting.

### script1.sh — System Identity Report

This one prints out basic information about the system — kernel version, current user, uptime, date, and distro. Nothing fancy, but it's a good starting point for understanding shell variables and command substitution.

```bash
./script1.sh
```

---

### script2.sh — FOSS Package Inspector

Checks if Git is installed using `dpkg` and prints the version, maintainer, and description if it is. I also added a `case` statement that gives a short description of a few common open-source tools. It demonstrates conditionals and pattern matching.

```bash
./script2.sh
```

---

### script3.sh — Disk and Permission Auditor

Loops through a list of important Linux directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and prints the permissions, owner, and disk usage for each. Also checks if a Git config directory exists under `/etc/git`.

```bash
./script3.sh
```

---

### script4.sh — Log File Analyzer

Takes a log file path and an optional keyword as arguments. It reads through the file line by line, counts how many times the keyword appears, and prints the last five matching lines. The keyword defaults to `error` if you don't provide one.

```bash
./script4.sh /var/log/syslog error
./script4.sh /var/log/auth.log failed
```

---

### script5.sh — Open Source Manifesto Generator

This one's a bit different. It asks you three questions and then writes a short personal manifesto to a text file. More of a fun script, but it covers user input with `read`, output redirection, and working with the date command.

```bash
./script5.sh
```

---

## How to Run Everything

```bash
# Clone the repo
git clone https://github.com/nooblyxmad/oss-audit-24BCY10077-

# Go into the folder
cd oss-audit-24BCY10077-

# Make all scripts executable
chmod +x *.sh

# Run them
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/syslog error
./script5.sh
```

---

## Requirements

- Linux (Ubuntu works best, but any Debian-based distro should be fine)
- Bash
- Git installed (`sudo apt install git`)
- Standard tools like `grep`, `awk`, `du`, `uname` — these come with any Linux install

---

## A Few Notes

All scripts were written and tested on Ubuntu. They don't need root access to run, though `script4.sh` needs read permission on whatever log file you point it at — some logs in `/var/log` are root-only, so keep that in mind.

`script4.sh` needs at least one argument (the log file path). If you run it without one it'll just tell you the file wasn't found.

`script5.sh` saves its output to a file called `manifesto_<yourusername>.txt` in whatever directory you run it from.
