function __fish_complete_cde
    __fish_complete_cd
    if test -f "$CDE_CACHE"
        tac $CDE_CACHE
    end
end