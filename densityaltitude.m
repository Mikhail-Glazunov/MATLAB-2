set(0,'defaultAxesFontSize', 18);

g0 = 9.065;
rho0 = 1.225;
sw = 25.084;

Cruise = ((CR.ft > 4900) & (CR.ft < 5100));
Approach = ((APP.ft > 4900) & (APP.ft < 5100));
Flap10 = ((FLP10.ft > 4900) & (FLP10.ft < 5100));
Landing = ((LDG.ft > 4900) & (LDG.ft < 5100));
Takeoff = ((TO.ft > 4900) & (TO.ft < 5100));
UCdown = ((UCDWN.ft > 4900) & (UCDWN.ft < 5100));

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

%%CwAPP = (2 * ApproachM * g0)./(rho0 * ApproachV.^2 * sw);
%%CwFLP = (2 * Flap10M * g0)./(rho0 * Flap10V.^2 * sw);
%%CwLDG = (2 * LandingM * g0)./(rho0 * LandingV.^2 * sw);
%%CwTO = (2 * TakeoffM * g0)./(rho0 * TakeoffV.^2 * sw);
%%CwUCDWN = (2 * UCdownM * g0)./(rho0 * UCdownV.^2 * sw);

CwCR = CR.VarName4(Cruise);
CwAPP = APP.VarName4(Approach);
CwFLP = FLP10.VarName4(Flap10);
CwLDG = LDG.VarName4(Landing);
CwTO = TO.VarName4(Takeoff);
CwUCDWN = UCDWN.VarName4(UCdown);

scatter(CwCR,CruiseDP,'filled','or')
title("Plot as a function of C_{w} based on the \DeltaP_{s} based on density altitude")
xlabel("C_{w} values")
ylabel("\DeltaP_{s} values based on density altitude")
hold on
legend('Cruise')
scatter(CwAPP,ApproachDP,'filled','ob','DisplayName','Approach')
scatter(CwTO,TakeoffDP,'filled','sk','DisplayName','Takeoff')
scatter(CwUCDWN,UCdownDP,'filled','sb','DisplayName','UCDOWN')
scatter(CwFLP,Flap10DP,'filled','dk','DisplayName','Flap10')
scatter(CwLDG,LandingDP,'filled','dr','DisplayName','Landing')
hold off









