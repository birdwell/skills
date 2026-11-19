# Josh Birdwell's Skills

My personal agent skills, in one place, so I can bring them to any machine or tool.

Each skill is a folder with a `SKILL.md`. This works with Claude Code, Cursor, Codex, and any tool that reads that format.

## Skills

| Skill | What it does |
| --- | --- |
| [josh-design-principles](skills/josh-design-principles/SKILL.md) | My design laws for building and reviewing UI. Simplicity first. Design system before code. |

## Install

### Option 1: the skills CLI

```bash
npx skills add birdwell/skills
```

### Option 2: clone and link

```bash
git clone git@github.com:birdwell/skills.git ~/skills
~/skills/scripts/install.sh
```

This links every skill into `~/.claude/skills`, `~/.cursor/skills`, and `~/.codex/skills`. It skips tools you don't have. Run `git pull` later to update everywhere.

Install one skill only:

```bash
~/skills/scripts/install.sh josh-design-principles
```

Copy instead of link:

```bash
MODE=copy ~/skills/scripts/install.sh
```

### Option 3: one skill by hand

Copy `skills/<name>/` into your tool's skills folder.

## Add a new skill

1. Create `skills/<name>/SKILL.md` with `name` and `description` front matter.
2. Run `scripts/install.sh <name>`.
3. Commit and push.

## License

MIT
