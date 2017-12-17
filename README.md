# multiprocessorSimpleRisc

This is a multiprocessor simulator for simple risc instruction set architecture.
It simulates mutiprocessor by executing one instruction of each core in a cyclic fashion.

System design :

Multiple instances of the core, with unique coreID is generated.
There is point to point complete network between NxN processors for sending SEV signals.
To avoid data synchronization problems, processor assumes only single cycle implementation.

Instruction Added for multiprocessor simulation:
        
        1. WFE
        2. SEV
        3. Procid
        
   explaination :
    
        1. SEV :- SEV takes an N bit number  e.g. SEV 10101
                  here core is sending event to cores with core id 4, 2 & 0. (because 0th, 2nd, and 4th bits are 1)
                  
        2. WFE :- WFE has similar pattern. e.g. WFE 10101
                  here core which is executing above instruction is waiting for event from cores with core id 4 ,2 & 0.
                  
        3.Procid:-Procid instrcution takes one argument,core id for which next instruction is being executed.
                   e.g. Procid 2         now next instruction will be executed by core with core id 2.
                   

Note :

        *Currently multiprocessor simulator has 5 cores. Which can be changed in the file simulator/RISC-Simulator-master/include/Global.h      (chnage NUM_CORES)
        *other instrcutions are same as of Simple-RISC ISA.
        *Currently multiprocessor simulator doesn't assume data lock condition.

Developed By :

        Uniprocessor simulator By: - 
                Naman Goyal     (email: 2015csb1021@iitrpr.ac.in)
        Multiprocessor simulator chnages and improvments by :- 
                Girish Kumar    (email: 2016csb1040@iitrpr.ac.in)
                Siddharth Nahar (email: 2016csb1043@iitrpr.ac.in)
        
Supervised By :

        Dr. Neeraj Goel (email: neeraj@iitrpr.ac.in)
