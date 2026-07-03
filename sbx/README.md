# Usage

## Sandbox for copilot

```bash
sbx run copilot --name copilot-test
```

## Set secret in sbx

```bash
echo "$(gh auth token)" | sbx secret set -g github
```

## Delete and recreate sandbox - step one

```bash
sbx rm copilot-test
```

## Clone git repository (only commited files in the clone)

```bash
sbx run --clone copilot --name copilot-github-clone
```

## Commit all changes with copilot in sandbox (worktrees used)

```bash
git fetch sandbox-github-clone
git checkout sandbox-github-clone/main
```

## List network all policies

```bash
sbx policy ls network
```

## Add a global policy

```bash
sbx policy allow network -g eslint.org
```

## Remove a global policy

```bash
sbx policy rm network -g --resource eslint.org
```

## Run a custom sandbox spec (pi-agent)

```bash
sbx run pi --kit ./sbx/pi;
```

## Add skills + provider to custom sandbox (pi-agent)

```bash
sbx kit add pi-pi-web-app-demo ./sbx/skills
sbx kit add pi-pi-web-app-demo ./sbx/pi-lm-studio
```

## Add skills to custom sandbox (pi-agent)

```bash
sbx run pi --kit "git+https://github.com/flippii/dotfiles.git#dir=sbx/pi" --kit "git+https://github.com/flippii/dotfiles.git#dir=sbx/skills" 
```