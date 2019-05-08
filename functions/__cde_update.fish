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

        # Append $dir to top of $CDE_CACHE
        begin
            echo "$dir"
            cat "$CDE_CACHE" | string match -r -v "^$dir\$"
        end | \
            head -n "$CDE_CACHE_MAX" >"$CDE_CACHE"
    end
end