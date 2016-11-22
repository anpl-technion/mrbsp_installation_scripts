PREFIX=~/prefix
CMAKE_FLAGS="-DCMAKE_INSTALL_PREFIX=$PREFIX -DOMPL_BUILD_DEMOS=OFF -DOMPL_BUILD_PYBINDINGS=OFF -DOMPL_BUILD_PYTESTS=OFF -DOMPL_REGISTRATION=OFF" 
FROM_GIT=True
OMPL_VER="1.2.1"
PROJECT_DIR=~/ANPL/code/3rdparty
PROJECT_NAME=omplapp
SUB_PROJECT_NAME=ompl
GIT_LINK=https://github.com/ompl/omplapp.git
SUB_GIT_LINK=https://github.com/ompl/ompl.git


#from: http://ompl.kavrakilab.org/download.html

sudo rm -rf $PROJECT_DIR/$PROJECT_NAME

cd $PROJECT_DIR
git clone $GIT_LINK $PROJECT_NAME
cd $PROJECT_NAME
git clone $SUB_GIT_LINK

mkdir build
cd build
cmake $CMAKE_FLAGS ..


