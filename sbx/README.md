# Usage [Docker Sandboxes](https://docs.docker.com/ai/sandboxes/)

## Copilot sandbox

### Sandbox for copilot

```bash
sbx run copilot --name copilot-test
```

### Set secret in sbx

```bash
echo "$(gh auth token)" | sbx secret set -g github
```

### Delete and recreate sandbox - step one

```bash
sbx rm copilot-test
```

## Worktree support

### Clone git repository (only commited files in the clone)

```bash
sbx run --clone copilot --name copilot-github-clone
```

### Commit all changes with copilot in sandbox (worktrees used)

```bash
git fetch sandbox-github-clone
git checkout sandbox-github-clone/main
```

## Network policies

### List all network policies

```bash
sbx policy ls network
```

### Add a global policy

```bash
sbx policy allow network -g eslint.org
```

### Remove a global policy

```bash
sbx policy rm network -g --resource eslint.org
```

## Custom sandbox

### Run a custom sandbox spec (pi-agent)

```bash
sbx run pi --kit ./sbx/pi;
```

### Add skills + provider to custom sandbox (pi-agent)

Add skills to the sandbox.

```bash
sbx kit add pi-pi-web-app-demo ./sbx/skills
```

Add provider to the sandbox.

```bash
sbx kit add pi-pi-web-app-demo ./sbx/pi-lm-studio
```

### Run a custom sandbox from github (pi-agent)

Add github repository to allowed sources.

```bash
sbx settings set kit.allowedSources '["docker.io/","github.com/flippii/"]'
```

Run the custom kit.

```bash
sbx run pi --kit "git+https://github.com/flippii/dotfiles.git#dir=sbx/pi" --kit "git+https://github.com/flippii/dotfiles.git#dir=sbx/skills" --kit "git+https://github.com/flippii/dotfiles.git#dir=sbx/pi-lm-studio"
```