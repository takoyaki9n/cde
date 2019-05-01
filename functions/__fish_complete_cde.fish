function __fish_complete_cde
    __fish_complete_cd
    if test -f "$CDE_CACHE"
        cat $CDE_CACHE
    end
end