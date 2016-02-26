clear
clc
stimfolder='images';
files=dir(fullfile(stimfolder,'*.JPEG'));
[filenames{1:size(files,1)}] = deal(files.name);
Nstimuli = size(filenames,2);
filenames2=cell(1,Nstimuli);
filenames2=filenames;
for i = 1:510
%     img = imread(VarName1{i});
    img = imread(fullfile(stimfolder,filenames{i}));
%     filename{i} = strcat(VarName1{i,1}(1:end-4),'mat');
    load(fullfile('eyedata',[filenames2{i}(1:end-5),'.mat']));
    h = figure;
    imshow(img);hold on;
    plot(eyedata(:,1),eyedata(:,2),'r.','MarkerSize',14);
%     saveas(h, VarName1{i}); 
    pause
    close all
%     print(gcf,'-djpeg',VarName1{i})
end