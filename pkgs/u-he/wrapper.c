// adapted from https://git.sr.ht/~raphi/elf-replace-symbol/tree/master/item/libfprint2-tod1-broadcom/wrapper-lib.c

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static const char store_path[] = "@store_path@/libexec/";
static const unsigned long store_path_len = strlen(store_path);

static const char src_root[] = "%s/.%s/%s/";
static const unsigned long src_root_len = strlen(src_root);

static const char src_data[] = "%s/.%s/%s/Data";
static const unsigned long src_data_len = strlen(src_data);

static const char src_presets[] = "%s/.%s/%s/Presets";
static const unsigned long src_presets_len = strlen(src_presets);

static const char src_tunefiles[] = "%s/.%s/%s/Tunefiles";
static const unsigned long src_tunefiles_len = strlen(src_tunefiles);

static const char src_modules[] = "%s/.%s/%s/Modules";
static const unsigned long src_modules_len = strlen(src_modules);

static const char src_wavetables[] = "%s/.%s/%s/Wavetables";
static const unsigned long src_wavetables_len = strlen(src_wavetables);

int rewrite(char *restrict buffer, size_t bufsz, const char *format, va_list fmt_args) {
    printf("\033[1;34m");
    printf("snprintf: %s -> ", format);

    const char *subpath = &format[src_root_len];
    const unsigned long subpath_len = strlen(subpath);

    char *rewritten = calloc(store_path_len + subpath_len + 1, 1);
    memcpy(rewritten, store_path, store_path_len);
    memcpy(rewritten + store_path_len, subpath, subpath_len);

    // ignore the first 3 format args since we've already rewritten them
    va_arg(fmt_args, char *);
    va_arg(fmt_args, char *);
    va_arg(fmt_args, char *);

    int result = vsnprintf(buffer, bufsz, rewritten, fmt_args);

    free(rewritten);

    printf("%s", buffer);
    printf("\033[0m\n");

    return result;
}

int snprintf_wrapper(char *restrict buffer, size_t bufsz, const char *restrict format, ...) {
    va_list args;
    va_start(args, format);

    int result = 0;

    if ( // ~/.uhe/$plugin/Data: gui assets
        !memcmp(src_data, format, src_data_len)
        // ~/.uhe/$plugin/Presets: factory presets
        // user presets are stored in ~/.uhe/$plugin/UserPresets, no need to rewrite that
        || !memcmp(src_presets, format, src_presets_len)
        // ~/.uhe/$plugin/Tunefiles: synth microtuning presets
        // TODO: figure out how to separate factory and user tunings
        || !memcmp(src_tunefiles, format, src_tunefiles_len)
        // ~/.uhe/$plugin/Modules: some synth components?
        || !memcmp(src_modules, format, src_modules_len)
        // ~/.uhe/$plugin/Wavetables: only used in Hive
        || !memcmp(src_wavetables, format, src_wavetables_len)
        // ~/.uhe/$plugin: user guide and dialog binaries
        // these are in the root dir so we're comparing the whole string rather than just the prefix
        || !strcmp(src_root, format)) {
        result = rewrite(buffer, bufsz, format, args);
    } else {
        result = vsnprintf(buffer, bufsz, format, args);
    }

    va_end(args);
    return result;
}
