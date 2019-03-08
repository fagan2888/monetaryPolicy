function [residual, g1, g2, g3] = US_IAC05_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(58, 1);
lhs =y(65);
rhs =y(48)*4;
residual(1)= lhs-rhs;
lhs =y(66);
rhs =y(47)+y(6)+y(21)+y(22);
residual(2)= lhs-rhs;
lhs =y(67);
rhs =4*y(47);
residual(3)= lhs-rhs;
lhs =y(68);
rhs =y(35);
residual(4)= lhs-rhs;
lhs =y(69);
rhs =y(35)-y(50);
residual(5)= lhs-rhs;
lhs =y(65);
rhs =params(32)*x(it_, 4)+params(31)*y(122)+params(30)*y(121)+params(29)*y(120)+params(28)*y(112)+params(27)*y(25)+params(26)*y(24)+params(25)*y(23)+params(24)*y(19)+y(68)*params(23)+params(22)*y(119)+params(21)*y(118)+params(20)*y(117)+params(19)*y(113)+params(18)*y(28)+params(17)*y(27)+params(16)*y(26)+params(15)*y(20)+y(69)*params(14)+params(13)*y(116)+params(12)*y(115)+params(11)*y(114)+params(10)*y(111)+params(6)*y(18)+y(67)*params(5)+params(1)*y(17)+params(2)*y(29)+params(3)*y(30)+params(4)*y(31)+params(7)*y(32)+params(8)*y(33)+params(9)*y(34);
residual(6)= lhs-rhs;
lhs =y(35);
rhs =params(75)*y(36)+params(68)*y(37)+params(74)*y(38)+params(76)*y(39);
residual(7)= lhs-rhs;
lhs =y(37);
rhs =y(95)-y(49);
residual(8)= lhs-rhs;
lhs =y(39);
rhs =y(1)+params(36)*(y(97)-y(40))+(1-params(36)*(1-params(42)))*(y(93)-y(98)-y(40))/params(41)+(y(36)-y(94))/params(41);
residual(9)= lhs-rhs;
lhs =y(42);
rhs =params(60)*y(99)+(1-params(60))*(y(93)-y(98)-y(45))-y(49)*params(48)*params(34)-(1-params(48)*params(34))*(y(94)-y(36))-params(43)*(y(45)-y(4)-params(36)*(y(100)-y(45)));
residual(10)= lhs-rhs;
lhs =y(42);
rhs =y(99)*params(61)+(1-params(61))*(y(62)-y(46))-y(49)*params(34)*params(49)+(1-params(34)*params(49))*(y(38)-params(62)*y(96))-params(44)*(y(46)-y(5)-params(35)*(y(101)-y(46)));
residual(11)= lhs-rhs;
lhs =y(42);
rhs =y(37)+y(99)*params(34)+y(62)*(1-params(34))+y(45)*params(77)+y(46)*params(78)-y(95)*params(34)+params(44)*((y(45)-y(4))*params(71)+(y(46)-y(5))*params(72)-(y(100)-y(45))*params(34)*params(71)-(y(101)-y(46))*params(34)*params(72));
residual(12)= lhs-rhs;
lhs =y(43);
rhs =y(99)+y(45)-y(49);
residual(13)= lhs-rhs;
lhs =y(44);
rhs =y(99)+y(46)-y(49);
residual(14)= lhs-rhs;
lhs =y(35);
rhs =params(38)*(y(63)+y(4)*params(40)+y(1)*params(39))/(params(38)-(1-params(40)-params(39)))-(1-params(40)-params(39))*(y(41)+y(37)*params(47)+y(38)*(1-params(47)))/(params(38)-(1-params(40)-params(39)));
residual(15)= lhs-rhs;
lhs =y(47);
rhs =params(34)*y(102)-y(41)*params(63)+y(64);
residual(16)= lhs-rhs;
lhs =y(40);
rhs =y(39)*params(42)+y(1)*(1-params(42));
residual(17)= lhs-rhs;
lhs =y(43)*params(67);
rhs =params(76)*y(39)+params(75)*y(36)+(y(45)-y(4))*params(66)+params(67)*params(79)*(y(7)+y(2)-y(47))-(1-params(64)-params(65))*(y(35)-y(41));
residual(18)= lhs-rhs;
lhs =y(44)*params(73);
rhs =params(74)*y(38)+(y(46)-y(5))*params(70)+params(79)*params(73)*(y(7)+y(3)-y(47))-params(65)*(y(35)-y(41));
residual(19)= lhs-rhs;
lhs =y(49);
rhs =y(48)-y(102);
residual(20)= lhs-rhs;
lhs =y(62);
rhs =params(51)*y(14)+x(it_, 1);
residual(21)= lhs-rhs;
lhs =y(64);
rhs =params(50)*y(16)+x(it_, 2);
residual(22)= lhs-rhs;
lhs =y(63);
rhs =params(52)*y(15)+x(it_, 3);
residual(23)= lhs-rhs;
lhs =y(50);
rhs =params(75)*y(51)+params(68)*y(52)+params(74)*y(53)+params(76)*y(54);
residual(24)= lhs-rhs;
lhs =y(52);
rhs =y(105)-y(61);
residual(25)= lhs-rhs;
lhs =y(54);
rhs =y(8)+params(36)*(y(107)-y(55))+(1-params(36)*(1-params(42)))*(y(103)-y(55))/params(41)+(y(51)-y(104))/params(41);
residual(26)= lhs-rhs;
lhs =y(56);
rhs =params(60)*y(108)+(1-params(60))*(y(103)-y(59))-params(48)*params(34)*y(61)-(1-params(48)*params(34))*(y(104)-y(51))-params(43)*(y(59)-y(11)-params(36)*(y(109)-y(59)));
residual(27)= lhs-rhs;
lhs =y(56);
rhs =params(61)*y(108)+(1-params(61))*(y(62)-y(60))-params(34)*params(49)*y(61)+(1-params(34)*params(49))*(y(53)-params(62)*y(106))-params(44)*(y(60)-y(12)-params(35)*(y(110)-y(60)));
residual(28)= lhs-rhs;
lhs =y(56);
rhs =y(52)+y(62)*(1-params(34))+params(34)*y(108)+params(77)*y(59)+params(78)*y(60)-params(34)*y(105)+params(44)*(params(71)*(y(59)-y(11))+params(72)*(y(60)-y(12))-params(34)*params(71)*(y(109)-y(59))-params(34)*params(72)*(y(110)-y(60)));
residual(29)= lhs-rhs;
lhs =y(57);
rhs =y(108)+y(59)-y(61);
residual(30)= lhs-rhs;
lhs =y(58);
rhs =y(108)+y(60)-y(61);
residual(31)= lhs-rhs;
lhs =y(50);
rhs =params(38)*(y(63)+params(40)*y(11)+params(39)*y(8))/(params(38)-(1-params(40)-params(39)))-(1-params(40)-params(39))*(params(47)*y(52)+(1-params(47))*y(53))/(params(38)-(1-params(40)-params(39)));
residual(32)= lhs-rhs;
lhs =y(55);
rhs =params(42)*y(54)+(1-params(42))*y(8);
residual(33)= lhs-rhs;
lhs =params(67)*y(57);
rhs =params(76)*y(54)+params(75)*y(51)+params(66)*(y(59)-y(11))+params(67)*params(79)*(y(13)+y(9))-y(50)*(1-params(64)-params(65));
residual(34)= lhs-rhs;
lhs =params(73)*y(58);
rhs =params(74)*y(53)+params(70)*(y(60)-y(12))+params(79)*params(73)*(y(13)+y(10))-y(50)*params(65);
residual(35)= lhs-rhs;
lhs =y(70);
rhs =y(111);
residual(36)= lhs-rhs;
lhs =y(71);
rhs =y(114);
residual(37)= lhs-rhs;
lhs =y(72);
rhs =y(115);
residual(38)= lhs-rhs;
lhs =y(73);
rhs =y(113);
residual(39)= lhs-rhs;
lhs =y(74);
rhs =y(117);
residual(40)= lhs-rhs;
lhs =y(75);
rhs =y(118);
residual(41)= lhs-rhs;
lhs =y(76);
rhs =y(112);
residual(42)= lhs-rhs;
lhs =y(77);
rhs =y(120);
residual(43)= lhs-rhs;
lhs =y(78);
rhs =y(121);
residual(44)= lhs-rhs;
lhs =y(79);
rhs =y(6);
residual(45)= lhs-rhs;
lhs =y(80);
rhs =y(21);
residual(46)= lhs-rhs;
lhs =y(81);
rhs =y(19);
residual(47)= lhs-rhs;
lhs =y(82);
rhs =y(23);
residual(48)= lhs-rhs;
lhs =y(83);
rhs =y(24);
residual(49)= lhs-rhs;
lhs =y(84);
rhs =y(20);
residual(50)= lhs-rhs;
lhs =y(85);
rhs =y(26);
residual(51)= lhs-rhs;
lhs =y(86);
rhs =y(27);
residual(52)= lhs-rhs;
lhs =y(87);
rhs =y(17);
residual(53)= lhs-rhs;
lhs =y(88);
rhs =y(29);
residual(54)= lhs-rhs;
lhs =y(89);
rhs =y(30);
residual(55)= lhs-rhs;
lhs =y(90);
rhs =y(18);
residual(56)= lhs-rhs;
lhs =y(91);
rhs =y(32);
residual(57)= lhs-rhs;
lhs =y(92);
rhs =y(33);
residual(58)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(58, 126);

  %
  % Jacobian matrix
  %

  g1(1,48)=(-4);
  g1(1,65)=1;
  g1(2,6)=(-1);
  g1(2,47)=(-1);
  g1(2,66)=1;
  g1(2,21)=(-1);
  g1(2,22)=(-1);
  g1(3,47)=(-4);
  g1(3,67)=1;
  g1(4,35)=(-1);
  g1(4,68)=1;
  g1(5,35)=(-1);
  g1(5,50)=1;
  g1(5,69)=1;
  g1(6,17)=(-params(1));
  g1(6,65)=1;
  g1(6,18)=(-params(6));
  g1(6,67)=(-params(5));
  g1(6,111)=(-params(10));
  g1(6,19)=(-params(24));
  g1(6,68)=(-params(23));
  g1(6,112)=(-params(28));
  g1(6,20)=(-params(15));
  g1(6,69)=(-params(14));
  g1(6,113)=(-params(19));
  g1(6,126)=(-params(32));
  g1(6,114)=(-params(11));
  g1(6,115)=(-params(12));
  g1(6,116)=(-params(13));
  g1(6,117)=(-params(20));
  g1(6,118)=(-params(21));
  g1(6,119)=(-params(22));
  g1(6,120)=(-params(29));
  g1(6,121)=(-params(30));
  g1(6,122)=(-params(31));
  g1(6,23)=(-params(25));
  g1(6,24)=(-params(26));
  g1(6,25)=(-params(27));
  g1(6,26)=(-params(16));
  g1(6,27)=(-params(17));
  g1(6,28)=(-params(18));
  g1(6,29)=(-params(2));
  g1(6,30)=(-params(3));
  g1(6,31)=(-params(4));
  g1(6,32)=(-params(7));
  g1(6,33)=(-params(8));
  g1(6,34)=(-params(9));
  g1(7,35)=1;
  g1(7,36)=(-params(75));
  g1(7,37)=(-params(68));
  g1(7,38)=(-params(74));
  g1(7,39)=(-params(76));
  g1(8,37)=1;
  g1(8,95)=(-1);
  g1(8,49)=1;
  g1(9,93)=(-((1-params(36)*(1-params(42)))/params(41)));
  g1(9,36)=(-(1/params(41)));
  g1(9,94)=(-((-1)/params(41)));
  g1(9,39)=1;
  g1(9,97)=(-params(36));
  g1(9,1)=(-1);
  g1(9,40)=(-((-params(36))+(-(1-params(36)*(1-params(42))))/params(41)));
  g1(9,98)=(-((-(1-params(36)*(1-params(42))))/params(41)));
  g1(10,93)=(-(1-params(60)));
  g1(10,36)=(-(1-params(48)*params(34)));
  g1(10,94)=1-params(48)*params(34);
  g1(10,98)=1-params(60);
  g1(10,42)=1;
  g1(10,99)=(-params(60));
  g1(10,4)=(-params(43));
  g1(10,45)=(-((-(1-params(60)))-params(43)*(1-(-params(36)))));
  g1(10,100)=params(43)*(-params(36));
  g1(10,49)=params(48)*params(34);
  g1(11,38)=(-(1-params(34)*params(49)));
  g1(11,96)=(-((1-params(34)*params(49))*(-params(62))));
  g1(11,42)=1;
  g1(11,99)=(-params(61));
  g1(11,5)=(-params(44));
  g1(11,46)=(-((-(1-params(61)))-params(44)*(1-(-params(35)))));
  g1(11,101)=params(44)*(-params(35));
  g1(11,49)=params(34)*params(49);
  g1(11,62)=(-(1-params(61)));
  g1(12,37)=(-1);
  g1(12,95)=params(34);
  g1(12,42)=1;
  g1(12,99)=(-params(34));
  g1(12,4)=(-(params(44)*(-params(71))));
  g1(12,45)=(-(params(77)+params(44)*(params(71)-(-(params(34)*params(71))))));
  g1(12,100)=(-(params(44)*(-(params(34)*params(71)))));
  g1(12,5)=(-(params(44)*(-params(72))));
  g1(12,46)=(-(params(78)+params(44)*(params(72)-(-(params(34)*params(72))))));
  g1(12,101)=(-(params(44)*(-(params(34)*params(72)))));
  g1(12,62)=(-(1-params(34)));
  g1(13,99)=(-1);
  g1(13,43)=1;
  g1(13,45)=(-1);
  g1(13,49)=1;
  g1(14,99)=(-1);
  g1(14,44)=1;
  g1(14,46)=(-1);
  g1(14,49)=1;
  g1(15,35)=1;
  g1(15,37)=(1-params(40)-params(39))*params(47)/(params(38)-(1-params(40)-params(39)));
  g1(15,38)=(1-params(40)-params(39))*(1-params(47))/(params(38)-(1-params(40)-params(39)));
  g1(15,1)=(-(params(38)*params(39)/(params(38)-(1-params(40)-params(39)))));
  g1(15,41)=(1-params(40)-params(39))/(params(38)-(1-params(40)-params(39)));
  g1(15,4)=(-(params(38)*params(40)/(params(38)-(1-params(40)-params(39)))));
  g1(15,63)=(-(params(38)/(params(38)-(1-params(40)-params(39)))));
  g1(16,41)=params(63);
  g1(16,47)=1;
  g1(16,102)=(-params(34));
  g1(16,64)=(-1);
  g1(17,39)=(-params(42));
  g1(17,1)=(-(1-params(42)));
  g1(17,40)=1;
  g1(18,35)=1-params(64)-params(65);
  g1(18,36)=(-params(75));
  g1(18,39)=(-params(76));
  g1(18,41)=(-(1-params(64)-params(65)));
  g1(18,2)=(-(params(67)*params(79)));
  g1(18,43)=params(67);
  g1(18,4)=params(66);
  g1(18,45)=(-params(66));
  g1(18,47)=params(67)*params(79);
  g1(18,7)=(-(params(67)*params(79)));
  g1(19,35)=params(65);
  g1(19,38)=(-params(74));
  g1(19,41)=(-params(65));
  g1(19,3)=(-(params(79)*params(73)));
  g1(19,44)=params(73);
  g1(19,5)=params(70);
  g1(19,46)=(-params(70));
  g1(19,47)=params(79)*params(73);
  g1(19,7)=(-(params(79)*params(73)));
  g1(20,102)=1;
  g1(20,48)=(-1);
  g1(20,49)=1;
  g1(21,14)=(-params(51));
  g1(21,62)=1;
  g1(21,123)=(-1);
  g1(22,16)=(-params(50));
  g1(22,64)=1;
  g1(22,124)=(-1);
  g1(23,15)=(-params(52));
  g1(23,63)=1;
  g1(23,125)=(-1);
  g1(24,50)=1;
  g1(24,51)=(-params(75));
  g1(24,52)=(-params(68));
  g1(24,53)=(-params(74));
  g1(24,54)=(-params(76));
  g1(25,52)=1;
  g1(25,105)=(-1);
  g1(25,61)=1;
  g1(26,103)=(-((1-params(36)*(1-params(42)))/params(41)));
  g1(26,51)=(-(1/params(41)));
  g1(26,104)=(-((-1)/params(41)));
  g1(26,54)=1;
  g1(26,107)=(-params(36));
  g1(26,8)=(-1);
  g1(26,55)=(-((-params(36))+(-(1-params(36)*(1-params(42))))/params(41)));
  g1(27,103)=(-(1-params(60)));
  g1(27,51)=(-(1-params(48)*params(34)));
  g1(27,104)=1-params(48)*params(34);
  g1(27,56)=1;
  g1(27,108)=(-params(60));
  g1(27,11)=(-params(43));
  g1(27,59)=(-((-(1-params(60)))-params(43)*(1-(-params(36)))));
  g1(27,109)=params(43)*(-params(36));
  g1(27,61)=params(48)*params(34);
  g1(28,53)=(-(1-params(34)*params(49)));
  g1(28,106)=(-((1-params(34)*params(49))*(-params(62))));
  g1(28,56)=1;
  g1(28,108)=(-params(61));
  g1(28,12)=(-params(44));
  g1(28,60)=(-((-(1-params(61)))-params(44)*(1-(-params(35)))));
  g1(28,110)=params(44)*(-params(35));
  g1(28,61)=params(34)*params(49);
  g1(28,62)=(-(1-params(61)));
  g1(29,52)=(-1);
  g1(29,105)=params(34);
  g1(29,56)=1;
  g1(29,108)=(-params(34));
  g1(29,11)=(-(params(44)*(-params(71))));
  g1(29,59)=(-(params(77)+params(44)*(params(71)-(-(params(34)*params(71))))));
  g1(29,109)=(-(params(44)*(-(params(34)*params(71)))));
  g1(29,12)=(-(params(44)*(-params(72))));
  g1(29,60)=(-(params(78)+params(44)*(params(72)-(-(params(34)*params(72))))));
  g1(29,110)=(-(params(44)*(-(params(34)*params(72)))));
  g1(29,62)=(-(1-params(34)));
  g1(30,108)=(-1);
  g1(30,57)=1;
  g1(30,59)=(-1);
  g1(30,61)=1;
  g1(31,108)=(-1);
  g1(31,58)=1;
  g1(31,60)=(-1);
  g1(31,61)=1;
  g1(32,50)=1;
  g1(32,52)=(1-params(40)-params(39))*params(47)/(params(38)-(1-params(40)-params(39)));
  g1(32,53)=(1-params(40)-params(39))*(1-params(47))/(params(38)-(1-params(40)-params(39)));
  g1(32,8)=(-(params(38)*params(39)/(params(38)-(1-params(40)-params(39)))));
  g1(32,11)=(-(params(38)*params(40)/(params(38)-(1-params(40)-params(39)))));
  g1(32,63)=(-(params(38)/(params(38)-(1-params(40)-params(39)))));
  g1(33,54)=(-params(42));
  g1(33,8)=(-(1-params(42)));
  g1(33,55)=1;
  g1(34,50)=1-params(64)-params(65);
  g1(34,51)=(-params(75));
  g1(34,54)=(-params(76));
  g1(34,9)=(-(params(67)*params(79)));
  g1(34,57)=params(67);
  g1(34,11)=params(66);
  g1(34,59)=(-params(66));
  g1(34,13)=(-(params(67)*params(79)));
  g1(35,50)=params(65);
  g1(35,53)=(-params(74));
  g1(35,10)=(-(params(79)*params(73)));
  g1(35,58)=params(73);
  g1(35,12)=params(70);
  g1(35,60)=(-params(70));
  g1(35,13)=(-(params(79)*params(73)));
  g1(36,111)=(-1);
  g1(36,70)=1;
  g1(37,114)=(-1);
  g1(37,71)=1;
  g1(38,115)=(-1);
  g1(38,72)=1;
  g1(39,113)=(-1);
  g1(39,73)=1;
  g1(40,117)=(-1);
  g1(40,74)=1;
  g1(41,118)=(-1);
  g1(41,75)=1;
  g1(42,112)=(-1);
  g1(42,76)=1;
  g1(43,120)=(-1);
  g1(43,77)=1;
  g1(44,121)=(-1);
  g1(44,78)=1;
  g1(45,6)=(-1);
  g1(45,79)=1;
  g1(46,21)=(-1);
  g1(46,80)=1;
  g1(47,19)=(-1);
  g1(47,81)=1;
  g1(48,23)=(-1);
  g1(48,82)=1;
  g1(49,24)=(-1);
  g1(49,83)=1;
  g1(50,20)=(-1);
  g1(50,84)=1;
  g1(51,26)=(-1);
  g1(51,85)=1;
  g1(52,27)=(-1);
  g1(52,86)=1;
  g1(53,17)=(-1);
  g1(53,87)=1;
  g1(54,29)=(-1);
  g1(54,88)=1;
  g1(55,30)=(-1);
  g1(55,89)=1;
  g1(56,18)=(-1);
  g1(56,90)=1;
  g1(57,32)=(-1);
  g1(57,91)=1;
  g1(58,33)=(-1);
  g1(58,92)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],58,15876);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],58,2000376);
end
end
end
end
