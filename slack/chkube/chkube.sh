#!/bin/bash

KUBES=~/.kubes

case "$1" in
        clear)
                unset KUBECONFIG
                ;;
        info)
                echo "KUBECONFIG=${KUBECONFIG}"
                ;;
        list)
                ls ${KUBES}
                ;;
        *)
                if [[ -d ${KUBES}/$1 && -e ${KUBES}/${1}/env ]]; then
                        cat ${KUBES}/${1}/env
                else
                        echo "Usage: ${0} {list|clear|name}"

                        if [[ -z ${KUBECONFIG} ]]; then
                                echo "KUBECONFIG not set"
                        fi

                        exit 1
                fi
esac