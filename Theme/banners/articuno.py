# -*- coding: utf-8 -*-
# coding=utf-8
import socket,struct,time,os,sys

def slowprint(s):
    for c in s + '\n':
        sys.stdout.write(c)
        sys.stdout.flush()
        time.sleep(0.1 / 100)


logo = """\x1b[1;36m
                                     
            ;;                                                   
            Cssr                                   .:;risr       
            ,7rsF                               ;vCtYrr;;        
           ;l7s;rP;                          rlUFL7i7r;rF.       
            YrYETr#s                      .3kFsiYvlr;;rr.        
          .: rr73irmS                    :@F7rrirrrv7;:;         
          rsr:rl7rrvb                    #U;rrr7Tsv;;;rY.        
          ,rvr;vC7rFS          ;        r#;rrrrrrir7rrrr         
          7YrT57rrrZ;        v@s        #Lrr7r7v5Y;;;;Yi         
           :rrrT7rr6     : 38@:   .:   rHrrrrr;;rrrirY;          
           Tr7Ls7;TE    #8m8@l.s@@a;   Dsr7rr7LL5vrrvS,          
           ,;rr7r;s3   r@6mkZ#@87.    ;#rrrrr7r7;;LL;            
           7rris7rZS    @@@ClCZ       FSrrrrvTssLL5              
           ;.;Yt7iT8T  rakZY;rl       #Y;rr7v7r;,.               
            mXPUUlLs@S  kHir7YL    :5Xtrrrr7T;                   
            . l@PEs5s#X rrr7s37  rm657r7rLssvvri7.               
              :;Lmk33sb@.   lSFrFksr7r7riv37lttl7                
                UDXHHkZ, ,.  tLZSr;rrrrYr3sr.;r;                 
                 Srsm8, ,,, .;Yr7r77TirZt7sY:                    
                    .r ..,. .7sltYrU75rZC;T;       :;;;;;:       
                    r:  ....:U5tFr;rY;.r.      ;F6DkPXHD8@@#U;   
                    r:.,.::,7k77YFi .        r88U3st3aFUC33UXbmr 
                    .r.,,;:;XTrrrr5         6@Xsll5CZFPmZXD6##@@L
                     rr,;;r33r;rrrs;      ;@@FsFZFU6b#l m@@#HHb@@
                      6s.rmisrrrrrs,    ;P@mXmDDb8@Zr   @@@mHm##@
                       #PZbFXD5vYYX;.;3@@@HH#@@@#s.    7@86Hk6bD@
                        r#E#5rtalF@@@@@@@@@@@ms:      r@bkEEm6@@k
                         .@@   7@F ;7s3Fsvr:         l@@DEEEPb#@ 
                          @3    U@                 r@@8PmZmH#8@; 
                         ZL     ;8              ;F@@@DEXZk6b@#   
                        tX      a:        .;7C#@@@bEXZm6bb@@l    
                    :CC3FU7 .7lUm35F33FH8@@@@@HmFUSaX6H@@@F.     
                   v@FU3: rU6ZaSFD@8@@@@@@@88bb###8#bDH3r        
                   Ht;5  ZZCCEFSST:      ..::r;rrrr;,            
                   ;.L: HU5FmXr7T                                
                       ;@EF#Sl 53                                
                        @@; r: TT                                
                         @m                                
                                     
\x1b[00m"""

def show():
	os.system('clear')
	slowprint(logo)

show()

