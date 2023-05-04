clc;clear;close;
file_sst="D:\OneDrive\海洋要素计算\HAN_Marine_element\WORK2\HadISST_sst.nc\HadISST_sst.nc";
% a=ncinfo(file_sst);
% a.Variables.Name
sst_o=ncread(file_sst,'sst');
lat_o=ncread(file_sst,'latitude');
lon_o=ncread(file_sst,'longitude');
sst_o(sst_o<-999)=nan;
time=datetime(ncread(file_sst,'time') + datenum('1-jan-1870'),'ConvertFrom','datenum');
lonind1=lon_o>90;
lonind2=lon_o<-90;
latind=(lat_o>=0)&(lat_o<=50);
sst=[sst_o(lonind1,latind,:);sst_o(lonind2,latind,:)];
lon=[lon_o(lonind1);lon_o(lonind2)+360];
lat=lat_o(latind);
[Lon,Lat]=meshgrid(lon,lat);
contourf(Lon,Lat,sst(:,:,1)',100,'LineColor','none')
colormap jet;
clearvars -except sst lat lon time;
a=eof(sst);