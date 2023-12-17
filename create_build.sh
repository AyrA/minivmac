chmod a+x setup_t
rm build.sh
./setup_t -t wx64 -hres 512 -vres 342 -depth 0 -magnify 1 -mf 2 -sound 1 -iid 1 -speed z -bg 1 -im 1 -e mvc -maintainer AyrA -homepage https://github.com/AyrA/minivmac > build.sh
chmod a+x build.sh
./build.sh
make clean
make

