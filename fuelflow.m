set(0,'defaultAxesFontSize', 17);

HD1 = ((FFR.ft1 > 6400) & (FFR.ft1 < 6600));
M11 = ((FFR.kg(HD1) > 6150) & (FFR.kg(HD1) < 6250));
M21 = ((FFR.kg(HD1) > 6250) & (FFR.kg(HD1) < 6350));
M31 = ((FFR.kg(HD1) > 6350) & (FFR.kg(HD1) < 6450));
M41 = ((FFR.kg(HD1) > 6450) & (FFR.kg(HD1) < 6550));
M51 = ((FFR.kg(HD1) > 6550) & (FFR.kg(HD1) < 6650));
M61 = ((FFR.kg(HD1) > 6650) & (FFR.kg(HD1) < 6750));


FUELFLOW11 = FFR.kgh(M11);
SAR11 = FFR.nmkg(M11);
FUELFLOW21 = FFR.kgh(M21);
SAR21 = FFR.nmkg(M21);
FUELFLOW31 = FFR.kgh(M31);
SAR31 = FFR.nmkg(M31);
FUELFLOW41 = FFR.kgh(M41);
SAR41 = FFR.nmkg(M41);
FUELFLOW51 = FFR.kgh(M51);
SAR51 = FFR.nmkg(M51);
FUELFLOW61 = FFR.kgh(M61);
SAR61 = FFR.nmkg(M61);

HD2 = ((FFR.ft1 > 7400) & (FFR.ft1 < 7600));
M12 = ((FFR.kg(HD2) > 6150) & (FFR.kg(HD2) < 6250));
M22 = ((FFR.kg(HD2) > 6250) & (FFR.kg(HD2) < 6350));
M32 = ((FFR.kg(HD2) > 6350) & (FFR.kg(HD2) < 6450));
M42 = ((FFR.kg(HD2) > 6450) & (FFR.kg(HD2) < 6550));
M52 = ((FFR.kg(HD2) > 6550) & (FFR.kg(HD2) < 6650));
M62 = ((FFR.kg(HD2) > 6650) & (FFR.kg(HD2) < 6750));


FUELFLOW12 = FFR.kgh(M12);
SAR12 = FFR.nmkg(M12);
FUELFLOW22 = FFR.kgh(M22);
SAR22 = FFR.nmkg(M22);
FUELFLOW32 = FFR.kgh(M32);
SAR32 = FFR.nmkg(M32);
FUELFLOW42 = FFR.kgh(M42);
SAR42 = FFR.nmkg(M42);
FUELFLOW52 = FFR.kgh(M52);
SAR52 = FFR.nmkg(M52);
FUELFLOW62 = FFR.kgh(M62);
SAR62 = FFR.nmkg(M62);

HD3 = ((FFR.ft1 > 8400) & (FFR.ft1 < 8600));
M13 = ((FFR.kg(HD3) > 6150) & (FFR.kg(HD3) < 6250));
M23 = ((FFR.kg(HD3) > 6250) & (FFR.kg(HD3) < 6350));
M33 = ((FFR.kg(HD3) > 6350) & (FFR.kg(HD3) < 6450));
M43 = ((FFR.kg(HD3) > 6450) & (FFR.kg(HD3) < 6550));
M53 = ((FFR.kg(HD3) > 6550) & (FFR.kg(HD3) < 6650));
M63 = ((FFR.kg(HD3) > 6650) & (FFR.kg(HD3) < 6750));


FUELFLOW13 = FFR.kgh(M13);
SAR13 = FFR.nmkg(M13);
FUELFLOW23 = FFR.kgh(M23);
SAR23 = FFR.nmkg(M23);
FUELFLOW33 = FFR.kgh(M33);
SAR33 = FFR.nmkg(M33);
FUELFLOW43 = FFR.kgh(M43);
SAR43 = FFR.nmkg(M43);
FUELFLOW53 = FFR.kgh(M53);
SAR53 = FFR.nmkg(M53);
FUELFLOW63 = FFR.kgh(M63);
SAR63 = FFR.nmkg(M63);

