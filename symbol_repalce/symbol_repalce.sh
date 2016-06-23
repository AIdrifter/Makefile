STATIC_LIB=test.a
PREFIX=prefix_

#
# 1.Add perfix to all fuction name and global variable
#
r2-elf-objcopy --prefix-symbols=${prefix}_ ${STATIC_LIB}


#
# 2.repalce oringinal symbol
#

ORIGIN=origin_symbol
NEW=new_symbol

objcopy --redefine-sym=${ORIGIN}=${NEW} ${STATIC_LIB}
