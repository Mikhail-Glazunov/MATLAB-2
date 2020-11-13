set(0,'defaultAxesFontSize', 18);

g0 = 9.065;
rho0 = 1.225;
sw = 25.084;

Cruise = ((CR.Pa < 0) & (CR.Pa > -50));
Approach = ((APP.Pa < 0) & (APP.Pa > -50));
Flap10 = ((FLP10.Pa < 0) & (FLP10.Pa > -50));
Landing = ((LDG.Pa < 0) & (LDG.Pa > -50));
Takeoff = ((TO.Pa < 0) & (TO.Pa > -50));
UCdown = ((UCDWN.Pa < 0) & (UCDWN.Pa > -50));

CruiseDP = CR.Pa(Cruise);
ApproachDP = APP.Pa(Approach);
Flap10DP = FLP10.Pa(Flap10);
LandingDP = LDG.Pa(Landing);
TakeoffDP = TO.Pa(Takeoff);
UCdownDP = UCDWN.Pa(UCdown);

CruiseM = CR.kg(Cruise);
ApproachM = APP.kg(Approach);
Flap10M = FLP10.kg(Flap10);
LandingM = LDG.kg(Landing);
TakeoffM = TO.kg(Takeoff);
UCdownM = UCDWN.kg(UCdown);

CruiseV = CR.kts(Cruise);
ApproachV = APP.kts(Approach);
Flap10V = FLP10.kts(Flap10);
LandingV = LDG.kts(Landing);
TakeoffV = TO.kts(Takeoff);
UCdownV = UCDWN.kts(UCdown);

% CwCR = (2 * CruiseM * g0)./(rho0 * CruiseV.^2 * sw);
% CwAPP = (2 * ApproachM * g0)./(rho0 * ApproachV.^2 * sw);
% CwFLP = (2 * Flap10M * g0)./(rho0 * Flap10V.^2 * sw);
% CwLDG = (2 * LandingM * g0)./(rho0 * LandingV.^2 * sw);
% CwTO = (2 * TakeoffM * g0)./(rho0 * TakeoffV.^2 * sw);
% CwUCDWN = (2 * UCdownM * g0)./(rho0 * UCdownV.^2 * sw);

CwCR = CR.VarName4(Cruise);
CwAPP = APP.VarName4(Approach);
CwFLP = FLP10.VarName4(Flap10);
CwLDG = LDG.VarName4(Landing);
CwTO = TO.VarName4(Takeoff);
CwUCDWN = UCDWN.VarName4(UCdown);

CwCR = CwCR(1:20);
CwAPP = CwAPP(1:20);
CwTO = CwTO(1:20);
CwUCDWN = CwUCDWN(1:20);
%%CwFLP = CwFLP(1:20);
CwLDG = CwLDG(1:20);

CruiseDP = CruiseDP(1:20);
ApproachDP = ApproachDP(1:20);
TakeoffDP = TakeoffDP(1:20);
UCdownDP = UCdownDP(1:20);
%%Flap10DP = Flap10DP(1:20);
LandingDP = LandingDP(1:20);

scatter(CwCR,CruiseDP,'filled','or')
title("Plot as a function of C_{w} based on the \DeltaP_{s} based on configuration")
xlabel("C_{w} values")
ylabel("\DeltaP_{s} values based on configuration")
hold on
legend('Cruise')
scatter(CwAPP,ApproachDP,'filled','ob','DisplayName','Approach')
scatter(CwTO,TakeoffDP,'filled','sk','DisplayName','Takeoff')
scatter(CwUCDWN,UCdownDP,'filled','sb','DisplayName','UCDOWN')
scatter(CwFLP,Flap10DP,'filled','dk','DisplayName','Flap10')
scatter(CwLDG,LandingDP,'filled','dr','DisplayName','Landing')
hold off
