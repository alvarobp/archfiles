if cat /etc/os-release | grep -q "ID=arch" && [[ ! -f "$SSH_AUTH_SOCK" ]]; then
  export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi
ssh-add -A 2>/dev/null
