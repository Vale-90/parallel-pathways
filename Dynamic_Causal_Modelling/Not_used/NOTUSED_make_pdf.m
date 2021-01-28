%% Make a probability density function for

mu_PAG2RVM = BPA.Ep.A(4, 2);
mu_RVM2PAG = BPA.Ep.A(2, 4);
sigma_PAG2RVM = sqrt(BPA.Cp.A(4, 2));
sigma_RVM2PAG = sqrt(BPA.Cp.A(2, 4));


x = -0.01:0.001:0.1;
 
  
pd_PAG2RVM = makedist('Normal', mu_PAG2RVM, sigma_PAG2RVM);
y_PAG2RVM = pdf(pd_PAG2RVM, x);
area(x, y_PAG2RVM, 'FaceColor', 'b',  'EdgeColor', 'b');
hold

pd_PAG2RVM_AA = makedist('Normal', mu_PAG2RVM_AA, sigma_PAG2RVM_AA);
y_PAG2RVM_AA = pdf(pd_PAG2RVM_AA, x); 
area(x, y_PAG2RVM_AA, 'FaceColor', 'm', 'EdgeColor', 'm')
 

%%% RVM2PAG

mu_RVM2PAG_nonAA = BMA_nonAA.Ep.A(2, 4);

mu_RVM2PAG_AA = BMA_AA.Ep.A(2, 4);

sigma_RVM2PAG_nonAA = sqrt(BMA_nonAA.Cp.A(2, 4));

sigma_RVM2PAG_AA = sqrt(BMA_AA.Cp.A(2, 4));

figure
 
  
pd_RVM2PAG_nonAA = makedist('Normal', mu_RVM2PAG_nonAA, sigma_RVM2PAG_nonAA);

y_RVM2PAG_nonAA = pdf(pd_RVM2PAG_nonAA, x);
area(x, y_RVM2PAG_nonAA, 'FaceColor', 'b',  'EdgeColor', 'b');
hold

pd_RVM2PAG_AA = makedist('Normal', mu_RVM2PAG_AA, sigma_RVM2PAG_AA);
 
 
y_RVM2PAG_AA = pdf(pd_RVM2PAG_AA, x);
 
area(x, y_RVM2PAG_AA, 'FaceColor', 'm', 'EdgeColor', 'm')
 
