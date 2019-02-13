%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'NK_RW06';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('NK_RW06.log');
M_.exo_names = 'u';
M_.exo_names_tex = 'u';
M_.exo_names_long = 'u';
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.endo_names = 'x';
M_.endo_names_tex = 'x';
M_.endo_names_long = 'x';
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi');
M_.endo_names_long = char(M_.endo_names_long, 'pi');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names_long = char(M_.endo_names_long, 'R');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_71');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_71');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_71');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_75');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_75');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_75');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_79');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_79');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_79');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_106');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_106');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_106');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_110');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_110');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_110');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_114');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_114');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_114');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_1_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_1\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_1_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_1_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_1\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_1_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_6_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_6\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_6_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_6_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_6\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_6_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_6_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_6\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_6_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_3_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_3\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_3_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_3_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_3\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_3_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_3_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_3\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_3_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_5_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_5\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_5_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_5_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_5\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_5_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_5_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_5\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_5_3');
M_.param_names = 'cofintintb1';
M_.param_names_tex = 'cofintintb1';
M_.param_names_long = 'cofintintb1';
M_.param_names = char(M_.param_names, 'cofintintb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb2');
M_.param_names_long = char(M_.param_names_long, 'cofintintb2');
M_.param_names = char(M_.param_names, 'cofintintb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb3');
M_.param_names_long = char(M_.param_names_long, 'cofintintb3');
M_.param_names = char(M_.param_names, 'cofintintb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintintb4');
M_.param_names_long = char(M_.param_names_long, 'cofintintb4');
M_.param_names = char(M_.param_names, 'cofintinf0');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinf0');
M_.param_names_long = char(M_.param_names_long, 'cofintinf0');
M_.param_names = char(M_.param_names, 'cofintinfb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb1');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb1');
M_.param_names = char(M_.param_names, 'cofintinfb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb2');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb2');
M_.param_names = char(M_.param_names, 'cofintinfb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb3');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb3');
M_.param_names = char(M_.param_names, 'cofintinfb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinfb4');
M_.param_names_long = char(M_.param_names_long, 'cofintinfb4');
M_.param_names = char(M_.param_names, 'cofintinff1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff1');
M_.param_names_long = char(M_.param_names_long, 'cofintinff1');
M_.param_names = char(M_.param_names, 'cofintinff2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff2');
M_.param_names_long = char(M_.param_names_long, 'cofintinff2');
M_.param_names = char(M_.param_names, 'cofintinff3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff3');
M_.param_names_long = char(M_.param_names_long, 'cofintinff3');
M_.param_names = char(M_.param_names, 'cofintinff4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintinff4');
M_.param_names_long = char(M_.param_names_long, 'cofintinff4');
M_.param_names = char(M_.param_names, 'cofintout');
M_.param_names_tex = char(M_.param_names_tex, 'cofintout');
M_.param_names_long = char(M_.param_names_long, 'cofintout');
M_.param_names = char(M_.param_names, 'cofintoutb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb1');
M_.param_names = char(M_.param_names, 'cofintoutb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb2');
M_.param_names = char(M_.param_names, 'cofintoutb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb3');
M_.param_names = char(M_.param_names, 'cofintoutb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutb4');
M_.param_names = char(M_.param_names, 'cofintoutf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf1');
M_.param_names = char(M_.param_names, 'cofintoutf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf2');
M_.param_names = char(M_.param_names, 'cofintoutf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf3');
M_.param_names = char(M_.param_names, 'cofintoutf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutf4');
M_.param_names = char(M_.param_names, 'cofintoutp');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutp');
M_.param_names_long = char(M_.param_names_long, 'cofintoutp');
M_.param_names = char(M_.param_names, 'cofintoutpb1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb1');
M_.param_names = char(M_.param_names, 'cofintoutpb2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb2');
M_.param_names = char(M_.param_names, 'cofintoutpb3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb3');
M_.param_names = char(M_.param_names, 'cofintoutpb4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpb4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpb4');
M_.param_names = char(M_.param_names, 'cofintoutpf1');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf1');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf1');
M_.param_names = char(M_.param_names, 'cofintoutpf2');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf2');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf2');
M_.param_names = char(M_.param_names, 'cofintoutpf3');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf3');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf3');
M_.param_names = char(M_.param_names, 'cofintoutpf4');
M_.param_names_tex = char(M_.param_names_tex, 'cofintoutpf4');
M_.param_names_long = char(M_.param_names_long, 'cofintoutpf4');
M_.param_names = char(M_.param_names, 'std_r_');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_');
M_.param_names_long = char(M_.param_names_long, 'std_r_');
M_.param_names = char(M_.param_names, 'std_r_quart');
M_.param_names_tex = char(M_.param_names_tex, 'std\_r\_quart');
M_.param_names_long = char(M_.param_names_long, 'std_r_quart');
M_.param_names = char(M_.param_names, 'coffispol');
M_.param_names_tex = char(M_.param_names_tex, 'coffispol');
M_.param_names_long = char(M_.param_names_long, 'coffispol');
M_.param_names = char(M_.param_names, 'sigma');
M_.param_names_tex = char(M_.param_names_tex, 'sigma');
M_.param_names_long = char(M_.param_names_long, 'sigma');
M_.param_names = char(M_.param_names, 'eta');
M_.param_names_tex = char(M_.param_names_tex, 'eta');
M_.param_names_long = char(M_.param_names_long, 'eta');
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'omega');
M_.param_names_tex = char(M_.param_names_tex, 'omega');
M_.param_names_long = char(M_.param_names_long, 'omega');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, 'kappa');
M_.param_names_long = char(M_.param_names_long, 'kappa');
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 24;
M_.param_nbr = 39;
M_.orig_endo_nbr = 7;
M_.aux_vars(1).endo_index = 8;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 9;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 10;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 11;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 12;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 13;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 14;
M_.aux_vars(7).type = 1;
M_.aux_vars(7).orig_index = 2;
M_.aux_vars(7).orig_lead_lag = -1;
M_.aux_vars(8).endo_index = 15;
M_.aux_vars(8).type = 1;
M_.aux_vars(8).orig_index = 2;
M_.aux_vars(8).orig_lead_lag = -2;
M_.aux_vars(9).endo_index = 16;
M_.aux_vars(9).type = 1;
M_.aux_vars(9).orig_index = 7;
M_.aux_vars(9).orig_lead_lag = -1;
M_.aux_vars(10).endo_index = 17;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 7;
M_.aux_vars(10).orig_lead_lag = -2;
M_.aux_vars(11).endo_index = 18;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 7;
M_.aux_vars(11).orig_lead_lag = -3;
M_.aux_vars(12).endo_index = 19;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 4;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 20;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 4;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 21;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 4;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 22;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 6;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 23;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 6;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 24;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 6;
M_.aux_vars(17).orig_lead_lag = -3;
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('NK_RW06_static');
erase_compiled_function('NK_RW06_dynamic');
M_.lead_lag_incidence = [
 0 16 40;
 1 17 41;
 0 18 0;
 2 19 0;
 0 20 0;
 3 21 42;
 4 22 43;
 0 23 44;
 0 24 45;
 0 25 46;
 0 26 47;
 0 27 48;
 0 28 49;
 5 29 0;
 6 30 0;
 7 31 0;
 8 32 0;
 9 33 0;
 10 34 0;
 11 35 0;
 12 36 0;
 13 37 0;
 14 38 0;
 15 39 0;]';
M_.nstatic = 2;
M_.nfwrd   = 7;
M_.npred   = 12;
M_.nboth   = 3;
M_.nsfwrd   = 10;
M_.nspred   = 15;
M_.ndynamic   = 22;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(24, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(39, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 78;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
M_.params( 35 ) = 1.5;
sigma = M_.params( 35 );
M_.params( 36 ) = 1;
eta = M_.params( 36 );
M_.params( 37 ) = 0.99;
beta = M_.params( 37 );
M_.params( 38 ) = 0.75;
omega = M_.params( 38 );
M_.params( 39 ) = (1-M_.params(38))*(1-M_.params(38)*M_.params(37))/M_.params(38);
kappa = M_.params( 39 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);       
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 0;
save('NK_RW06_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('NK_RW06_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('NK_RW06_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('NK_RW06_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('NK_RW06_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off