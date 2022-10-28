mkdir ~/.ssh

if [ -n "$SSH_PRIVATE" ]; then
  echo "$SSH_PRIVATE" | base64 -d > ~/.ssh/id_rsa
  chmod 600 ~/.ssh/id_rsa
fi

if [ -n "$SSH_PUBLIC" ]; then
  echo "$SSH_PUBLIC" > ~/.ssh/id_rsa.pub
  chmod 644 ~/.ssh/id_rsa.pub
fi