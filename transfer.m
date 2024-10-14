% Transfer function för 3.11a)
s=tf('s');
sysG1=2;
sysG2=4/s;
sysG3=parallel(sysG1,sysG2);
sysG4=1/s;
sysG5=series(sysG3,sysG4);
sysG6=1;
sysCL=feedback(sysG5,sysG6,-1)