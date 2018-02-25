./autogen.sh
INSTALLDIR=~/Downloads/acinstall           # Set installdir to the parent folder, subfolder install
SYSTEMCPATH=~/Downloads/systemcinstall     # Where we previously installed SystemC
./configure --prefix=$INSTALLDIR --with-systemc=$SYSTEMCPATH
make
make install
source env.sh         # Configure your PATH environment
cd ..                 # Return to prev dir
acsim -h              # Check if it works
