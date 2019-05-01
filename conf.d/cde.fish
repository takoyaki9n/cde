if test -z "$CDE_CACHE"
    if test -n "$XDG_CACHE_HOME"
        set -U CDE_CACHE_DIR "$XDG_CACHE_HOME/cde"
    else
        set -U CDE_CACHE_DIR "$HOME/.cache/cde"
    end
    set -U CDE_CACHE "$CDE_CACHE_DIR/cache"
end

if test ! -f "$CDE_CACHE"
    if test ! -d "$CDE_CACHE_DIR"
        mkdir -p "$CDE_CACHE_DIR"
    end
    touch "$CDE_CACHE"
end

if test -z "$CDE_CACHE_MAX"
    set -U CDE_CACHE_MAX 100
end

function __cde_on_variable_pwd -v PWD
    __cde_update
end
