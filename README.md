# How to run my code

Before you run my program, please make sure you have the *openmp* library.

Check if you have by runing: 

        sudo apt list libomp-dev

If you do not have this library, install it by runing:

        sudo apt update
        sudo apt install libomp-dev

All the output of the following exexcution can be found in images/screenshots folder

* run my q1 code(very very slow):

        make q1
        make q1-avg

* run my q2 code(very slow):

        make q2

* run my q4 code(kind slow):

        make q4

* generate all the plots(fast),  all the output of make draw can be found in imgaes folder
:

        make draw
        

* clean all files(fast):

        make clean