HD4 = ((FFR.ft1 > 9400) & (FFR.ft1 < 9600));
M14 = ((FFR.kg(HD4) > 6150) & (FFR.kg(HD4) < 6250));
M24 = ((FFR.kg(HD4) > 6250) & (FFR.kg(HD4) < 6350));
M34 = ((FFR.kg(HD4) > 6350) & (FFR.kg(HD4) < 6450));
M44 = ((FFR.kg(HD4) > 6450) & (FFR.kg(HD4) < 6550));
M54 = ((FFR.kg(HD4) > 6550) & (FFR.kg(HD4) < 6650));
M64 = ((FFR.kg(HD4) > 6650) & (FFR.kg(HD4) < 6750));


FUELFLOW14 = FFR.kgh(M14);
SAR14 = FFR.nmkg(M14);
FUELFLOW24 = FFR.kgh(M24);
SAR24 = FFR.nmkg(M24);
FUELFLOW34 = FFR.kgh(M34);
SAR34 = FFR.nmkg(M34);
FUELFLOW44 = FFR.kgh(M44);
SAR44 = FFR.nmkg(M44);
FUELFLOW54 = FFR.kgh(M54);
SAR54 = FFR.nmkg(M54);
FUELFLOW64 = FFR.kgh(M64);
SAR64 = FFR.nmkg(M64);


subplot(2,2,1)
scatter(FUELFLOW11,SAR11,'filled','or')
title({"FFR AND SAR data based on density", "altitude of 6500(ft) sub-categorised with mass"})
xlabel("Fuel flow rate")
ylabel("Specific air range")
hold on
legend('6200KG')
scatter(FUELFLOW21,SAR21,'filled','ob','DisplayName','6300KG')
scatter(FUELFLOW31,SAR31,'filled','sk','DisplayName','6400KG')
scatter(FUELFLOW41,SAR41,'filled','sb','DisplayName','6500KG')
scatter(FUELFLOW51,SAR51,'filled','dk','DisplayName','6600KG')
scatter(FUELFLOW61,SAR61,'filled','dr','DisplayName','6700KG')
hold off

subplot(2,2,2)
scatter(FUELFLOW12,SAR12,'filled','or')
title({"FFR AND SAR data based on density", "altitude of 7500(ft) sub-categorised with mass"})
xlabel("Fuel flow rate")
ylabel("Specific air range")
hold on
legend('6200KG')
scatter(FUELFLOW22,SAR22,'filled','ob','DisplayName','6300KG')
scatter(FUELFLOW32,SAR32,'filled','sk','DisplayName','6400KG')
scatter(FUELFLOW42,SAR42,'filled','sb','DisplayName','6500KG')
scatter(FUELFLOW52,SAR52,'filled','dk','DisplayName','6600KG')
scatter(FUELFLOW62,SAR62,'filled','dr','DisplayName','6700KG')
hold off

subplot(2,2,3)
scatter(FUELFLOW13,SAR13,'filled','or')
title({"FFR AND SAR data based on density", "altitude of 8500(ft) sub-categorised with mass"})
xlabel("Fuel flow rate")
ylabel("Specific air range")
hold on
legend('6200KG')
scatter(FUELFLOW23,SAR23,'filled','ob','DisplayName','6300KG')
scatter(FUELFLOW33,SAR33,'filled','sk','DisplayName','6400KG')
scatter(FUELFLOW43,SAR43,'filled','sb','DisplayName','6500KG')
scatter(FUELFLOW53,SAR53,'filled','dk','DisplayName','6600KG')
scatter(FUELFLOW63,SAR63,'filled','dr','DisplayName','6700KG')
hold off

subplot(2,2,4)
scatter(FUELFLOW14,SAR14,'filled','or')
title({"FFR AND SAR data based on density", "altitude of 9500(ft) sub-categorised with mass"})
xlabel("Fuel flow rate")
ylabel("Specific air range")
hold on
legend('6200KG')
scatter(FUELFLOW24,SAR24,'filled','ob','DisplayName','6300KG')
scatter(FUELFLOW34,SAR34,'filled','sk','DisplayName','6400KG')
scatter(FUELFLOW44,SAR44,'filled','sb','DisplayName','6500KG')
scatter(FUELFLOW54,SAR54,'filled','dk','DisplayName','6600KG')
scatter(FUELFLOW64,SAR64,'filled','dr','DisplayName','6700KG')
hold off
