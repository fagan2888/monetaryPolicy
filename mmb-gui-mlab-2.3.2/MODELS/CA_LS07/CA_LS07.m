%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'CA_LS07';
M_.dynare_version = '4.5.6';
oo_.dynare_version = '4.5.6';
options_.dynare_version = '4.5.6';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('CA_LS07.log');
M_.exo_names = 'epsq';
M_.exo_names_tex = 'epsq';
M_.exo_names_long = 'epsq';
M_.exo_names = char(M_.exo_names, 'epspi_star');
M_.exo_names_tex = char(M_.exo_names_tex, 'epspi\_star');
M_.exo_names_long = char(M_.exo_names_long, 'epspi_star');
M_.exo_names = char(M_.exo_names, 'epsz');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsz');
M_.exo_names_long = char(M_.exo_names_long, 'epsz');
M_.exo_names = char(M_.exo_names, 'epsy_star');
M_.exo_names_tex = char(M_.exo_names_tex, 'epsy\_star');
M_.exo_names_long = char(M_.exo_names_long, 'epsy_star');
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.endo_names = 'y';
M_.endo_names_tex = 'y';
M_.endo_names_long = 'y';
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names_long = char(M_.endo_names_long, 'R');
M_.endo_names = char(M_.endo_names, 'pi');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi');
M_.endo_names_long = char(M_.endo_names_long, 'pi');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names_long = char(M_.endo_names_long, 'z');
M_.endo_names = char(M_.endo_names, 'deltaq');
M_.endo_names_tex = char(M_.endo_names_tex, 'deltaq');
M_.endo_names_long = char(M_.endo_names_long, 'deltaq');
M_.endo_names = char(M_.endo_names, 'deltay_star');
M_.endo_names_tex = char(M_.endo_names_tex, 'deltay\_star');
M_.endo_names_long = char(M_.endo_names_long, 'deltay_star');
M_.endo_names = char(M_.endo_names, 'y_bar');
M_.endo_names_tex = char(M_.endo_names_tex, 'y\_bar');
M_.endo_names_long = char(M_.endo_names_long, 'y_bar');
M_.endo_names = char(M_.endo_names, 'y_star');
M_.endo_names_tex = char(M_.endo_names_tex, 'y\_star');
M_.endo_names_long = char(M_.endo_names_long, 'y_star');
M_.endo_names = char(M_.endo_names, 'deltae');
M_.endo_names_tex = char(M_.endo_names_tex, 'deltae');
M_.endo_names_long = char(M_.endo_names_long, 'deltae');
M_.endo_names = char(M_.endo_names, 'pi_star');
M_.endo_names_tex = char(M_.endo_names_tex, 'pi\_star');
M_.endo_names_long = char(M_.endo_names_long, 'pi_star');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_75');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_75');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_75');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_79');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_79');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_79');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_83');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_83');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_83');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_110');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_110');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_110');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_114');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_114');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_114');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_118');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_118');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_118');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_145');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_145');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_145');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_149');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_149');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_149');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_153');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_153');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_153');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_2_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_2\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_2_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_2_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_2\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_2_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_13_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_13\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_13_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_13_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_13\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_13_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_13_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_13\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_13_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_14_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_14\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_14_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_10_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_10\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_10_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_12_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_12\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_12_3');
M_.endo_partitions = struct();
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
M_.param_names = char(M_.param_names, 'tau');
M_.param_names_tex = char(M_.param_names_tex, 'tau');
M_.param_names_long = char(M_.param_names_long, 'tau');
M_.param_names = char(M_.param_names, 'alfa');
M_.param_names_tex = char(M_.param_names_tex, 'alfa');
M_.param_names_long = char(M_.param_names_long, 'alfa');
M_.param_names = char(M_.param_names, 'rhoz');
M_.param_names_tex = char(M_.param_names_tex, 'rhoz');
M_.param_names_long = char(M_.param_names_long, 'rhoz');
M_.param_names = char(M_.param_names, 'beta');
M_.param_names_tex = char(M_.param_names_tex, 'beta');
M_.param_names_long = char(M_.param_names_long, 'beta');
M_.param_names = char(M_.param_names, 'kappa');
M_.param_names_tex = char(M_.param_names_tex, 'kappa');
M_.param_names_long = char(M_.param_names_long, 'kappa');
M_.param_names = char(M_.param_names, 'rhoR');
M_.param_names_tex = char(M_.param_names_tex, 'rhoR');
M_.param_names_long = char(M_.param_names_long, 'rhoR');
M_.param_names = char(M_.param_names, 'psi1');
M_.param_names_tex = char(M_.param_names_tex, 'psi1');
M_.param_names_long = char(M_.param_names_long, 'psi1');
M_.param_names = char(M_.param_names, 'psi2');
M_.param_names_tex = char(M_.param_names_tex, 'psi2');
M_.param_names_long = char(M_.param_names_long, 'psi2');
M_.param_names = char(M_.param_names, 'psi3');
M_.param_names_tex = char(M_.param_names_tex, 'psi3');
M_.param_names_long = char(M_.param_names_long, 'psi3');
M_.param_names = char(M_.param_names, 'rhoq');
M_.param_names_tex = char(M_.param_names_tex, 'rhoq');
M_.param_names_long = char(M_.param_names_long, 'rhoq');
M_.param_names = char(M_.param_names, 'rhoy_star');
M_.param_names_tex = char(M_.param_names_tex, 'rhoy\_star');
M_.param_names_long = char(M_.param_names_long, 'rhoy_star');
M_.param_names = char(M_.param_names, 'rhopi_star');
M_.param_names_tex = char(M_.param_names_tex, 'rhopi\_star');
M_.param_names_long = char(M_.param_names_long, 'rhopi_star');
M_.param_names = char(M_.param_names, 'rss');
M_.param_names_tex = char(M_.param_names_tex, 'rss');
M_.param_names_long = char(M_.param_names_long, 'rss');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 38;
M_.param_nbr = 46;
M_.orig_endo_nbr = 15;
M_.aux_vars(1).endo_index = 16;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 17;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 18;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 19;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 20;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 21;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 22;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 23;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 24;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 25;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 3;
M_.aux_vars(10).orig_lead_lag = -1;
M_.aux_vars(11).endo_index = 26;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 3;
M_.aux_vars(11).orig_lead_lag = -2;
M_.aux_vars(12).endo_index = 27;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 14;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 28;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 14;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 29;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 14;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 30;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 15;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 31;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 15;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 32;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 15;
M_.aux_vars(17).orig_lead_lag = -3;
M_.aux_vars(18).endo_index = 33;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 11;
M_.aux_vars(18).orig_lead_lag = -1;
M_.aux_vars(19).endo_index = 34;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 11;
M_.aux_vars(19).orig_lead_lag = -2;
M_.aux_vars(20).endo_index = 35;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 11;
M_.aux_vars(20).orig_lead_lag = -3;
M_.aux_vars(21).endo_index = 36;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 13;
M_.aux_vars(21).orig_lead_lag = -1;
M_.aux_vars(22).endo_index = 37;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 13;
M_.aux_vars(22).orig_lead_lag = -2;
M_.aux_vars(23).endo_index = 38;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 13;
M_.aux_vars(23).orig_lead_lag = -3;
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.linear = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 1;
erase_compiled_function('CA_LS07_static');
erase_compiled_function('CA_LS07_dynamic');
M_.orig_eq_nbr = 15;
M_.eq_nbr = 38;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 24 62;
 0 25 0;
 1 26 63;
 2 27 0;
 3 28 64;
 0 29 65;
 0 30 0;
 4 31 0;
 0 32 0;
 5 33 0;
 6 34 0;
 0 35 0;
 7 36 66;
 8 37 67;
 9 38 68;
 0 39 69;
 0 40 70;
 0 41 71;
 0 42 72;
 0 43 73;
 0 44 74;
 0 45 75;
 0 46 76;
 0 47 77;
 10 48 0;
 11 49 0;
 12 50 0;
 13 51 0;
 14 52 0;
 15 53 0;
 16 54 0;
 17 55 0;
 18 56 0;
 19 57 0;
 20 58 0;
 21 59 0;
 22 60 0;
 23 61 0;]';
