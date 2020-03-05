function __cde_update -a dir -d "Update cde cache file:$CDE_CACHE"
    if test -z "$dir"
        set dir "$PWD"
    end

    if contains "$dir" "$CDE_IGNORE_PATH"
        return 0
    end

    if test -f "$CDE_CACHE"
        if test -z "$CDE_CACHE_MAX"
            set CDE_CACHE_MAX 100
        end

        set -l dirs (cat "$CDE_CACHE" | string match -r -v "^$dir\$") $dir
        string split " " "$dirs" | tail -n "$CDE_CACHE_MAX" > "$CDE_CACHE"
    end
end