 % load data
 load('liner_e50.mat');
 val_loss_liner = val_loss;loss_liner = loss;val_acc_loss = val_acc;acc_liner = acc;
 load('sysv2_u1200e100d3l2r.mat');
 val_loss_fc = val_loss(1:50);loss_fc = loss(1:50);val_acc_fc = val_acc(1:50);acc_fc = acc(1:50);
 load('res1001e0-50.mat');
 val_loss_1001 = val_loss;loss_1001 = loss;val_acc_1001 = val_acc;acc_1001 = acc;
 load('sys2_GoB50.mat');
 val_loss_GoB50 = val_loss;loss_GoB50 = loss;val_acc_GoB50 = val_acc;acc_GoB50 = acc;
 load('res50.mat')
 val_loss_res50 = val_loss;loss_res50 = loss;val_acc_res50 = val_acc;acc_res50 = acc;
 
 % define axis
 x=1:50;   
 plot(x,[val_loss_liner;val_loss_fc;val_loss_1001;val_loss_GoB50;val_loss_res50],'*-r');  
 hold on  
 plot(x,[loss_liner;loss_fc;loss_1001;loss_GoB50;loss_res50],'--.b');       
 xlabel('The number of epoches')  
 ylabel('Evacuation Loss')  