M_.nstatic = 4;
M_.nfwrd   = 11;
M_.npred   = 18;
M_.nboth   = 5;
M_.nsfwrd   = 16;
M_.nspred   = 23;
M_.ndynamic   = 34;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:5];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(38, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(46, 1);
M_.NNZDerivatives = [127; 0; -1];
M_.params( 34 ) = 0.31;
tau = M_.params( 34 );
M_.params( 35 ) = 0.11;
alfa = M_.params( 35 );
M_.params( 36 ) = 0.42;
rhoz = M_.params( 36 );
M_.params( 46 ) = 2.52;
rss = M_.params( 46 );
M_.params( 37 ) = exp((-M_.params(46))/400);
beta = M_.params( 37 );
M_.params( 38 ) = 0.32;
kappa = M_.params( 38 );
M_.params( 39 ) = 0.69;
rhoR = M_.params( 39 );
M_.params( 40 ) = 1.3;
psi1 = M_.params( 40 );
M_.params( 41 ) = 0.23;
psi2 = M_.params( 41 );
M_.params( 42 ) = 0.14;
psi3 = M_.params( 42 );
M_.params( 43 ) = 0.31;
rhoq = M_.params( 43 );
M_.params( 44 ) = 0.97;
rhoy_star = M_.params( 44 );
M_.params( 45 ) = 0.46;
rhopi_star = M_.params( 45 );
thispath = cd;                                                       
cd('..');                                                            
load policy_param.mat; 
for i=1:33
deep_parameter_name = M_.param_names(i,:);
eval(['M_.params(i) = ' deep_parameter_name ' ;'])
end
cd(thispath);                                                     	 
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1.5625;
M_.Sigma_e(2, 2) = 4;
M_.Sigma_e(3, 3) = 0.7055999999999999;
M_.Sigma_e(4, 4) = 1.6641;
M_.Sigma_e(5, 5) = 0;
save('CA_LS07_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('CA_LS07_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('CA_LS07_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('CA_LS07_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('CA_LS07_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('CA_LS07_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('CA_LS07_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
