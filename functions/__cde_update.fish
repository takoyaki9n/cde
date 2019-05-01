function __cde_update
    if test "$PWD" = "$HOME"
        exit 0
    end

    if test -f "$CDE_CACHE"
        if test -z "$CDE_CACHE_MAX"
            set CDE_CACHE_MAX 100
        end
        begin
            echo "$PWD"
            grep -v "$PWD" "$CDE_CACHE"
        end | \
            head -n $CDE_CACHE_MAX >$CDE_CACHE
    end
end