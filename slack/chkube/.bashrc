function kube_target {
  if [[ ! -z ${KUBE_TARGET} ]]; then
    echo -n "k:${KUBE_TARGET} "
  fi
}

# current cluster in prompt
export PS1="\$(kube_target)\W \$ "