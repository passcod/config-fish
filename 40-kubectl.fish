function kubectl -d "kubectl wrapper that injects --context from KUBE_CONTEXT" -w kubectl
    if set -q KUBE_CONTEXT
        command kubectl --context=$KUBE_CONTEXT $argv
    else
        command kubectl $argv
    end
end

function kctx -d "Set KUBE_CONTEXT for the current shell"
    if test (count $argv) -eq 0
        set -e KUBE_CONTEXT
        echo "Cleared KUBE_CONTEXT"
    else
        set -gx KUBE_CONTEXT $argv[1]
        echo "KUBE_CONTEXT=$KUBE_CONTEXT"
    end
end

function __kctx_contexts
    command kubectl config get-contexts -o name 2>/dev/null
end

complete -c kctx -f -a '(__kctx_contexts)'
