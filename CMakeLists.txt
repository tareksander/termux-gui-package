cmake_minimum_required(VERSION 3.18)
project(termux-gui-package)

set(icons files)

foreach(icon ${icons})
    execute_process(COMMAND base64 OUTPUT_VARIABLE ${icon}-icon INPUT_FILE icons/${icon}.png)
endforeach()

set(files dialog files lockscreen-notes pkg shell view)

foreach(file ${files})
    configure_file(scripts/termux-gui-${file}.in scripts/termux-gui-${file} @ONLY)
    install(PROGRAMS scripts/termux-gui-${file} DESTINATION BIN)
endforeach()


