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
M_.fname = 'NK_AFL15';
M_.dynare_version = '4.5.6';
oo_.dynare_version = '4.5.6';
options_.dynare_version = '4.5.6';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('NK_AFL15.log');
M_.exo_names = 'ua';
M_.exo_names_tex = 'ua';
M_.exo_names_long = 'ua';
M_.exo_names = char(M_.exo_names, 'interest_');
M_.exo_names_tex = char(M_.exo_names_tex, 'interest\_');
M_.exo_names_long = char(M_.exo_names_long, 'interest_');
M_.exo_names = char(M_.exo_names, 'fiscal_');
M_.exo_names_tex = char(M_.exo_names_tex, 'fiscal\_');
M_.exo_names_long = char(M_.exo_names_long, 'fiscal_');
M_.endo_names = 'c';
M_.endo_names_tex = 'c';
M_.endo_names_long = 'c';
M_.endo_names = char(M_.endo_names, 'pai');
M_.endo_names_tex = char(M_.endo_names_tex, 'pai');
M_.endo_names_long = char(M_.endo_names_long, 'pai');
M_.endo_names = char(M_.endo_names, 'rn');
M_.endo_names_tex = char(M_.endo_names_tex, 'rn');
M_.endo_names_long = char(M_.endo_names_long, 'rn');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, 'k');
M_.endo_names_long = char(M_.endo_names_long, 'k');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names_long = char(M_.endo_names_long, 'z');
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names_long = char(M_.endo_names_long, 'y');
M_.endo_names = char(M_.endo_names, 'mc');
M_.endo_names_tex = char(M_.endo_names_tex, 'mc');
M_.endo_names_long = char(M_.endo_names_long, 'mc');
M_.endo_names = char(M_.endo_names, 'n');
M_.endo_names_tex = char(M_.endo_names_tex, 'n');
M_.endo_names_long = char(M_.endo_names_long, 'n');
M_.endo_names = char(M_.endo_names, 'q');
M_.endo_names_tex = char(M_.endo_names_tex, 'q');
M_.endo_names_long = char(M_.endo_names_long, 'q');
M_.endo_names = char(M_.endo_names, 'inv');
M_.endo_names_tex = char(M_.endo_names_tex, 'inv');
M_.endo_names_long = char(M_.endo_names_long, 'inv');
M_.endo_names = char(M_.endo_names, 'rok');
M_.endo_names_tex = char(M_.endo_names_tex, 'rok');
M_.endo_names_long = char(M_.endo_names_long, 'rok');
M_.endo_names = char(M_.endo_names, 'uc');
M_.endo_names_tex = char(M_.endo_names_tex, 'uc');
M_.endo_names_long = char(M_.endo_names_long, 'uc');
M_.endo_names = char(M_.endo_names, 'un');
M_.endo_names_tex = char(M_.endo_names_tex, 'un');
M_.endo_names_long = char(M_.endo_names_long, 'un');
M_.endo_names = char(M_.endo_names, 'Fk');
M_.endo_names_tex = char(M_.endo_names_tex, 'Fk');
M_.endo_names_long = char(M_.endo_names_long, 'Fk');
M_.endo_names = char(M_.endo_names, 'Fn');
M_.endo_names_tex = char(M_.endo_names_tex, 'Fn');
M_.endo_names_long = char(M_.endo_names_long, 'Fn');
M_.endo_names = char(M_.endo_names, 'bk');
M_.endo_names_tex = char(M_.endo_names_tex, 'bk');
M_.endo_names_long = char(M_.endo_names_long, 'bk');
M_.endo_names = char(M_.endo_names, 'd');
M_.endo_names_tex = char(M_.endo_names_tex, 'd');
M_.endo_names_long = char(M_.endo_names_long, 'd');
M_.endo_names = char(M_.endo_names, 'deprat');
M_.endo_names_tex = char(M_.endo_names_tex, 'deprat');
M_.endo_names_long = char(M_.endo_names_long, 'deprat');
M_.endo_names = char(M_.endo_names, 'ra');
M_.endo_names_tex = char(M_.endo_names_tex, 'ra');
M_.endo_names_long = char(M_.endo_names_long, 'ra');
M_.endo_names = char(M_.endo_names, 'br');
M_.endo_names_tex = char(M_.endo_names_tex, 'br');
M_.endo_names_long = char(M_.endo_names_long, 'br');
M_.endo_names = char(M_.endo_names, 'fai');
M_.endo_names_tex = char(M_.endo_names_tex, 'fai');
M_.endo_names_long = char(M_.endo_names_long, 'fai');
M_.endo_names = char(M_.endo_names, 'rd');
M_.endo_names_tex = char(M_.endo_names_tex, 'rd');
M_.endo_names_long = char(M_.endo_names_long, 'rd');
M_.endo_names = char(M_.endo_names, 'crun');
M_.endo_names_tex = char(M_.endo_names_tex, 'crun');
M_.endo_names_long = char(M_.endo_names_long, 'crun');
M_.endo_names = char(M_.endo_names, 'cpai');
M_.endo_names_tex = char(M_.endo_names_tex, 'cpai');
M_.endo_names_long = char(M_.endo_names_long, 'cpai');
M_.endo_names = char(M_.endo_names, 'cf');
M_.endo_names_tex = char(M_.endo_names_tex, 'cf');
M_.endo_names_long = char(M_.endo_names_long, 'cf');
M_.endo_names = char(M_.endo_names, 'rnf');
M_.endo_names_tex = char(M_.endo_names_tex, 'rnf');
M_.endo_names_long = char(M_.endo_names_long, 'rnf');
M_.endo_names = char(M_.endo_names, 'kf');
M_.endo_names_tex = char(M_.endo_names_tex, 'kf');
M_.endo_names_long = char(M_.endo_names_long, 'kf');
M_.endo_names = char(M_.endo_names, 'zf');
M_.endo_names_tex = char(M_.endo_names_tex, 'zf');
M_.endo_names_long = char(M_.endo_names_long, 'zf');
M_.endo_names = char(M_.endo_names, 'yf');
M_.endo_names_tex = char(M_.endo_names_tex, 'yf');
M_.endo_names_long = char(M_.endo_names_long, 'yf');
M_.endo_names = char(M_.endo_names, 'mcf');
M_.endo_names_tex = char(M_.endo_names_tex, 'mcf');
M_.endo_names_long = char(M_.endo_names_long, 'mcf');
M_.endo_names = char(M_.endo_names, 'nf');
M_.endo_names_tex = char(M_.endo_names_tex, 'nf');
M_.endo_names_long = char(M_.endo_names_long, 'nf');
M_.endo_names = char(M_.endo_names, 'qf');
M_.endo_names_tex = char(M_.endo_names_tex, 'qf');
M_.endo_names_long = char(M_.endo_names_long, 'qf');
M_.endo_names = char(M_.endo_names, 'invf');
M_.endo_names_tex = char(M_.endo_names_tex, 'invf');
M_.endo_names_long = char(M_.endo_names_long, 'invf');
M_.endo_names = char(M_.endo_names, 'rokf');
M_.endo_names_tex = char(M_.endo_names_tex, 'rokf');
M_.endo_names_long = char(M_.endo_names_long, 'rokf');
M_.endo_names = char(M_.endo_names, 'ucf');
M_.endo_names_tex = char(M_.endo_names_tex, 'ucf');
M_.endo_names_long = char(M_.endo_names_long, 'ucf');
M_.endo_names = char(M_.endo_names, 'unf');
M_.endo_names_tex = char(M_.endo_names_tex, 'unf');
M_.endo_names_long = char(M_.endo_names_long, 'unf');
M_.endo_names = char(M_.endo_names, 'Fkf');
M_.endo_names_tex = char(M_.endo_names_tex, 'Fkf');
M_.endo_names_long = char(M_.endo_names_long, 'Fkf');
M_.endo_names = char(M_.endo_names, 'Fnf');
M_.endo_names_tex = char(M_.endo_names_tex, 'Fnf');
M_.endo_names_long = char(M_.endo_names_long, 'Fnf');
M_.endo_names = char(M_.endo_names, 'bkf');
M_.endo_names_tex = char(M_.endo_names_tex, 'bkf');
M_.endo_names_long = char(M_.endo_names_long, 'bkf');
M_.endo_names = char(M_.endo_names, 'df');
M_.endo_names_tex = char(M_.endo_names_tex, 'df');
M_.endo_names_long = char(M_.endo_names_long, 'df');
M_.endo_names = char(M_.endo_names, 'depratf');
M_.endo_names_tex = char(M_.endo_names_tex, 'depratf');
M_.endo_names_long = char(M_.endo_names_long, 'depratf');
M_.endo_names = char(M_.endo_names, 'raf');
M_.endo_names_tex = char(M_.endo_names_tex, 'raf');
M_.endo_names_long = char(M_.endo_names_long, 'raf');
M_.endo_names = char(M_.endo_names, 'brf');
M_.endo_names_tex = char(M_.endo_names_tex, 'brf');
M_.endo_names_long = char(M_.endo_names_long, 'brf');
M_.endo_names = char(M_.endo_names, 'faif');
M_.endo_names_tex = char(M_.endo_names_tex, 'faif');
M_.endo_names_long = char(M_.endo_names_long, 'faif');
M_.endo_names = char(M_.endo_names, 'rdf');
M_.endo_names_tex = char(M_.endo_names_tex, 'rdf');
M_.endo_names_long = char(M_.endo_names_long, 'rdf');
M_.endo_names = char(M_.endo_names, 'crunf');
M_.endo_names_tex = char(M_.endo_names_tex, 'crunf');
M_.endo_names_long = char(M_.endo_names_long, 'crunf');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'a');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_names = char(M_.endo_names, 'ug');
M_.endo_names_tex = char(M_.endo_names_tex, 'ug');
M_.endo_names_long = char(M_.endo_names_long, 'ug');
M_.endo_names = char(M_.endo_names, 'inflation');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflation');
M_.endo_names_long = char(M_.endo_names_long, 'inflation');
M_.endo_names = char(M_.endo_names, 'inflationq');
M_.endo_names_tex = char(M_.endo_names_tex, 'inflationq');
M_.endo_names_long = char(M_.endo_names_long, 'inflationq');
M_.endo_names = char(M_.endo_names, 'interest');
M_.endo_names_tex = char(M_.endo_names_tex, 'interest');
M_.endo_names_long = char(M_.endo_names_long, 'interest');
M_.endo_names = char(M_.endo_names, 'output');
M_.endo_names_tex = char(M_.endo_names_tex, 'output');
M_.endo_names_long = char(M_.endo_names_long, 'output');
M_.endo_names = char(M_.endo_names, 'outputgap');
M_.endo_names_tex = char(M_.endo_names_tex, 'outputgap');
M_.endo_names_long = char(M_.endo_names_long, 'outputgap');
M_.endo_names = char(M_.endo_names, 'fispol');
M_.endo_names_tex = char(M_.endo_names_tex, 'fispol');
M_.endo_names_long = char(M_.endo_names_long, 'fispol');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_104');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_104');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_104');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_108');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_108');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_108');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_112');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_112');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_112');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_139');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_139');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_139');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_143');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_143');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_143');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_147');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_147');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_147');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_174');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_174');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_174');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_178');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_178');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_178');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LEAD_182');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LEAD\_182');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LEAD_182');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_1_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_1\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_1_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_1_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_1\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_1_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_52_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_52\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_52_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_52_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_52\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_52_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_52_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_52\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_52_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_53_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_53\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_53_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_53_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_53\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_53_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_53_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_53\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_53_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_51_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_51\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_51_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_51_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_51\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_51_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_51_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_51\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_51_3');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_50_1');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_50\_1');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_50_1');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_50_2');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_50\_2');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_50_2');
M_.endo_names = char(M_.endo_names, 'AUX_ENDO_LAG_50_3');
M_.endo_names_tex = char(M_.endo_names_tex, 'AUX\_ENDO\_LAG\_50\_3');
M_.endo_names_long = char(M_.endo_names_long, 'AUX_ENDO_LAG_50_3');
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
M_.param_names = char(M_.param_names, 'coffispol');
M_.param_names_tex = char(M_.param_names_tex, 'coffispol');
M_.param_names_long = char(M_.param_names_long, 'coffispol');
M_.param_names = char(M_.param_names, 'PSI');
M_.param_names_tex = char(M_.param_names_tex, 'PSI');
M_.param_names_long = char(M_.param_names_long, 'PSI');
M_.param_names = char(M_.param_names, 'calvo');
M_.param_names_tex = char(M_.param_names_tex, 'calvo');
M_.param_names_long = char(M_.param_names_long, 'calvo');
M_.param_names = char(M_.param_names, 'ritcapss');
M_.param_names_tex = char(M_.param_names_tex, 'ritcapss');
M_.param_names_long = char(M_.param_names_long, 'ritcapss');
M_.param_names = char(M_.param_names, 'YoK');
M_.param_names_tex = char(M_.param_names_tex, 'YoK');
M_.param_names_long = char(M_.param_names_long, 'YoK');
M_.param_names = char(M_.param_names, 'IoK');
M_.param_names_tex = char(M_.param_names_tex, 'IoK');
M_.param_names_long = char(M_.param_names_long, 'IoK');
M_.param_names = char(M_.param_names, 'CoY');
M_.param_names_tex = char(M_.param_names_tex, 'CoY');
M_.param_names_long = char(M_.param_names_long, 'CoY');
M_.param_names = char(M_.param_names, 'PAIss');
M_.param_names_tex = char(M_.param_names_tex, 'PAIss');
M_.param_names_long = char(M_.param_names_long, 'PAIss');
M_.param_names = char(M_.param_names, 'css');
M_.param_names_tex = char(M_.param_names_tex, 'css');
M_.param_names_long = char(M_.param_names_long, 'css');
M_.param_names = char(M_.param_names, 'rnss');
M_.param_names_tex = char(M_.param_names_tex, 'rnss');
M_.param_names_long = char(M_.param_names_long, 'rnss');
M_.param_names = char(M_.param_names, 'kss');
M_.param_names_tex = char(M_.param_names_tex, 'kss');
M_.param_names_long = char(M_.param_names_long, 'kss');
M_.param_names = char(M_.param_names, 'zss');
M_.param_names_tex = char(M_.param_names_tex, 'zss');
M_.param_names_long = char(M_.param_names_long, 'zss');
M_.param_names = char(M_.param_names, 'yss');
M_.param_names_tex = char(M_.param_names_tex, 'yss');
M_.param_names_long = char(M_.param_names_long, 'yss');
M_.param_names = char(M_.param_names, 'mcss');
M_.param_names_tex = char(M_.param_names_tex, 'mcss');
M_.param_names_long = char(M_.param_names_long, 'mcss');
M_.param_names = char(M_.param_names, 'nss');
M_.param_names_tex = char(M_.param_names_tex, 'nss');
M_.param_names_long = char(M_.param_names_long, 'nss');
M_.param_names = char(M_.param_names, 'qss');
M_.param_names_tex = char(M_.param_names_tex, 'qss');
M_.param_names_long = char(M_.param_names_long, 'qss');
M_.param_names = char(M_.param_names, 'invss');
M_.param_names_tex = char(M_.param_names_tex, 'invss');
M_.param_names_long = char(M_.param_names_long, 'invss');
M_.param_names = char(M_.param_names, 'rokss');
M_.param_names_tex = char(M_.param_names_tex, 'rokss');
M_.param_names_long = char(M_.param_names_long, 'rokss');
M_.param_names = char(M_.param_names, 'gss');
M_.param_names_tex = char(M_.param_names_tex, 'gss');
M_.param_names_long = char(M_.param_names_long, 'gss');
M_.param_names = char(M_.param_names, 'ucss');
M_.param_names_tex = char(M_.param_names_tex, 'ucss');
M_.param_names_long = char(M_.param_names_long, 'ucss');
M_.param_names = char(M_.param_names, 'unss');
M_.param_names_tex = char(M_.param_names_tex, 'unss');
M_.param_names_long = char(M_.param_names_long, 'unss');
M_.param_names = char(M_.param_names, 'Fkss');
M_.param_names_tex = char(M_.param_names_tex, 'Fkss');
M_.param_names_long = char(M_.param_names_long, 'Fkss');
M_.param_names = char(M_.param_names, 'Fnss');
M_.param_names_tex = char(M_.param_names_tex, 'Fnss');
M_.param_names_long = char(M_.param_names_long, 'Fnss');
M_.param_names = char(M_.param_names, 'bkss');
M_.param_names_tex = char(M_.param_names_tex, 'bkss');
M_.param_names_long = char(M_.param_names_long, 'bkss');
M_.param_names = char(M_.param_names, 'dss');
M_.param_names_tex = char(M_.param_names_tex, 'dss');
M_.param_names_long = char(M_.param_names_long, 'dss');
M_.param_names = char(M_.param_names, 'depratss');
M_.param_names_tex = char(M_.param_names_tex, 'depratss');
M_.param_names_long = char(M_.param_names_long, 'depratss');
M_.param_names = char(M_.param_names, 'rass');
M_.param_names_tex = char(M_.param_names_tex, 'rass');
M_.param_names_long = char(M_.param_names_long, 'rass');
M_.param_names = char(M_.param_names, 'brss');
M_.param_names_tex = char(M_.param_names_tex, 'brss');
M_.param_names_long = char(M_.param_names_long, 'brss');
M_.param_names = char(M_.param_names, 'faiss');
M_.param_names_tex = char(M_.param_names_tex, 'faiss');
M_.param_names_long = char(M_.param_names_long, 'faiss');
M_.param_names = char(M_.param_names, 'rdss');
M_.param_names_tex = char(M_.param_names_tex, 'rdss');
M_.param_names_long = char(M_.param_names_long, 'rdss');
M_.param_names = char(M_.param_names, 'crunss');
M_.param_names_tex = char(M_.param_names_tex, 'crunss');
M_.param_names_long = char(M_.param_names_long, 'crunss');
M_.param_names = char(M_.param_names, 'cpaiss');
M_.param_names_tex = char(M_.param_names_tex, 'cpaiss');
M_.param_names_long = char(M_.param_names_long, 'cpaiss');
M_.param_names = char(M_.param_names, 'XXss');
M_.param_names_tex = char(M_.param_names_tex, 'XXss');
M_.param_names_long = char(M_.param_names_long, 'XXss');
M_.param_names = char(M_.param_names, 'OMP');
M_.param_names_tex = char(M_.param_names_tex, 'OMP');
M_.param_names_long = char(M_.param_names_long, 'OMP');
M_.param_names = char(M_.param_names, 'SIG');
M_.param_names_tex = char(M_.param_names_tex, 'SIG');
M_.param_names_long = char(M_.param_names_long, 'SIG');
M_.param_names = char(M_.param_names, 'PHI');
M_.param_names_tex = char(M_.param_names_tex, 'PHI');
M_.param_names_long = char(M_.param_names_long, 'PHI');
M_.param_names = char(M_.param_names, 'BETTA');
M_.param_names_tex = char(M_.param_names_tex, 'BETTA');
M_.param_names_long = char(M_.param_names_long, 'BETTA');
M_.param_names = char(M_.param_names, 'RHOa');
M_.param_names_tex = char(M_.param_names_tex, 'RHOa');
M_.param_names_long = char(M_.param_names_long, 'RHOa');
M_.param_names = char(M_.param_names, 'ALFA');
M_.param_names_tex = char(M_.param_names_tex, 'ALFA');
M_.param_names_long = char(M_.param_names_long, 'ALFA');
M_.param_names = char(M_.param_names, 'RHOg');
M_.param_names_tex = char(M_.param_names_tex, 'RHOg');
M_.param_names_long = char(M_.param_names_long, 'RHOg');
M_.param_names = char(M_.param_names, 'GY');
M_.param_names_tex = char(M_.param_names_tex, 'GY');
M_.param_names_long = char(M_.param_names_long, 'GY');
M_.param_names = char(M_.param_names, 'OMK');
M_.param_names_tex = char(M_.param_names_tex, 'OMK');
M_.param_names_long = char(M_.param_names_long, 'OMK');
M_.param_names = char(M_.param_names, 'THETA');
M_.param_names_tex = char(M_.param_names_tex, 'THETA');
M_.param_names_long = char(M_.param_names_long, 'THETA');
M_.param_names = char(M_.param_names, 'DELTA');
M_.param_names_tex = char(M_.param_names_tex, 'DELTA');
M_.param_names_long = char(M_.param_names_long, 'DELTA');
M_.param_names = char(M_.param_names, 'EPSI');
M_.param_names_tex = char(M_.param_names_tex, 'EPSI');
M_.param_names_long = char(M_.param_names_long, 'EPSI');
M_.param_names = char(M_.param_names, 'BET');
M_.param_names_tex = char(M_.param_names_tex, 'BET');
M_.param_names_long = char(M_.param_names_long, 'BET');
M_.param_names = char(M_.param_names, 'HH');
M_.param_names_tex = char(M_.param_names_tex, 'HH');
M_.param_names_long = char(M_.param_names_long, 'HH');
M_.param_names = char(M_.param_names, 'vP');
M_.param_names_tex = char(M_.param_names_tex, 'vP');
M_.param_names_long = char(M_.param_names_long, 'vP');
M_.param_names = char(M_.param_names, 'vY');
M_.param_names_tex = char(M_.param_names_tex, 'vY');
M_.param_names_long = char(M_.param_names_long, 'vY');
M_.param_names = char(M_.param_names, 'vQ');
M_.param_names_tex = char(M_.param_names_tex, 'vQ');
M_.param_names_long = char(M_.param_names_long, 'vQ');
M_.param_names = char(M_.param_names, 'vR');
M_.param_names_tex = char(M_.param_names_tex, 'vR');
M_.param_names_long = char(M_.param_names_long, 'vR');
M_.param_names = char(M_.param_names, 'VV');
M_.param_names_tex = char(M_.param_names_tex, 'VV');
M_.param_names_long = char(M_.param_names_long, 'VV');
M_.param_names = char(M_.param_names, 'CR');
M_.param_names_tex = char(M_.param_names_tex, 'CR');
M_.param_names_long = char(M_.param_names_long, 'CR');
M_.param_names = char(M_.param_names, 'a_ss');
M_.param_names_tex = char(M_.param_names_tex, 'a\_ss');
M_.param_names_long = char(M_.param_names_long, 'a_ss');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 78;
M_.param_nbr = 87;
M_.orig_endo_nbr = 55;
M_.aux_vars(1).endo_index = 56;
M_.aux_vars(1).type = 0;
M_.aux_vars(2).endo_index = 57;
M_.aux_vars(2).type = 0;
M_.aux_vars(3).endo_index = 58;
M_.aux_vars(3).type = 0;
M_.aux_vars(4).endo_index = 59;
M_.aux_vars(4).type = 0;
M_.aux_vars(5).endo_index = 60;
M_.aux_vars(5).type = 0;
M_.aux_vars(6).endo_index = 61;
M_.aux_vars(6).type = 0;
M_.aux_vars(7).endo_index = 62;
M_.aux_vars(7).type = 0;
M_.aux_vars(8).endo_index = 63;
M_.aux_vars(8).type = 0;
M_.aux_vars(9).endo_index = 64;
M_.aux_vars(9).type = 0;
M_.aux_vars(10).endo_index = 65;
M_.aux_vars(10).type = 1;
M_.aux_vars(10).orig_index = 2;
M_.aux_vars(10).orig_lead_lag = -1;
M_.aux_vars(11).endo_index = 66;
M_.aux_vars(11).type = 1;
M_.aux_vars(11).orig_index = 2;
M_.aux_vars(11).orig_lead_lag = -2;
M_.aux_vars(12).endo_index = 67;
M_.aux_vars(12).type = 1;
M_.aux_vars(12).orig_index = 53;
M_.aux_vars(12).orig_lead_lag = -1;
M_.aux_vars(13).endo_index = 68;
M_.aux_vars(13).type = 1;
M_.aux_vars(13).orig_index = 53;
M_.aux_vars(13).orig_lead_lag = -2;
M_.aux_vars(14).endo_index = 69;
M_.aux_vars(14).type = 1;
M_.aux_vars(14).orig_index = 53;
M_.aux_vars(14).orig_lead_lag = -3;
M_.aux_vars(15).endo_index = 70;
M_.aux_vars(15).type = 1;
M_.aux_vars(15).orig_index = 54;
M_.aux_vars(15).orig_lead_lag = -1;
M_.aux_vars(16).endo_index = 71;
M_.aux_vars(16).type = 1;
M_.aux_vars(16).orig_index = 54;
M_.aux_vars(16).orig_lead_lag = -2;
M_.aux_vars(17).endo_index = 72;
M_.aux_vars(17).type = 1;
M_.aux_vars(17).orig_index = 54;
M_.aux_vars(17).orig_lead_lag = -3;
M_.aux_vars(18).endo_index = 73;
M_.aux_vars(18).type = 1;
M_.aux_vars(18).orig_index = 52;
M_.aux_vars(18).orig_lead_lag = -1;
M_.aux_vars(19).endo_index = 74;
M_.aux_vars(19).type = 1;
M_.aux_vars(19).orig_index = 52;
M_.aux_vars(19).orig_lead_lag = -2;
M_.aux_vars(20).endo_index = 75;
M_.aux_vars(20).type = 1;
M_.aux_vars(20).orig_index = 52;
M_.aux_vars(20).orig_lead_lag = -3;
M_.aux_vars(21).endo_index = 76;
M_.aux_vars(21).type = 1;
M_.aux_vars(21).orig_index = 51;
M_.aux_vars(21).orig_lead_lag = -1;
M_.aux_vars(22).endo_index = 77;
M_.aux_vars(22).type = 1;
M_.aux_vars(22).orig_index = 51;
M_.aux_vars(22).orig_lead_lag = -2;
M_.aux_vars(23).endo_index = 78;
M_.aux_vars(23).type = 1;
M_.aux_vars(23).orig_index = 51;
M_.aux_vars(23).orig_lead_lag = -3;
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 0;
erase_compiled_function('NK_AFL15_static');
erase_compiled_function('NK_AFL15_dynamic');
M_.orig_eq_nbr = 55;
M_.eq_nbr = 78;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 24 0;
 1 25 102;
 0 26 0;
 2 27 0;
 0 28 0;
 0 29 0;
 0 30 0;
 0 31 0;
 0 32 103;
 0 33 0;
 0 34 104;
 0 35 105;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 106;
 0 40 0;
 0 41 0;
 0 42 107;
 0 43 0;
 0 44 0;
 0 45 0;
 0 46 0;
 0 47 0;
 0 48 0;
 0 49 0;
 3 50 0;
 0 51 0;
 0 52 0;
 0 53 0;
 0 54 0;
 0 55 108;
 0 56 0;
 0 57 109;
 0 58 110;
 0 59 0;
 0 60 0;
 0 61 0;
 0 62 111;
 0 63 0;
 0 64 0;
 0 65 112;
 0 66 0;
 0 67 0;
 0 68 0;
 0 69 0;
 4 70 0;
 5 71 0;
 0 72 0;
 0 73 0;
 6 74 113;
 7 75 0;
 8 76 114;
 9 77 115;
 0 78 0;
 0 79 116;
 0 80 117;
 0 81 118;
 0 82 119;
 0 83 120;
 0 84 121;
 0 85 122;
 0 86 123;
 0 87 124;
 10 88 0;
 11 89 0;
 12 90 0;
 13 91 0;
 14 92 0;
 15 93 0;
 16 94 0;
 17 95 0;
 18 96 0;
 19 97 0;
 20 98 0;
 21 99 0;
 22 100 0;
 23 101 0;]';
