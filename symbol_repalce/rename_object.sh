#/bin/bash

PREFIX=hook_perfix

# Rename all *.o to _PREFIX*.o
# rename -v "s/\.o$/\_PR30.o/" *.o
# lose $/ in make file so let script be excutred outside
for f in ./obj/*.o; do
    len=${#f}
    substr=${f:0:$len-2}
    mv $f ${substr}_$PREFIX.o
done



