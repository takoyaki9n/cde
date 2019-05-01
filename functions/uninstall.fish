functions -e __cde_on_variable_pwd

if test -e "$CDE_CACHE_DIR"
    echo -s (set_color red) \
        "Remove $CDE_CACHE_DIR to uninstall cde completely." \
        (set_color normal) >/dev/stderr
end

set -e CDE_CACHE_DIR
set -e CDE_CACHE
set -e CDE_CACHE_MAX