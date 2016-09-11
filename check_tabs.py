#!/usr/bin/python

import sys
import os
import re
import subprocess

root = os.environ['ELC411_ROOT']
os.chdir(root)

with open('_pf') as fp:
    for line in fp:
        
        m = re.search( "(.*)\n", line )

        line = m.group(1)
        
        m = re.search( "\./([a-zA-z0-9]*)/(.*)", line )
        if m:
            usr  = m.group(1)
            fn   = m.group(2)
            
            with open(line) as fp_dot_c:
                bad = 0
                for c_line in fp_dot_c:
                    m = re.search( "\t", c_line )
                    if m:
                        bad = 1
                        break
            if bad:
                print "%16s, %95s: BAD"%(usr,fn)
            else:
                print "%16s, %95s: GOOD"%(usr,fn)
        