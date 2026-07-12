# Usage [Docker Sandboxes](https://docs.docker.com/ai/sandboxes/)

## Copilot sandbox

### Sandbox for copilot

Create a sandbox for github copilot cli.

```bash
sbx run copilot --name copilot-test
```

### Set secret in sbx

Set the github token as secret - the secret is not visible in the sandbox.

```bash
echo "$(gh auth token)" | sbx secret set -g github
```

### Delete and recreate sandbox - step one

Comamnd to delete a sandbox by name.

```bash
sbx rm copilot-test
```

## Worktree support

### Clone git repository

Create a new worktree. Only commited files are in the clone. 

```bash
sbx run --clone copilot --name copilot-github-clone
```

### Commit all changes with copilot in sandbox (worktrees used)

Fetch the changes from the worktree. Worktree name naming convention.

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

You can add multiple kit's in the command.

```bash
sbx run pi --kit "git+https://github.com/flippii/dotfiles.git#dir=sbx/pi" --kit "git+https://github.com/flippii/dotfiles.git#dir=sbx/skills" --kit "git+https://github.com/flippii/dotfiles.git#dir=sbx/pi-lm-studio"
```