# multiprocessorSimpleRisc

Developed By :
        Naman Goyal     (email: 2015csb1021@iitrpr.ac.in)
        Girish Kumar    (email: 2016csb1040@iitprp.ac.in)
        Siddharth Nahar (email: 2016csb1043@iitrpr.ac.in)
Supervised By :
        Dr. Neeraj Goel (email: neeraj@iitrpr.ac.in)


This is a multiprocessor simulator for simple risc instruction set architecture.
It simulates mutiprocessor by executing one instruction of each core in a cyclic fashion.

System design :
    Multiple instances of the core, with unique coreID is generated.
There is point to point complete network between NxN processors for sending SEV signals.
To avoid data synchronization problems, processor assumes only single cycle implementation.
------------------------------------------------------------------------------------------

*Note :
  Currently multiprocessor simulator has 5 cores. Which can be changed in the file simulator/RISC-Simulator-master/include/Global.h
  (chnage NUM_CORES)
