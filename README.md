```
  █████╗  █████╗ ██████╗ ██╗███████╗ ██████╗
 ██╔══██╗██╔══██╗██╔══██╗██║██╔════╝██╔════╝
 ███████║███████║██║  ██║██║███████╗██║
 ██╔══██║██╔══██║██║  ██║██║╚════██║██║
 ██║  ██║██║  ██║██████╔╝██║███████║╚██████╗
 ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝╚══════╝ ╚═════╝
```

> A terminal utility for creating and managing shell aliases — built by **Aadi**.

---

## What is aadisc?

`aadisc` is a bash mini-project that makes working with shell aliases fast and frictionless. Instead of manually editing your `.bashrc`, you can create, check, show, replace, and remove aliases straight from the terminal.

The feature list is still expanding — and yes, it's purposefully made less versatile than it could be.

---

## Usage

```bash
aadisc [flag] [args]
```

---

## Flags

| Flag | Description | Usage |
|------|-------------|-------|
| `-n` | Create a new alias | `aadisc -n <name> <path>` |
| `-c` | Check if an alias already exists | `aadisc -c <name>` |
| `-s` | Show what a given alias points to | `aadisc -s <name>` |
| `-r` | Replace an existing alias | `aadisc -r <name> <new-path>` |
| `-R` | Remove an existing alias | `aadisc -d <name>` |

---

## Examples

**Create a new alias**
```bash
aadisc -n projects ~/dev/projects
```

**Check if an alias exists**
```bash
aadisc -c projects
```

**See where an alias points**
```bash
aadisc -s projects
# → ~/dev/projects
```

**Replace an existing alias**
```bash
aadisc -r projects ~/work/projects
```

**Remove an alias**
```bash
aadisc -d projects
```

---

## Notes

- Developed and maintained by **Aadi**
- Intentionally minimal by design
- More flags and features coming soon
