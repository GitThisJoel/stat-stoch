close all

addpath("all_files") 
load data

plot([data1 data2 data3]);

m1 = mean(data1);
m2 = mean(data2); 
m3 = mean(data3);

ci1 = conf_int(data1);
ci2 = conf_int(data2);
ci3 = conf_int(data3);

% Q3

function ci = conf_int(data)
    var = 0.25;
    SEM = sqrt(var) / sqrt(length(data)); 
    ts = tinv([0.025, 0.975], length(data)-1);
    ci = mean(data) + ts*SEM;
end 