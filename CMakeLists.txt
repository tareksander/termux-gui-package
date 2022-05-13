cmake_minimum_required(VERSION 3.18)
project(termux-gui-package)


set(manpages termux-gui-shell)


foreach(manpage ${manpages})
    execute_process(COMMAND gzip -f -k man/${manpage}.1)
    install(FILES man/${manpage}.1.gz DESTINATION ${CMAKE_INSTALL_PREFIX}/share/man/man1)
endforeach()

set(icons files distro)

foreach(icon ${icons})
    execute_process(COMMAND base64 OUTPUT_VARIABLE ${icon}-icon INPUT_FILE icons/${icon}.png)
endforeach()

set(distro-icons alpine arch debian fedora manjaro tumbleweed ubuntu void)

foreach(distro-icon ${distro-icons})
    execute_process(COMMAND base64 OUTPUT_VARIABLE distro-${distro-icon}-icon INPUT_FILE icons/distro-icons/${distro-icon}.png)
endforeach()

set(bindings-url "https://github.com/tareksander/termux-gui-python-bindings")

set(files dialog files lockscreen-notes pkg shell view dmenu proot-distro)

foreach(file ${files})
    configure_file(scripts/termux-gui-${file}.in scripts/termux-gui-${file} @ONLY)
    install(PROGRAMS scripts/termux-gui-${file} TYPE BIN)
endforeach()

add_custom_target(deb termux-create-package manifest.json)



