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
load B_GEO mB_GEO Bx By Bz
origin_CAS =[-6.888423, 107.611099,48.2000];
rtd=1; %radian to degree

%-------------------------------------------------------------------------%
%Total Flux
%plot 1
figure
imagesc([-180:179],[-89:90],mB_GEO') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Total Flux Intensity (F) nT at h=630km in Geocentric')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,mB_GEO')
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
title('Total Flux Intensity (F) nT at h=630km in Geocentric')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,mB_GEO',20,LINESPEC); 
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% B in x Direction, Bx
% plot 2
figure
imagesc([-180:179],[-89:90],Bx') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in X Direction nT at h=630km in Geocentric')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,Bx')
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
title('Flux in X Direction nT at h=630km in Geocentric')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,Bx',20,LINESPEC); 
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% B in Y direction, By
% plot 3
figure
imagesc([-180:179],[-89:90],By') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in Y Direction nT at h=630km in Geocentric')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,By')
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
title('Flux in Y Direction nT at h=630km in Geocentric')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,By',20,LINESPEC);
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% B in Z direction, Bz
% plot 4
figure
imagesc([-180:179],[-89:90],Bz') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in Z Direction nT at h=630km in Geocentric')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,Bz')
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
title('Flux in Z Direction nT at h=630km in Geocentric')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,Bz',20,LINESPEC);
%-------------------------------------------------------------------------%