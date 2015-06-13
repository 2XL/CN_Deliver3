
close all;
clear
clc


%% Load dataset

datalist = {'data-graphPAJEK-S1000-D4_μ0.1_p00.2_Tmax1000','data-graphPAJEK-S1000-D4_μ0.5_p00.2_Tmax1000', 'data-graphPAJEK-S1000-D4_μ0.9_p00.2_Tmax1000','data-graphPAJEK-S1000-D6_r10_μ0.1_p00.2_Tmax1000', 'data-graphPAJEK-S1000-D6_r10_μ0.5_p00.2_Tmax1000', 'data-graphPAJEK-S1000-D6_r10_μ0.9_p00.2_Tmax1000', 'data-graphPAJEK-S1000-D8_r10_μ0.9_p00.2_Tmax1000','data-graphPAJEK-S100-D6_r10_μ0.1_p00.2_Tmax1000','data-graphPAJEK-S100-D6_r1_μ0.1_p00.2_Tmax1000', 'data-graphPAJEK-S100-D6_r50_μ0.1_p00.2_Tmax1000', 'data-graphPAJEK-S500-D4_r50_μ0.1_p00.2_Tmax1000', 'data-graphPAJEK-S500-D4_r50_μ0.5_p00.2_Tmax1000', 'data-graphPAJEK-S500-D6_r50_μ0.1_p00.2_Tmax1000', 'data-graphPAJEK-S500-D6_r50_μ0.5_p00.2_Tmax1000', 'data-graphPAJEK-S500-D8_r50_μ0.1_p00.2_Tmax1000', 'data-graphPAJEK-S500-D8_r50_μ0.5_p00.2_Tmax1000', 'data-graphPAJEK-S500-D8_r50_μ0.9_p00.2_Tmax1000', 'data-networks-real-airports_UW_r10_μ0.1_p00.2_Tmax1000', 'data-networks-real-airports_UW_μ0.1_p00.2_Tmax1000', 'data-networks-real-football_μ0.1_p00.2_Tmax1000', 'data-networks-real-football_μ0.5_p00.2_Tmax1000', 'data-networks-real-zachary_unwh_μ0.1_p00.2_Tmax1000', 'data-networks-real-zachary_unwh_μ0.5_p00.2_Tmax1000', 'data-networks-real-zachary_unwh_μ0.9_p00.2_Tmax1000', 'data-networks-test-256_4_4_2_15_18_p_r10_μ0.1_p00.2_Tmax1000', 'data-networks-test-256_4_4_2_15_18_p_r10_μ0.5_p00.2_Tmax1000', 'data-networks-test-256_4_4_2_15_18_p_r10_μ0.9_p00.2_Tmax1000','data-networks-test-256_4_4_4_13_18_p_r10_μ0.1_p00.2_Tmax1000', 'data-networks-test-256_4_4_4_13_18_p_r10_μ0.5_p00.2_Tmax1000', 'data-networks-test-256_4_4_4_13_18_p_r10_μ0.9_p00.2_Tmax1000'};


fileName = datalist{1};
fileExtension = '.csv';

file = strcat(fileName,fileExtension);
dataset = importdata(file);
 



%% Hot fix of the result order, put the 3r row to the last row

a = 1:51;
a2  = a([1 3:end 2]);




%% Plot of Simulation Results
figure 
legendary = dataset.rowheaders;
data = dataset.data([2 4:end 3], :);
datat = data.';
plot(datat);
legend(legendary([2 4:end 3]));
title(fileName);
ylabel('Ratio');
xlabel('Step');



%% Plot of infected population ratio related with infection prob
figure 
stepStart = 990;
stepEnd = 999;

temp = dataset.data([2 4:end 3], stepStart:stepEnd);
tempt = temp.'; 
tempm = mean(tempt);
scatter( str2double(cellstr(legendary([2 4:end 3]))), tempm);
title(fileName);
ylabel('Ratio');
xlabel('Prob');
 
 


