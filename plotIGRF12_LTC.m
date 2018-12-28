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
load B_LTC03 mB Br Bt Bp
origin_CAS =[-6.888423, 107.611099,48.2000];
rtd=1; %radian to degree

%-------------------------------------------------------------------------%
%Total Flux
%plot 1
figure
imagesc([-180:179],[-89:90],mB') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Total Flux Intensity (F) nT at h=630km in LTC')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,mB')
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
title('Total Flux Intensity (F) nT at h=630km in LTC')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,mB',20,LINESPEC); 
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% B in radial Direction  
% plot 2
figure
imagesc([-180:179],[-89:90],Br') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in Radial Direction nT at h=630km in LTC')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,Br')
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
title('Flux in Radial Direction nT at h=630km in LTC')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,Br',20,LINESPEC); 
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% B in teta direction or latitude
% plot 3
figure
imagesc([-180:179],[-89:90],Bt') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in teta Direction nT at h=630km in LTC')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,Bt')
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
title('Flux in teta Direction nT at h=630km in LTC')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,Bt',20,LINESPEC);
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
% B in phi direction or longitude
% plot 4
figure
imagesc([-180:179],[-89:90],Bp') %image scale, B'=transpose(B)
axis xy
colorbar %show color bar
xlabel('Longitude [deg]')
ylabel('Latitude [deg]')
title('Flux in phi Direction nT at h=630km in LTC')
hold on
txt1='  \leftarrow Gedung CAS';
plot(origin_CAS(2)*rtd, origin_CAS(1)*rtd,'pr')
text(origin_CAS(2)*rtd, origin_CAS(1)*rtd,txt1)
Blong=-180:179;
Blat=-89:90;
figure
imagesc(Blong,Blat,Bp')
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
title('Flux in phi Direction nT at h=630km in LTC')
LINESPEC='w';
hold on
[cs,h]=contour(Blong,Blat,Bp',20,LINESPEC);
%-------------------------------------------------------------------------%