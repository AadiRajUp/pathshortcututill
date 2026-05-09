```
  █████╗  █████╗ ██████╗ ██╗███████╗ ██████╗
 ██╔══██╗██╔══██╗██╔══██╗██║██╔════╝██╔════╝
 ███████║███████║██║  ██║██║███████╗██║
 ██╔══██║██╔══██║██║  ██║██║╚════██║██║
 ██║  ██║██║  ██║██████╔╝██║███████║╚██████╗
 ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝╚══════╝ ╚═════╝
```

> A terminal utility for creating and managing shell shortcuts — built by **Aadi**.

---

## What is aadisc?

`aadisc` is a bash mini-project that makes working with shell shortcuts fast and frictionless. Instead of manually editing your `.bashrc`, you can create, check, show, replace, and remove shortcuts straight from the terminal.

~~The feature list is still expanding~~ Its completed (yaay) and yes, it's purposefully made less versatile than it could be.

This project was also a means for me to learn VIM.
---

## Usage

```bash
aadisc [flag] [args]
```

---

## Flags

| Flag | Description | Usage |
|------|-------------|-------|
| `-n` | Create a new shortcut | `aadisc -n <name> <path>` |
| `-c` | Check if a shortcut already exists | `aadisc -c <name>` |
| `-s` | Show what a given shortcut points to | `aadisc -s <name>` |
| `-r` | Replace an existing shortcut | `aadisc -r <name> <new-path>` |
| `-R` | Remove an existing shortcut | `aadisc -d <name>` |
| `-l` | Lists all the shortcuts | `aadisc -l` |

---

## Examples

**Create a new shortcut**
```bash
aadisc -n projects ~/dev/projects
```

**Check if a shortcut exists**
```bash
aadisc -c projects
```

**See where a shortcut points**
```bash
aadisc -s projects
# → ~/dev/projects
```

**Replace an existing shortcut**
```bash
aadisc -r projects ~/work/projects
```

**Remove a shortcut**
```bash
aadisc -R projects
```

**List all shortcuts**
```bash
aadisc -l
```


---

## Notes

- Developed and maintained by **Aadi**
- Intentionally minimal by design
- ~~More flags and features coming soon~~
- This is considered completed for now