M_.nstatic = 36;
M_.nfwrd   = 19;
M_.npred   = 19;
M_.nboth   = 4;
M_.nsfwrd   = 23;
M_.nspred   = 23;
M_.ndynamic   = 42;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(78, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(87, 1);
M_.NNZDerivatives = [276; 255; -1];
global mcss SIG ALFA PHI CoY zss;  
M_.params( 87 ) = 0;
a_ss = M_.params( 87 );
M_.params( 68 ) = 1;
SIG = M_.params( 68 );
M_.params( 69 ) = 3;
PHI = M_.params( 69 );
M_.params( 75 ) = 2;
OMK = M_.params( 75 );
M_.params( 78 ) = 6;
EPSI = M_.params( 78 );
M_.params( 71 ) = 0.95;
RHOa = M_.params( 71 );
M_.params( 73 ) = 0.9;
RHOg = M_.params( 73 );
M_.params( 70 ) = 0.995;
BETTA = M_.params( 70 );
M_.params( 72 ) = 0.3333333333333333;
ALFA = M_.params( 72 );
M_.params( 41 ) = 1;
PAIss = M_.params( 41 );
M_.params( 77 ) = 0.025;
DELTA = M_.params( 77 );
M_.params( 74 ) = 0.2;
GY = M_.params( 74 );
M_.params( 36 ) = 0.75;
calvo = M_.params( 36 );
M_.params( 86 ) = 0.10;
CR = M_.params( 86 );
M_.params( 79 ) = 0.45;
BET = M_.params( 79 );
M_.params( 80 ) = 0.40;
HH = M_.params( 80 );
M_.params( 85 ) = M_.params(69);
VV = M_.params( 85 );
M_.params( 76 ) = 0.97;
THETA = M_.params( 76 );
M_.params( 81 ) = 1.5;
vP = M_.params( 81 );
M_.params( 82 ) = 0.125;
vY = M_.params( 82 );
M_.params( 83 ) = 0;
vQ = M_.params( 83 );
M_.params( 84 ) = 0;
vR = M_.params( 84 );
stst2=fsolve(@(stst2) (1-BETTA*(stst2+HH)/(2-BET+CR*(1+BET)))-THETA*((1-BETTA*(stst2+HH)/(2-BET+CR*(1+BET)))+(stst2+HH-(stst2+HH)/(2-BET))^2/(8*HH)-0.135)-0,[1]);
M_.params( 60 ) = stst2;
rass = M_.params( 60 );
M_.params( 49 ) = 1;
qss = M_.params( 49 );
M_.params( 45 ) = M_.params(60)-(1-M_.params(77));
zss = M_.params( 45 );
M_.params( 51 ) = 1-M_.params(77)+M_.params(45);
rokss = M_.params( 51 );
M_.params( 43 ) = M_.params(41)/M_.params(70);
rnss = M_.params( 43 );
M_.params( 47 ) = (M_.params(78)-1)/M_.params(78);
mcss = M_.params( 47 );
M_.params( 38 ) = M_.params(45)/(M_.params(47)*M_.params(72));
YoK = M_.params( 38 );
M_.params( 39 ) = M_.params(77);
IoK = M_.params( 39 );
IoY=IoK/YoK;
M_.params( 40 ) = 1-M_.params(74)-IoY;
CoY = M_.params( 40 );
CoK=CoY*YoK;
M_.params( 66 ) = (1-M_.params(72))*M_.params(47)/M_.params(85)*M_.params(38)/CoK;
XXss = M_.params( 66 );
M_.params( 48 ) = M_.params(66)/(1+M_.params(66));
nss = M_.params( 48 );
M_.params( 44 ) = M_.params(38)^(1/(M_.params(72)-1))*M_.params(48);
kss = M_.params( 44 );
M_.params( 57 ) = (1-M_.params(70)*(M_.params(60)+M_.params(80))/(2-M_.params(79)+M_.params(86)*(1+M_.params(79))))*M_.params(49)*M_.params(44);
bkss = M_.params( 57 );
M_.params( 59 ) = M_.params(70)*(M_.params(60)+M_.params(80))/(2-M_.params(79)+M_.params(86)*(1+M_.params(79)));
depratss = M_.params( 59 );
M_.params( 58 ) = M_.params(44)*M_.params(49)*M_.params(59);
dss = M_.params( 58 );
M_.params( 61 ) = 0.5*(1-(M_.params(60)-M_.params(59)*M_.params(43))/M_.params(80));
brss = M_.params( 61 );
M_.params( 46 ) = M_.params(44)^M_.params(72)*M_.params(48)^(1-M_.params(72))-M_.params(44)*M_.params(60)*M_.params(86)*M_.params(61);
yss = M_.params( 46 );
M_.params( 55 ) = M_.params(72)*M_.params(38);
Fkss = M_.params( 55 );
M_.params( 56 ) = (1-M_.params(72))*M_.params(46)/M_.params(48);
Fnss = M_.params( 56 );
M_.params( 50 ) = M_.params(44)*M_.params(39);
invss = M_.params( 50 );
M_.params( 52 ) = M_.params(74)*M_.params(46);
gss = M_.params( 52 );
M_.params( 42 ) = M_.params(46)*M_.params(40);
css = M_.params( 42 );
M_.params( 53 ) = M_.params(42)^(-M_.params(68));
ucss = M_.params( 53 );
M_.params( 54 ) = M_.params(69)/(M_.params(48)-1);
unss = M_.params( 54 );
M_.params( 37 ) = (M_.params(60)+M_.params(80)-M_.params(59)*M_.params(43))^2/(M_.params(80)*8);
ritcapss = M_.params( 37 );
M_.params( 62 ) = M_.params(61)*(1+M_.params(79))*.25*(1-M_.params(86))*(M_.params(43)+(M_.params(60)-M_.params(80))/M_.params(59));
faiss = M_.params( 62 );
M_.params( 63 ) = M_.params(43)*(1-M_.params(62));
rdss = M_.params( 63 );
M_.params( 67 ) = (M_.params(78)-1)*M_.params(46)*M_.params(36)/((1-M_.params(70)*M_.params(36))*(1-M_.params(36)));
OMP = M_.params( 67 );
M_.params( 35 ) = M_.params(44)*M_.params(49)*M_.params(76)*(-0.135);
PSI = M_.params( 35 );
M_.params( 64 ) = M_.params(44)*M_.params(49)*M_.params(60)*M_.params(86)*M_.params(61);
crunss = M_.params( 64 );
M_.params( 65 ) = 0;
cpaiss = M_.params( 65 );
thispath = cd;                                                           
cd('..');                                                                
load policy_param.mat;                                                   
for i=1:33                                                               
deep_parameter_name = M_.param_names(i,:);                           
eval(['M_.params(i)  = ' deep_parameter_name ' ;'])                  
end                                                                      
cd(thispath);                                                            
M_.params( 34 ) = 0.01/M_.params(74);
coffispol = M_.params( 34 );
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.01;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(3, 3) = 1;
save('NK_AFL15_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('NK_AFL15_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('NK_AFL15_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('NK_AFL15_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('NK_AFL15_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('NK_AFL15_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('NK_AFL15_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
