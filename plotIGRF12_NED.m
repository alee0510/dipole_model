%-------------------------------------------------------------------------%
%This program use to ploting data Earth Magnetic Field at n-altitude
% in Local Tangent Coordinated

%%Plot data magnetic field at x altitude
%   data IGRF12
%   n=13, degree
%   m=0,1,2...,n, orde'
% Source : adabted code with IGRF11 Matlab Code By Charles Rino
%-------------------------------------------------------------------------%

%load data
load B_NED mB_NED N E D
origin_CAS =[-6.888423, 107.611099,48.2000];
rtd=1; %radian to degree

%-------------------------------------------------------------------------%
%Total Flux
%plot 1
figure
imagesc([-180:179],[-89:90],mB_NED') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Total Flux Intensity (F) nT at h=630km in NED')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,mB_NED')
axis xy
hold on
%An equator location of interest
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
colorbar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Total Flux Intensity (F) nT at h=630km in NED')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,mB_NED',20,LINESPEC); 
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% B in North Direction, N
% plot 2
figure
imagesc([-180:179],[-89:90],N') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in North Direction nT at h=630km in NED')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,N')
axis xy
hold on
%An equator location of interest
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
colorbar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in North Direction nT at h=630km in NED')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,N',20,LINESPEC); 
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% B in Easth direction, E
% plot 3
figure
imagesc([-180:179],[-89:90],E') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in East Direction nT at h=630km in NED')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,E')
axis xy
hold on
%An equator location of interest
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
colorbar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in East Direction nT at h=630km in NED')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,E',20,LINESPEC);
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% B in Down direction, D
% plot 4
figure
imagesc([-180:179],[-89:90],D') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in Down Direction nT at h=630km in NED')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,D')
axis xy
hold on
%An equator location of interest
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
colorbar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in Down Direction nT at h=630km in NED')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,D',20,LINESPEC);
%-------------------------------------------------------------------------%