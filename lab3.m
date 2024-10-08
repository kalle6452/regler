kp=2.5
ki  =  8;
kd  =  0.1;
Gc  = pid(kp, ki, kd);
sys=tf([1.35*kp],[0.1,1,1.35*kp])
Gcl = feedback(Gc*sys, 1)
Scl = stepinfo(Gcl)
%step(sys)
%S=stepinfo(sys)
stepplot(Gcl)