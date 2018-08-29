G28 W ; home all without mesh bed level

;
; Square 35C
;

M201 X1000 Y1000 Z200 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm/sec
M204 S1250 T1250 ; sets acceleration (S) and retract acceleration (T)
M205 X10 Y10 Z0.4 E2.5 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
M83  ; extruder relative mode

G0 Z100 ; Cooling PINDA position
M106 S255 ; Turn fan on
M860 S30; Let PINDA cool down to 30C
M107 ; Turn fan off

M104 S215 ; set extruder temp
M140 S60 ; set bed temp
M190 S60 ; wait for bed temp
M109 S215 ; wait for extruder temp
G0 X50 Y50 Z0.15 ; this is a good PINDA heating position
M860 S35 ; wait until PINDA is >= 35C
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

G1 Y10.0 F1000.0 ;
G92 E0.0
G1 X60.0 E9.0  F1000.0 ; intro line
G1 X100.0 E12.5  F1000.0 ; intro line
G92 E0.0
M221 S95
M900 K30; Filament gcode
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

G1 E-0.80000 F2100.00000
G1 Z0.600 F10800.000

; now print the square
G1 X89.826 Y110.826
G1 Z0.200
G1 E0.80000 F2100.00000
M204 S1000
G1 F1800
G1 X90.000 Y110.790 E0.00620
G1 X112.000 Y110.790 E0.76831
G1 X112.174 Y110.826 E0.00620
G1 X112.210 Y111.000 E0.00620
G1 X112.210 Y133.000 E0.76831
G1 X112.174 Y133.174 E0.00620
G1 X112.000 Y133.210 E0.00620
G1 X90.000 Y133.210 E0.76831
G1 X89.826 Y133.174 E0.00620
G1 X89.790 Y133.000 E0.00620
G1 X89.790 Y111.000 E0.76831
G1 X89.808 Y110.913 E0.00337
G1 X89.814 Y110.885 E0.00118
G1 X89.966 Y110.717 F10800.000
G1 F8640
G1 X90.000 Y110.790 E-0.04823
G1 X93.083 Y110.790 E-0.71177
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X91.587 Y112.587
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X110.413 Y112.587 E0.59027
G1 X110.413 Y131.413 E0.59027
G1 X91.587 Y131.413 E0.59027
G1 X91.587 Y112.647 E0.58839
G1 X91.210 Y112.210 F10800.000
G1 F1800
G1 X110.790 Y112.210 E0.61392
G1 X110.790 Y131.790 E0.61392
G1 X91.210 Y131.790 E0.61392
G1 X91.210 Y112.270 E0.61204
G1 X91.596 Y112.314 F10800.000
G1 F8640
G1 X94.501 Y112.260 E-0.76000
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X91.700 Y130.527
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X92.303 Y131.130 E0.02708
G1 X92.843 Y131.130 E0.01716
G1 X91.870 Y130.157 E0.04372
G1 X91.870 Y129.617 E0.01716
G1 X93.383 Y131.130 E0.06799
G1 X93.924 Y131.130 E0.01716
G1 X91.870 Y129.076 E0.09226
G1 X91.870 Y128.536 E0.01716
G1 X94.464 Y131.130 E0.11652
G1 X95.004 Y131.130 E0.01716
G1 X91.870 Y127.996 E0.14079
G1 X91.870 Y127.456 E0.01716
G1 X95.544 Y131.130 E0.16505
G1 X96.085 Y131.130 E0.01716
G1 X91.870 Y126.915 E0.18932
G1 X91.870 Y126.375 E0.01716
G1 X96.625 Y131.130 E0.21358
G1 X97.165 Y131.130 E0.01716
G1 X91.870 Y125.835 E0.23785
G1 X91.870 Y125.295 E0.01716
G1 X97.705 Y131.130 E0.26212
G1 X98.245 Y131.130 E0.01716
G1 X91.870 Y124.755 E0.28638
G1 X91.870 Y124.214 E0.01716
G1 X98.786 Y131.130 E0.31065
G1 X99.326 Y131.130 E0.01716
G1 X91.870 Y123.674 E0.33491
G1 X91.870 Y123.134 E0.01716
G1 X99.866 Y131.130 E0.35918
G1 X100.406 Y131.130 E0.01716
G1 X91.870 Y122.594 E0.38344
G1 X91.870 Y122.054 E0.01716
G1 X100.946 Y131.130 E0.40771
G1 X101.487 Y131.130 E0.01716
G1 X91.870 Y121.513 E0.43198
G1 X91.870 Y120.973 E0.01716
G1 X102.027 Y131.130 E0.45624
G1 X102.567 Y131.130 E0.01716
G1 X91.870 Y120.433 E0.48051
G1 X91.870 Y119.893 E0.01716
G1 X103.107 Y131.130 E0.50477
G1 X103.648 Y131.130 E0.01716
G1 X91.870 Y119.352 E0.52904
G1 X91.870 Y118.812 E0.01716
G1 X104.188 Y131.130 E0.55330
G1 X104.728 Y131.130 E0.01716
G1 X91.870 Y118.272 E0.57757
G1 X91.870 Y117.732 E0.01716
G1 X105.268 Y131.130 E0.60184
G1 X105.808 Y131.130 E0.01716
G1 X91.870 Y117.192 E0.62610
G1 X91.870 Y116.651 E0.01716
G1 X106.349 Y131.130 E0.65037
G1 X106.889 Y131.130 E0.01716
G1 X91.870 Y116.111 E0.67463
G1 X91.870 Y115.571 E0.01716
G1 X107.429 Y131.130 E0.69890
G1 X107.969 Y131.130 E0.01716
G1 X91.870 Y115.031 E0.72316
G1 X91.870 Y114.491 E0.01716
G1 X108.509 Y131.130 E0.74743
G1 X109.050 Y131.130 E0.01716
G1 X91.870 Y113.950 E0.77170
G1 X91.870 Y113.410 E0.01716
G1 X109.590 Y131.130 E0.79596
G1 X110.130 Y131.130 E0.01716
G1 X91.870 Y112.870 E0.82023
G1 X92.410 Y112.870 E0.01716
G1 X110.130 Y130.590 E0.79597
G1 X110.130 Y130.050 E0.01716
G1 X92.950 Y112.870 E0.77170
G1 X93.490 Y112.870 E0.01716
G1 X110.130 Y129.510 E0.74744
G1 X110.130 Y128.969 E0.01716
G1 X94.031 Y112.870 E0.72317
G1 X94.571 Y112.870 E0.01716
G1 X110.130 Y128.429 E0.69890
G1 X110.130 Y127.889 E0.01716
G1 X95.111 Y112.870 E0.67464
G1 X95.651 Y112.870 E0.01716
G1 X110.130 Y127.349 E0.65037
G1 X110.130 Y126.808 E0.01716
G1 X96.192 Y112.870 E0.62611
G1 X96.732 Y112.870 E0.01716
G1 X110.130 Y126.268 E0.60184
G1 X110.130 Y125.728 E0.01716
G1 X97.272 Y112.870 E0.57758
G1 X97.812 Y112.870 E0.01716
G1 X110.130 Y125.188 E0.55331
G1 X110.130 Y124.648 E0.01716
G1 X98.352 Y112.870 E0.52904
G1 X98.893 Y112.870 E0.01716
G1 X110.130 Y124.107 E0.50478
G1 X110.130 Y123.567 E0.01716
G1 X99.433 Y112.870 E0.48051
G1 X99.973 Y112.870 E0.01716
G1 X110.130 Y123.027 E0.45625
G1 X110.130 Y122.487 E0.01716
G1 X100.513 Y112.870 E0.43198
G1 X101.053 Y112.870 E0.01716
G1 X110.130 Y121.947 E0.40772
G1 X110.130 Y121.406 E0.01716
G1 X101.594 Y112.870 E0.38345
G1 X102.134 Y112.870 E0.01716
G1 X110.130 Y120.866 E0.35918
G1 X110.130 Y120.326 E0.01716
G1 X102.674 Y112.870 E0.33492
G1 X103.214 Y112.870 E0.01716
G1 X110.130 Y119.786 E0.31065
G1 X110.130 Y119.246 E0.01716
G1 X103.754 Y112.870 E0.28639
G1 X104.295 Y112.870 E0.01716
G1 X110.130 Y118.705 E0.26212
G1 X110.130 Y118.165 E0.01716
G1 X104.835 Y112.870 E0.23786
G1 X105.375 Y112.870 E0.01716
G1 X110.130 Y117.625 E0.21359
G1 X110.130 Y117.085 E0.01716
G1 X105.915 Y112.870 E0.18932
G1 X106.456 Y112.870 E0.01716
G1 X110.130 Y116.544 E0.16506
G1 X110.130 Y116.004 E0.01716
G1 X106.996 Y112.870 E0.14079
G1 X107.536 Y112.870 E0.01716
G1 X110.130 Y115.464 E0.11653
G1 X110.130 Y114.924 E0.01716
G1 X108.076 Y112.870 E0.09226
G1 X108.616 Y112.870 E0.01716
G1 X110.130 Y114.384 E0.06800
G1 X110.130 Y113.843 E0.01716
G1 X109.157 Y112.870 E0.04373
G1 X109.697 Y112.870 E0.01716
G1 X110.300 Y113.473 E0.02709
G1 F8640
G1 X109.697 Y112.870 E-0.19691
G1 X109.157 Y112.870 E-0.12474
G1 X110.130 Y113.843 E-0.31790
G1 X110.130 Y114.365 E-0.12046
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000

G4 ; wait
M221 S100
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
G1 X0 ;

;
; Square 40C
;

M201 X1000 Y1000 Z200 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm/sec
M204 S1250 T1250 ; sets acceleration (S) and retract acceleration (T)
M205 X10 Y10 Z0.4 E2.5 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
M83  ; extruder relative mode

G0 Z100 ; Cooling PINDA position
M106 S255 ; Turn fan on
M860 S35; Let PINDA cool down to 35C
M107 ; Turn fan off

M104 S215 ; set extruder temp
M140 S60 ; set bed temp
M190 S60 ; wait for bed temp
M109 S215 ; wait for extruder temp
G0 X50 Y50 Z0.15 ; this is a good PINDA heating position
M860 S40 ; wait until PINDA is >= 40C
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

G1 Y15.0 F1000.0 ;
G92 E0.0
G1 X60.0 E9.0  F1000.0 ; intro line
G1 X100.0 E12.5  F1000.0 ; intro line
G92 E0.0
M221 S95
M900 K30; Filament gcode
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

G1 E-0.80000 F2100.00000
G1 Z0.600 F10800.000

; now print the square
G1 X113.826 Y110.826
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X114.000 Y110.790 E0.00620
G1 X136.000 Y110.790 E0.76831
G1 X136.174 Y110.826 E0.00620
G1 X136.210 Y111.000 E0.00620
G1 X136.210 Y133.000 E0.76831
G1 X136.174 Y133.174 E0.00620
G1 X136.000 Y133.210 E0.00620
G1 X114.000 Y133.210 E0.76831
G1 X113.826 Y133.174 E0.00620
G1 X113.790 Y133.000 E0.00620
G1 X113.790 Y111.000 E0.76831
G1 X113.808 Y110.913 E0.00337
G1 X113.814 Y110.885 E0.00118
G1 X113.894 Y110.662 F10800.000
G1 F8640
G1 X114.000 Y110.790 E-0.04823
G1 X117.083 Y110.790 E-0.71177
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X115.587 Y112.587
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X134.413 Y112.587 E0.59027
G1 X134.413 Y131.413 E0.59027
G1 X115.587 Y131.413 E0.59027
G1 X115.587 Y112.647 E0.58839
G1 X115.210 Y112.210 F10800.000
G1 F1800
G1 X134.790 Y112.210 E0.61392
G1 X134.790 Y131.790 E0.61392
G1 X115.210 Y131.790 E0.61392
G1 X115.210 Y112.270 E0.61204
G1 X115.596 Y112.314 F10800.000
G1 F8640
G1 X118.501 Y112.260 E-0.76000
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X115.700 Y130.527
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X116.303 Y131.130 E0.02708
G1 X116.843 Y131.130 E0.01716
G1 X115.870 Y130.157 E0.04372
G1 X115.870 Y129.617 E0.01716
G1 X117.383 Y131.130 E0.06799
G1 X117.924 Y131.130 E0.01716
G1 X115.870 Y129.076 E0.09226
G1 X115.870 Y128.536 E0.01716
G1 X118.464 Y131.130 E0.11652
G1 X119.004 Y131.130 E0.01716
G1 X115.870 Y127.996 E0.14079
G1 X115.870 Y127.456 E0.01716
G1 X119.544 Y131.130 E0.16505
G1 X120.085 Y131.130 E0.01716
G1 X115.870 Y126.915 E0.18932
G1 X115.870 Y126.375 E0.01716
G1 X120.625 Y131.130 E0.21358
G1 X121.165 Y131.130 E0.01716
G1 X115.870 Y125.835 E0.23785
G1 X115.870 Y125.295 E0.01716
G1 X121.705 Y131.130 E0.26212
G1 X122.245 Y131.130 E0.01716
G1 X115.870 Y124.755 E0.28638
G1 X115.870 Y124.214 E0.01716
G1 X122.786 Y131.130 E0.31065
G1 X123.326 Y131.130 E0.01716
G1 X115.870 Y123.674 E0.33491
G1 X115.870 Y123.134 E0.01716
G1 X123.866 Y131.130 E0.35918
G1 X124.406 Y131.130 E0.01716
G1 X115.870 Y122.594 E0.38344
G1 X115.870 Y122.054 E0.01716
G1 X124.946 Y131.130 E0.40771
G1 X125.487 Y131.130 E0.01716
G1 X115.870 Y121.513 E0.43198
G1 X115.870 Y120.973 E0.01716
G1 X126.027 Y131.130 E0.45624
G1 X126.567 Y131.130 E0.01716
G1 X115.870 Y120.433 E0.48051
G1 X115.870 Y119.893 E0.01716
G1 X127.107 Y131.130 E0.50477
G1 X127.648 Y131.130 E0.01716
G1 X115.870 Y119.352 E0.52904
G1 X115.870 Y118.812 E0.01716
G1 X128.188 Y131.130 E0.55330
G1 X128.728 Y131.130 E0.01716
G1 X115.870 Y118.272 E0.57757
G1 X115.870 Y117.732 E0.01716
G1 X129.268 Y131.130 E0.60184
G1 X129.808 Y131.130 E0.01716
G1 X115.870 Y117.192 E0.62610
G1 X115.870 Y116.651 E0.01716
G1 X130.349 Y131.130 E0.65037
G1 X130.889 Y131.130 E0.01716
G1 X115.870 Y116.111 E0.67463
G1 X115.870 Y115.571 E0.01716
G1 X131.429 Y131.130 E0.69890
G1 X131.969 Y131.130 E0.01716
G1 X115.870 Y115.031 E0.72316
G1 X115.870 Y114.491 E0.01716
G1 X132.509 Y131.130 E0.74743
G1 X133.050 Y131.130 E0.01716
G1 X115.870 Y113.950 E0.77170
G1 X115.870 Y113.410 E0.01716
G1 X133.590 Y131.130 E0.79596
G1 X134.130 Y131.130 E0.01716
G1 X115.870 Y112.870 E0.82023
G1 X116.410 Y112.870 E0.01716
G1 X134.130 Y130.590 E0.79597
G1 X134.130 Y130.050 E0.01716
G1 X116.950 Y112.870 E0.77170
G1 X117.490 Y112.870 E0.01716
G1 X134.130 Y129.510 E0.74744
G1 X134.130 Y128.969 E0.01716
G1 X118.031 Y112.870 E0.72317
G1 X118.571 Y112.870 E0.01716
G1 X134.130 Y128.429 E0.69890
G1 X134.130 Y127.889 E0.01716
G1 X119.111 Y112.870 E0.67464
G1 X119.651 Y112.870 E0.01716
G1 X134.130 Y127.349 E0.65037
G1 X134.130 Y126.808 E0.01716
G1 X120.192 Y112.870 E0.62611
G1 X120.732 Y112.870 E0.01716
G1 X134.130 Y126.268 E0.60184
G1 X134.130 Y125.728 E0.01716
G1 X121.272 Y112.870 E0.57758
G1 X121.812 Y112.870 E0.01716
G1 X134.130 Y125.188 E0.55331
G1 X134.130 Y124.648 E0.01716
G1 X122.352 Y112.870 E0.52904
G1 X122.893 Y112.870 E0.01716
G1 X134.130 Y124.107 E0.50478
G1 X134.130 Y123.567 E0.01716
G1 X123.433 Y112.870 E0.48051
G1 X123.973 Y112.870 E0.01716
G1 X134.130 Y123.027 E0.45625
G1 X134.130 Y122.487 E0.01716
G1 X124.513 Y112.870 E0.43198
G1 X125.053 Y112.870 E0.01716
G1 X134.130 Y121.947 E0.40772
G1 X134.130 Y121.406 E0.01716
G1 X125.594 Y112.870 E0.38345
G1 X126.134 Y112.870 E0.01716
G1 X134.130 Y120.866 E0.35918
G1 X134.130 Y120.326 E0.01716
G1 X126.674 Y112.870 E0.33492
G1 X127.214 Y112.870 E0.01716
G1 X134.130 Y119.786 E0.31065
G1 X134.130 Y119.246 E0.01716
G1 X127.754 Y112.870 E0.28639
G1 X128.295 Y112.870 E0.01716
G1 X134.130 Y118.705 E0.26212
G1 X134.130 Y118.165 E0.01716
G1 X128.835 Y112.870 E0.23786
G1 X129.375 Y112.870 E0.01716
G1 X134.130 Y117.625 E0.21359
G1 X134.130 Y117.085 E0.01716
G1 X129.915 Y112.870 E0.18932
G1 X130.456 Y112.870 E0.01716
G1 X134.130 Y116.544 E0.16506
G1 X134.130 Y116.004 E0.01716
G1 X130.996 Y112.870 E0.14079
G1 X131.536 Y112.870 E0.01716
G1 X134.130 Y115.464 E0.11653
G1 X134.130 Y114.924 E0.01716
G1 X132.076 Y112.870 E0.09226
G1 X132.616 Y112.870 E0.01716
G1 X134.130 Y114.384 E0.06800
G1 X134.130 Y113.843 E0.01716
G1 X133.157 Y112.870 E0.04373
G1 X133.697 Y112.870 E0.01716
G1 X134.300 Y113.473 E0.02709
G1 F8640
G1 X133.697 Y112.870 E-0.19691
G1 X133.157 Y112.870 E-0.12474
G1 X134.130 Y113.843 E-0.31790
G1 X134.130 Y114.365 E-0.12046
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000

G4 ; wait
M221 S100
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
G1 X0 ;

;
; Square 45C
;

M201 X1000 Y1000 Z200 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm/sec
M204 S1250 T1250 ; sets acceleration (S) and retract acceleration (T)
M205 X10 Y10 Z0.4 E2.5 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
M83  ; extruder relative mode

G0 Z100 ; Cooling PINDA position
M106 S255 ; Turn fan on
M860 S40; Let PINDA cool down to 40C
M107 ; Turn fan off

M104 S215 ; set extruder temp
M140 S60 ; set bed temp
M190 S60 ; wait for bed temp
M109 S215 ; wait for extruder temp
G0 X50 Y50 Z0.15 ; this is a good PINDA heating position
M860 S45 ; wait until PINDA is >= 45C
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

G1 Y20.0 F1000.0 ;
G92 E0.0
G1 X60.0 E9.0  F1000.0 ; intro line
G1 X100.0 E12.5  F1000.0 ; intro line
G92 E0.0
M221 S95
M900 K30; Filament gcode
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

G1 E-0.80000 F2100.00000
G1 Z0.600 F10800.000

; now print the square
G1 X137.826 Y110.826
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X138.000 Y110.790 E0.00620
G1 X160.000 Y110.790 E0.76832
G1 X160.174 Y110.826 E0.00620
G1 X160.210 Y111.000 E0.00620
G1 X160.210 Y133.000 E0.76832
G1 X160.174 Y133.174 E0.00620
G1 X160.000 Y133.210 E0.00620
G1 X138.000 Y133.210 E0.76832
G1 X137.826 Y133.174 E0.00620
G1 X137.790 Y133.000 E0.00620
G1 X137.790 Y111.000 E0.76832
G1 X137.808 Y110.913 E0.00337
G1 X137.814 Y110.885 E0.00118
G1 X137.772 Y110.657 F10800.000
G1 F8640
G1 X138.000 Y110.790 E-0.04823
G1 X141.083 Y110.790 E-0.71177
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X139.587 Y112.587
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X158.413 Y112.587 E0.59027
G1 X158.413 Y131.413 E0.59027
G1 X139.587 Y131.413 E0.59027
G1 X139.587 Y112.647 E0.58839
G1 X139.210 Y112.210 F10800.000
G1 F1800
G1 X158.790 Y112.210 E0.61392
G1 X158.790 Y131.790 E0.61392
G1 X139.210 Y131.790 E0.61392
G1 X139.210 Y112.270 E0.61204
G1 X139.596 Y112.314 F10800.000
G1 F8640
G1 X142.501 Y112.260 E-0.76000
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X139.700 Y130.527
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X140.303 Y131.130 E0.02708
G1 X140.843 Y131.130 E0.01716
G1 X139.870 Y130.157 E0.04372
G1 X139.870 Y129.617 E0.01716
G1 X141.383 Y131.130 E0.06799
G1 X141.924 Y131.130 E0.01716
G1 X139.870 Y129.076 E0.09226
G1 X139.870 Y128.536 E0.01716
G1 X142.464 Y131.130 E0.11652
G1 X143.004 Y131.130 E0.01716
G1 X139.870 Y127.996 E0.14079
G1 X139.870 Y127.456 E0.01716
G1 X143.544 Y131.130 E0.16505
G1 X144.085 Y131.130 E0.01716
G1 X139.870 Y126.915 E0.18932
G1 X139.870 Y126.375 E0.01716
G1 X144.625 Y131.130 E0.21358
G1 X145.165 Y131.130 E0.01716
G1 X139.870 Y125.835 E0.23785
G1 X139.870 Y125.295 E0.01716
G1 X145.705 Y131.130 E0.26212
G1 X146.245 Y131.130 E0.01716
G1 X139.870 Y124.755 E0.28638
G1 X139.870 Y124.214 E0.01716
G1 X146.786 Y131.130 E0.31065
G1 X147.326 Y131.130 E0.01716
G1 X139.870 Y123.674 E0.33491
G1 X139.870 Y123.134 E0.01716
G1 X147.866 Y131.130 E0.35918
G1 X148.406 Y131.130 E0.01716
G1 X139.870 Y122.594 E0.38344
G1 X139.870 Y122.054 E0.01716
G1 X148.946 Y131.130 E0.40771
G1 X149.487 Y131.130 E0.01716
G1 X139.870 Y121.513 E0.43198
G1 X139.870 Y120.973 E0.01716
G1 X150.027 Y131.130 E0.45624
G1 X150.567 Y131.130 E0.01716
G1 X139.870 Y120.433 E0.48051
G1 X139.870 Y119.893 E0.01716
G1 X151.107 Y131.130 E0.50477
G1 X151.648 Y131.130 E0.01716
G1 X139.870 Y119.352 E0.52904
G1 X139.870 Y118.812 E0.01716
G1 X152.188 Y131.130 E0.55330
G1 X152.728 Y131.130 E0.01716
G1 X139.870 Y118.272 E0.57757
G1 X139.870 Y117.732 E0.01716
G1 X153.268 Y131.130 E0.60184
G1 X153.808 Y131.130 E0.01716
G1 X139.870 Y117.192 E0.62610
G1 X139.870 Y116.651 E0.01716
G1 X154.349 Y131.130 E0.65037
G1 X154.889 Y131.130 E0.01716
G1 X139.870 Y116.111 E0.67463
G1 X139.870 Y115.571 E0.01716
G1 X155.429 Y131.130 E0.69890
G1 X155.969 Y131.130 E0.01716
G1 X139.870 Y115.031 E0.72316
G1 X139.870 Y114.491 E0.01716
G1 X156.509 Y131.130 E0.74743
G1 X157.050 Y131.130 E0.01716
G1 X139.870 Y113.950 E0.77170
G1 X139.870 Y113.410 E0.01716
G1 X157.590 Y131.130 E0.79596
G1 X158.130 Y131.130 E0.01716
G1 X139.870 Y112.870 E0.82023
G1 X140.410 Y112.870 E0.01716
G1 X158.130 Y130.590 E0.79597
G1 X158.130 Y130.050 E0.01716
G1 X140.950 Y112.870 E0.77170
G1 X141.490 Y112.870 E0.01716
G1 X158.130 Y129.510 E0.74744
G1 X158.130 Y128.969 E0.01716
G1 X142.031 Y112.870 E0.72317
G1 X142.571 Y112.870 E0.01716
G1 X158.130 Y128.429 E0.69890
G1 X158.130 Y127.889 E0.01716
G1 X143.111 Y112.870 E0.67464
G1 X143.651 Y112.870 E0.01716
G1 X158.130 Y127.349 E0.65037
G1 X158.130 Y126.808 E0.01716
G1 X144.192 Y112.870 E0.62611
G1 X144.732 Y112.870 E0.01716
G1 X158.130 Y126.268 E0.60184
G1 X158.130 Y125.728 E0.01716
G1 X145.272 Y112.870 E0.57758
G1 X145.812 Y112.870 E0.01716
G1 X158.130 Y125.188 E0.55331
G1 X158.130 Y124.648 E0.01716
G1 X146.352 Y112.870 E0.52904
G1 X146.893 Y112.870 E0.01716
G1 X158.130 Y124.107 E0.50478
G1 X158.130 Y123.567 E0.01716
G1 X147.433 Y112.870 E0.48051
G1 X147.973 Y112.870 E0.01716
G1 X158.130 Y123.027 E0.45625
G1 X158.130 Y122.487 E0.01716
G1 X148.513 Y112.870 E0.43198
G1 X149.053 Y112.870 E0.01716
G1 X158.130 Y121.947 E0.40772
G1 X158.130 Y121.406 E0.01716
G1 X149.594 Y112.870 E0.38345
G1 X150.134 Y112.870 E0.01716
G1 X158.130 Y120.866 E0.35918
G1 X158.130 Y120.326 E0.01716
G1 X150.674 Y112.870 E0.33492
G1 X151.214 Y112.870 E0.01716
G1 X158.130 Y119.786 E0.31065
G1 X158.130 Y119.246 E0.01716
G1 X151.754 Y112.870 E0.28639
G1 X152.295 Y112.870 E0.01716
G1 X158.130 Y118.705 E0.26212
G1 X158.130 Y118.165 E0.01716
G1 X152.835 Y112.870 E0.23786
G1 X153.375 Y112.870 E0.01716
G1 X158.130 Y117.625 E0.21359
G1 X158.130 Y117.085 E0.01716
G1 X153.915 Y112.870 E0.18932
G1 X154.456 Y112.870 E0.01716
G1 X158.130 Y116.544 E0.16506
G1 X158.130 Y116.004 E0.01716
G1 X154.996 Y112.870 E0.14079
G1 X155.536 Y112.870 E0.01716
G1 X158.130 Y115.464 E0.11653
G1 X158.130 Y114.924 E0.01716
G1 X156.076 Y112.870 E0.09226
G1 X156.616 Y112.870 E0.01716
G1 X158.130 Y114.384 E0.06800
G1 X158.130 Y113.843 E0.01716
G1 X157.157 Y112.870 E0.04373
G1 X157.697 Y112.870 E0.01716
G1 X158.300 Y113.473 E0.02709
G1 F8640
G1 X157.697 Y112.870 E-0.19691
G1 X157.157 Y112.870 E-0.12474
G1 X158.130 Y113.843 E-0.31790
G1 X158.130 Y114.365 E-0.12046
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000

G4 ; wait
M221 S100
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
G1 X0 ;

;
; Square 50
;

M201 X1000 Y1000 Z200 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm/sec
M204 S1250 T1250 ; sets acceleration (S) and retract acceleration (T)
M205 X10 Y10 Z0.4 E2.5 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
M83  ; extruder relative mode

G0 Z100 ; Cooling PINDA position
M106 S255 ; Turn fan on
M860 S45; Let PINDA cool down to 45C
M107 ; Turn fan off

M104 S215 ; set extruder temp
M140 S80 ; set bed temp
M190 S80 ; wait for bed temp
M109 S215 ; wait for extruder temp
G0 X50 Y50 Z0.15 ; this is a good PINDA heating position
M860 S50 ; wait until PINDA is >= 50C
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

G1 Y25.0 F1000.0 ;
G92 E0.0
G1 X60.0 E9.0  F1000.0 ; intro line
G1 X100.0 E12.5  F1000.0 ; intro line
G92 E0.0
M221 S95
M900 K30; Filament gcode
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

G1 E-0.80000 F2100.00000
G1 Z0.600 F10800.000

; now print the square
G1 X89.826 Y76.826
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X90.000 Y76.790 E0.00620
G1 X112.000 Y76.790 E0.76831
G1 X112.174 Y76.826 E0.00620
G1 X112.210 Y77.000 E0.00620
G1 X112.210 Y99.000 E0.76831
G1 X112.174 Y99.174 E0.00620
G1 X112.000 Y99.210 E0.00620
G1 X90.000 Y99.210 E0.76831
G1 X89.826 Y99.174 E0.00620
G1 X89.790 Y99.000 E0.00620
G1 X89.790 Y77.000 E0.76831
G1 X89.808 Y76.913 E0.00337
G1 X89.814 Y76.885 E0.00118
G1 X89.933 Y76.685 F10800.000
G1 F8640
G1 X90.000 Y76.790 E-0.04823
G1 X93.083 Y76.790 E-0.71177
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X91.587 Y78.587
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X110.413 Y78.587 E0.59027
G1 X110.413 Y97.413 E0.59027
G1 X91.587 Y97.413 E0.59027
G1 X91.587 Y78.647 E0.58839
G1 X91.210 Y78.210 F10800.000
G1 F1800
G1 X110.790 Y78.210 E0.61392
G1 X110.790 Y97.790 E0.61392
G1 X91.210 Y97.790 E0.61392
G1 X91.210 Y78.270 E0.61204
G1 X91.596 Y78.314 F10800.000
G1 F8640
G1 X94.501 Y78.260 E-0.76000
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X91.700 Y96.527
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X92.303 Y97.130 E0.02708
G1 X92.843 Y97.130 E0.01716
G1 X91.870 Y96.157 E0.04372
G1 X91.870 Y95.617 E0.01716
G1 X93.383 Y97.130 E0.06799
G1 X93.924 Y97.130 E0.01716
G1 X91.870 Y95.076 E0.09226
G1 X91.870 Y94.536 E0.01716
G1 X94.464 Y97.130 E0.11652
G1 X95.004 Y97.130 E0.01716
G1 X91.870 Y93.996 E0.14079
G1 X91.870 Y93.456 E0.01716
G1 X95.544 Y97.130 E0.16505
G1 X96.085 Y97.130 E0.01716
G1 X91.870 Y92.915 E0.18932
G1 X91.870 Y92.375 E0.01716
G1 X96.625 Y97.130 E0.21358
G1 X97.165 Y97.130 E0.01716
G1 X91.870 Y91.835 E0.23785
G1 X91.870 Y91.295 E0.01716
G1 X97.705 Y97.130 E0.26212
G1 X98.245 Y97.130 E0.01716
G1 X91.870 Y90.755 E0.28638
G1 X91.870 Y90.214 E0.01716
G1 X98.786 Y97.130 E0.31065
G1 X99.326 Y97.130 E0.01716
G1 X91.870 Y89.674 E0.33491
G1 X91.870 Y89.134 E0.01716
G1 X99.866 Y97.130 E0.35918
G1 X100.406 Y97.130 E0.01716
G1 X91.870 Y88.594 E0.38344
G1 X91.870 Y88.054 E0.01716
G1 X100.946 Y97.130 E0.40771
G1 X101.487 Y97.130 E0.01716
G1 X91.870 Y87.513 E0.43198
G1 X91.870 Y86.973 E0.01716
G1 X102.027 Y97.130 E0.45624
G1 X102.567 Y97.130 E0.01716
G1 X91.870 Y86.433 E0.48051
G1 X91.870 Y85.893 E0.01716
G1 X103.107 Y97.130 E0.50477
G1 X103.648 Y97.130 E0.01716
G1 X91.870 Y85.352 E0.52904
G1 X91.870 Y84.812 E0.01716
G1 X104.188 Y97.130 E0.55330
G1 X104.728 Y97.130 E0.01716
G1 X91.870 Y84.272 E0.57757
G1 X91.870 Y83.732 E0.01716
G1 X105.268 Y97.130 E0.60184
G1 X105.808 Y97.130 E0.01716
G1 X91.870 Y83.192 E0.62610
G1 X91.870 Y82.651 E0.01716
G1 X106.349 Y97.130 E0.65037
G1 X106.889 Y97.130 E0.01716
G1 X91.870 Y82.111 E0.67463
G1 X91.870 Y81.571 E0.01716
G1 X107.429 Y97.130 E0.69890
G1 X107.969 Y97.130 E0.01716
G1 X91.870 Y81.031 E0.72316
G1 X91.870 Y80.491 E0.01716
G1 X108.509 Y97.130 E0.74743
G1 X109.050 Y97.130 E0.01716
G1 X91.870 Y79.950 E0.77170
G1 X91.870 Y79.410 E0.01716
G1 X109.590 Y97.130 E0.79596
G1 X110.130 Y97.130 E0.01716
G1 X91.870 Y78.870 E0.82023
G1 X92.410 Y78.870 E0.01716
G1 X110.130 Y96.590 E0.79597
G1 X110.130 Y96.050 E0.01716
G1 X92.950 Y78.870 E0.77170
G1 X93.490 Y78.870 E0.01716
G1 X110.130 Y95.510 E0.74744
G1 X110.130 Y94.969 E0.01716
G1 X94.031 Y78.870 E0.72317
G1 X94.571 Y78.870 E0.01716
G1 X110.130 Y94.429 E0.69890
G1 X110.130 Y93.889 E0.01716
G1 X95.111 Y78.870 E0.67464
G1 X95.651 Y78.870 E0.01716
G1 X110.130 Y93.349 E0.65037
G1 X110.130 Y92.808 E0.01716
G1 X96.192 Y78.870 E0.62611
G1 X96.732 Y78.870 E0.01716
G1 X110.130 Y92.268 E0.60184
G1 X110.130 Y91.728 E0.01716
G1 X97.272 Y78.870 E0.57758
G1 X97.812 Y78.870 E0.01716
G1 X110.130 Y91.188 E0.55331
G1 X110.130 Y90.648 E0.01716
G1 X98.352 Y78.870 E0.52904
G1 X98.893 Y78.870 E0.01716
G1 X110.130 Y90.107 E0.50478
G1 X110.130 Y89.567 E0.01716
G1 X99.433 Y78.870 E0.48051
G1 X99.973 Y78.870 E0.01716
G1 X110.130 Y89.027 E0.45625
G1 X110.130 Y88.487 E0.01716
G1 X100.513 Y78.870 E0.43198
G1 X101.053 Y78.870 E0.01716
G1 X110.130 Y87.947 E0.40772
G1 X110.130 Y87.406 E0.01716
G1 X101.594 Y78.870 E0.38345
G1 X102.134 Y78.870 E0.01716
G1 X110.130 Y86.866 E0.35918
G1 X110.130 Y86.326 E0.01716
G1 X102.674 Y78.870 E0.33492
G1 X103.214 Y78.870 E0.01716
G1 X110.130 Y85.786 E0.31065
G1 X110.130 Y85.246 E0.01716
G1 X103.754 Y78.870 E0.28639
G1 X104.295 Y78.870 E0.01716
G1 X110.130 Y84.705 E0.26212
G1 X110.130 Y84.165 E0.01716
G1 X104.835 Y78.870 E0.23786
G1 X105.375 Y78.870 E0.01716
G1 X110.130 Y83.625 E0.21359
G1 X110.130 Y83.085 E0.01716
G1 X105.915 Y78.870 E0.18932
G1 X106.456 Y78.870 E0.01716
G1 X110.130 Y82.544 E0.16506
G1 X110.130 Y82.004 E0.01716
G1 X106.996 Y78.870 E0.14079
G1 X107.536 Y78.870 E0.01716
G1 X110.130 Y81.464 E0.11653
G1 X110.130 Y80.924 E0.01716
G1 X108.076 Y78.870 E0.09226
G1 X108.616 Y78.870 E0.01716
G1 X110.130 Y80.384 E0.06800
G1 X110.130 Y79.843 E0.01716
G1 X109.157 Y78.870 E0.04373
G1 X109.697 Y78.870 E0.01716
G1 X110.300 Y79.473 E0.02709
G1 F8640;_WIPE
G1 X109.697 Y78.870 E-0.19691
G1 F8640;_WIPE
G1 X109.157 Y78.870 E-0.12474
G1 F8640;_WIPE
G1 X110.130 Y79.843 E-0.31790
G1 F8640;_WIPE
G1 X110.130 Y80.365 E-0.12046
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000

G4 ; wait
M221 S100
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
G1 X0 ;

;
; Square 55
;

M201 X1000 Y1000 Z200 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm/sec
M204 S1250 T1250 ; sets acceleration (S) and retract acceleration (T)
M205 X10 Y10 Z0.4 E2.5 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
M83  ; extruder relative mode

G0 Z100 ; Cooling PINDA position
M106 S255 ; Turn fan on
M860 S50; Let PINDA cool down to 50C
M107 ; Turn fan off

M104 S215 ; set extruder temp
M140 S90 ; set bed temp
M190 S90 ; wait for bed temp
M109 S215 ; wait for extruder temp
G0 X50 Y50 Z0.15 ; this is a good PINDA heating position
M860 S55 ; wait until PINDA is >= 55C
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

G1 Y30.0 F1000.0 ;
G92 E0.0
G1 X60.0 E9.0  F1000.0 ; intro line
G1 X100.0 E12.5  F1000.0 ; intro line
G92 E0.0
M221 S95
M900 K30; Filament gcode
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

G1 E-0.80000 F2100.00000
G1 Z0.600 F10800.000

; now print the square
G1 X113.826 Y76.826
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X114.000 Y76.790 E0.00620
G1 X136.000 Y76.790 E0.76831
G1 X136.174 Y76.826 E0.00620
G1 X136.210 Y77.000 E0.00620
G1 X136.210 Y99.000 E0.76831
G1 X136.174 Y99.174 E0.00620
G1 X136.000 Y99.210 E0.00620
G1 X114.000 Y99.210 E0.76831
G1 X113.826 Y99.174 E0.00620
G1 X113.790 Y99.000 E0.00620
G1 X113.790 Y77.000 E0.76831
G1 X113.808 Y76.913 E0.00337
G1 X113.814 Y76.885 E0.00118
G1 X113.894 Y76.662 F10800.000
G1 F8640
G1 X114.000 Y76.790 E-0.04823
G1 X117.083 Y76.790 E-0.71177
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X115.587 Y78.587
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X134.413 Y78.587 E0.59027
G1 X134.413 Y97.413 E0.59027
G1 X115.587 Y97.413 E0.59027
G1 X115.587 Y78.647 E0.58839
G1 X115.210 Y78.210 F10800.000
G1 F1800
G1 X134.790 Y78.210 E0.61392
G1 X134.790 Y97.790 E0.61392
G1 X115.210 Y97.790 E0.61392
G1 X115.210 Y78.270 E0.61204
G1 X115.596 Y78.314 F10800.000
G1 F8640
G1 X118.501 Y78.260 E-0.76000
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X115.700 Y96.527
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X116.303 Y97.130 E0.02708
G1 X116.843 Y97.130 E0.01716
G1 X115.870 Y96.157 E0.04372
G1 X115.870 Y95.617 E0.01716
G1 X117.383 Y97.130 E0.06799
G1 X117.924 Y97.130 E0.01716
G1 X115.870 Y95.076 E0.09226
G1 X115.870 Y94.536 E0.01716
G1 X118.464 Y97.130 E0.11652
G1 X119.004 Y97.130 E0.01716
G1 X115.870 Y93.996 E0.14079
G1 X115.870 Y93.456 E0.01716
G1 X119.544 Y97.130 E0.16505
G1 X120.085 Y97.130 E0.01716
G1 X115.870 Y92.915 E0.18932
G1 X115.870 Y92.375 E0.01716
G1 X120.625 Y97.130 E0.21358
G1 X121.165 Y97.130 E0.01716
G1 X115.870 Y91.835 E0.23785
G1 X115.870 Y91.295 E0.01716
G1 X121.705 Y97.130 E0.26212
G1 X122.245 Y97.130 E0.01716
G1 X115.870 Y90.755 E0.28638
G1 X115.870 Y90.214 E0.01716
G1 X122.786 Y97.130 E0.31065
G1 X123.326 Y97.130 E0.01716
G1 X115.870 Y89.674 E0.33491
G1 X115.870 Y89.134 E0.01716
G1 X123.866 Y97.130 E0.35918
G1 X124.406 Y97.130 E0.01716
G1 X115.870 Y88.594 E0.38344
G1 X115.870 Y88.054 E0.01716
G1 X124.946 Y97.130 E0.40771
G1 X125.487 Y97.130 E0.01716
G1 X115.870 Y87.513 E0.43198
G1 X115.870 Y86.973 E0.01716
G1 X126.027 Y97.130 E0.45624
G1 X126.567 Y97.130 E0.01716
G1 X115.870 Y86.433 E0.48051
G1 X115.870 Y85.893 E0.01716
G1 X127.107 Y97.130 E0.50477
G1 X127.648 Y97.130 E0.01716
G1 X115.870 Y85.352 E0.52904
G1 X115.870 Y84.812 E0.01716
G1 X128.188 Y97.130 E0.55330
G1 X128.728 Y97.130 E0.01716
G1 X115.870 Y84.272 E0.57757
G1 X115.870 Y83.732 E0.01716
G1 X129.268 Y97.130 E0.60184
G1 X129.808 Y97.130 E0.01716
G1 X115.870 Y83.192 E0.62610
G1 X115.870 Y82.651 E0.01716
G1 X130.349 Y97.130 E0.65037
G1 X130.889 Y97.130 E0.01716
G1 X115.870 Y82.111 E0.67463
G1 X115.870 Y81.571 E0.01716
G1 X131.429 Y97.130 E0.69890
G1 X131.969 Y97.130 E0.01716
G1 X115.870 Y81.031 E0.72316
G1 X115.870 Y80.491 E0.01716
G1 X132.509 Y97.130 E0.74743
G1 X133.050 Y97.130 E0.01716
G1 X115.870 Y79.950 E0.77170
G1 X115.870 Y79.410 E0.01716
G1 X133.590 Y97.130 E0.79596
G1 X134.130 Y97.130 E0.01716
G1 X115.870 Y78.870 E0.82023
G1 X116.410 Y78.870 E0.01716
G1 X134.130 Y96.590 E0.79597
G1 X134.130 Y96.050 E0.01716
G1 X116.950 Y78.870 E0.77170
G1 X117.490 Y78.870 E0.01716
G1 X134.130 Y95.510 E0.74744
G1 X134.130 Y94.969 E0.01716
G1 X118.031 Y78.870 E0.72317
G1 X118.571 Y78.870 E0.01716
G1 X134.130 Y94.429 E0.69890
G1 X134.130 Y93.889 E0.01716
G1 X119.111 Y78.870 E0.67464
G1 X119.651 Y78.870 E0.01716
G1 X134.130 Y93.349 E0.65037
G1 X134.130 Y92.808 E0.01716
G1 X120.192 Y78.870 E0.62611
G1 X120.732 Y78.870 E0.01716
G1 X134.130 Y92.268 E0.60184
G1 X134.130 Y91.728 E0.01716
G1 X121.272 Y78.870 E0.57758
G1 X121.812 Y78.870 E0.01716
G1 X134.130 Y91.188 E0.55331
G1 X134.130 Y90.648 E0.01716
G1 X122.352 Y78.870 E0.52904
G1 X122.893 Y78.870 E0.01716
G1 X134.130 Y90.107 E0.50478
G1 X134.130 Y89.567 E0.01716
G1 X123.433 Y78.870 E0.48051
G1 X123.973 Y78.870 E0.01716
G1 X134.130 Y89.027 E0.45625
G1 X134.130 Y88.487 E0.01716
G1 X124.513 Y78.870 E0.43198
G1 X125.053 Y78.870 E0.01716
G1 X134.130 Y87.947 E0.40772
G1 X134.130 Y87.406 E0.01716
G1 X125.594 Y78.870 E0.38345
G1 X126.134 Y78.870 E0.01716
G1 X134.130 Y86.866 E0.35918
G1 X134.130 Y86.326 E0.01716
G1 X126.674 Y78.870 E0.33492
G1 X127.214 Y78.870 E0.01716
G1 X134.130 Y85.786 E0.31065
G1 X134.130 Y85.246 E0.01716
G1 X127.754 Y78.870 E0.28639
G1 X128.295 Y78.870 E0.01716
G1 X134.130 Y84.705 E0.26212
G1 X134.130 Y84.165 E0.01716
G1 X128.835 Y78.870 E0.23786
G1 X129.375 Y78.870 E0.01716
G1 X134.130 Y83.625 E0.21359
G1 X134.130 Y83.085 E0.01716
G1 X129.915 Y78.870 E0.18932
G1 X130.456 Y78.870 E0.01716
G1 X134.130 Y82.544 E0.16506
G1 X134.130 Y82.004 E0.01716
G1 X130.996 Y78.870 E0.14079
G1 X131.536 Y78.870 E0.01716
G1 X134.130 Y81.464 E0.11653
G1 X134.130 Y80.924 E0.01716
G1 X132.076 Y78.870 E0.09226
G1 X132.616 Y78.870 E0.01716
G1 X134.130 Y80.384 E0.06800
G1 X134.130 Y79.843 E0.01716
G1 X133.157 Y78.870 E0.04373
G1 X133.697 Y78.870 E0.01716
G1 X134.300 Y79.473 E0.02709
G1 F8640
G1 X133.697 Y78.870 E-0.19691
G1 X133.157 Y78.870 E-0.12474
G1 X134.130 Y79.843 E-0.31790
G1 X134.130 Y80.365 E-0.12046
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000

G4 ; wait
M221 S100
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
G1 X0 ;

;
; Square 60
;

M201 X1000 Y1000 Z200 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm/sec
M204 S1250 T1250 ; sets acceleration (S) and retract acceleration (T)
M205 X10 Y10 Z0.4 E2.5 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
M83  ; extruder relative mode

G0 Z100 ; Cooling PINDA position
M106 S255 ; Turn fan on
M860 S55; Let PINDA cool down to 55C
M107 ; Turn fan off

M104 S215 ; set extruder temp
M140 S100 ; set bed temp
M190 S100 ; wait for bed temp
M109 S215 ; wait for extruder temp
G0 X50 Y50 Z0.15 ; this is a good PINDA heating position
M860 S60 ; wait until PINDA is >= 60C
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

G1 Y35.0 F1000.0 ;
G92 E0.0
G1 X60.0 E9.0  F1000.0 ; intro line
G1 X100.0 E12.5  F1000.0 ; intro line
G92 E0.0
M221 S95
M900 K30; Filament gcode
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

G1 E-0.80000 F2100.00000
G1 Z0.600 F10800.000

; now print the square
G1 X138.000 Y99.210
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X137.826 Y99.174 E0.00620
G1 X137.790 Y99.000 E0.00620
G1 X137.790 Y77.000 E0.76832
G1 X137.808 Y76.913 E0.00337
G1 X137.826 Y76.826 E0.00363
G1 X138.000 Y76.790 E0.00620
G1 X160.000 Y76.790 E0.76832
G1 X160.174 Y76.826 E0.00620
G1 X160.210 Y77.000 E0.00620
G1 X160.210 Y99.000 E0.76832
G1 X160.174 Y99.174 E0.00620
G1 X160.000 Y99.210 E0.00620
G1 X138.060 Y99.210 E0.76622
G1 X137.891 Y99.350 F10800.000
G1 F8640
G1 X137.826 Y99.174 E-0.05466
G1 X137.790 Y99.000 E-0.04102
G1 X137.790 Y96.123 E-0.66432
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X139.587 Y97.413
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X139.587 Y78.587 E0.59027
G1 X158.413 Y78.587 E0.59027
G1 X158.413 Y97.413 E0.59027
G1 X139.647 Y97.413 E0.58839
G1 X139.210 Y97.790 F10800.000
G1 F1800
G1 X139.210 Y78.210 E0.61392
G1 X158.790 Y78.210 E0.61392
G1 X158.790 Y97.790 E0.61392
G1 X139.270 Y97.790 E0.61204
G1 X139.314 Y97.404 F10800.000
G1 F8640
G1 X139.260 Y94.499 E-0.76000
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000
G1 X139.700 Y96.527
G1 Z0.200
G1 E0.80000 F2100.00000
G1 F1800
G1 X140.303 Y97.130 E0.02708
G1 X140.843 Y97.130 E0.01716
G1 X139.870 Y96.157 E0.04372
G1 X139.870 Y95.617 E0.01716
G1 X141.383 Y97.130 E0.06799
G1 X141.924 Y97.130 E0.01716
G1 X139.870 Y95.076 E0.09226
G1 X139.870 Y94.536 E0.01716
G1 X142.464 Y97.130 E0.11652
G1 X143.004 Y97.130 E0.01716
G1 X139.870 Y93.996 E0.14079
G1 X139.870 Y93.456 E0.01716
G1 X143.544 Y97.130 E0.16505
G1 X144.085 Y97.130 E0.01716
G1 X139.870 Y92.915 E0.18932
G1 X139.870 Y92.375 E0.01716
G1 X144.625 Y97.130 E0.21358
G1 X145.165 Y97.130 E0.01716
G1 X139.870 Y91.835 E0.23785
G1 X139.870 Y91.295 E0.01716
G1 X145.705 Y97.130 E0.26212
G1 X146.245 Y97.130 E0.01716
G1 X139.870 Y90.755 E0.28638
G1 X139.870 Y90.214 E0.01716
G1 X146.786 Y97.130 E0.31065
G1 X147.326 Y97.130 E0.01716
G1 X139.870 Y89.674 E0.33491
G1 X139.870 Y89.134 E0.01716
G1 X147.866 Y97.130 E0.35918
G1 X148.406 Y97.130 E0.01716
G1 X139.870 Y88.594 E0.38344
G1 X139.870 Y88.054 E0.01716
G1 X148.946 Y97.130 E0.40771
G1 X149.487 Y97.130 E0.01716
G1 X139.870 Y87.513 E0.43198
G1 X139.870 Y86.973 E0.01716
G1 X150.027 Y97.130 E0.45624
G1 X150.567 Y97.130 E0.01716
G1 X139.870 Y86.433 E0.48051
G1 X139.870 Y85.893 E0.01716
G1 X151.107 Y97.130 E0.50477
G1 X151.648 Y97.130 E0.01716
G1 X139.870 Y85.352 E0.52904
G1 X139.870 Y84.812 E0.01716
G1 X152.188 Y97.130 E0.55330
G1 X152.728 Y97.130 E0.01716
G1 X139.870 Y84.272 E0.57757
G1 X139.870 Y83.732 E0.01716
G1 X153.268 Y97.130 E0.60184
G1 X153.808 Y97.130 E0.01716
G1 X139.870 Y83.192 E0.62610
G1 X139.870 Y82.651 E0.01716
G1 X154.349 Y97.130 E0.65037
G1 X154.889 Y97.130 E0.01716
G1 X139.870 Y82.111 E0.67463
G1 X139.870 Y81.571 E0.01716
G1 X155.429 Y97.130 E0.69890
G1 X155.969 Y97.130 E0.01716
G1 X139.870 Y81.031 E0.72316
G1 X139.870 Y80.491 E0.01716
G1 X156.509 Y97.130 E0.74743
G1 X157.050 Y97.130 E0.01716
G1 X139.870 Y79.950 E0.77170
G1 X139.870 Y79.410 E0.01716
G1 X157.590 Y97.130 E0.79596
G1 X158.130 Y97.130 E0.01716
G1 X139.870 Y78.870 E0.82023
G1 X140.410 Y78.870 E0.01716
G1 X158.130 Y96.590 E0.79597
G1 X158.130 Y96.050 E0.01716
G1 X140.950 Y78.870 E0.77170
G1 X141.490 Y78.870 E0.01716
G1 X158.130 Y95.510 E0.74744
G1 X158.130 Y94.969 E0.01716
G1 X142.031 Y78.870 E0.72317
G1 X142.571 Y78.870 E0.01716
G1 X158.130 Y94.429 E0.69890
G1 X158.130 Y93.889 E0.01716
G1 X143.111 Y78.870 E0.67464
G1 X143.651 Y78.870 E0.01716
G1 X158.130 Y93.349 E0.65037
G1 X158.130 Y92.808 E0.01716
G1 X144.192 Y78.870 E0.62611
G1 X144.732 Y78.870 E0.01716
G1 X158.130 Y92.268 E0.60184
G1 X158.130 Y91.728 E0.01716
G1 X145.272 Y78.870 E0.57758
G1 X145.812 Y78.870 E0.01716
G1 X158.130 Y91.188 E0.55331
G1 X158.130 Y90.648 E0.01716
G1 X146.352 Y78.870 E0.52904
G1 X146.893 Y78.870 E0.01716
G1 X158.130 Y90.107 E0.50478
G1 X158.130 Y89.567 E0.01716
G1 X147.433 Y78.870 E0.48051
G1 X147.973 Y78.870 E0.01716
G1 X158.130 Y89.027 E0.45625
G1 X158.130 Y88.487 E0.01716
G1 X148.513 Y78.870 E0.43198
G1 X149.053 Y78.870 E0.01716
G1 X158.130 Y87.947 E0.40772
G1 X158.130 Y87.406 E0.01716
G1 X149.594 Y78.870 E0.38345
G1 X150.134 Y78.870 E0.01716
G1 X158.130 Y86.866 E0.35918
G1 X158.130 Y86.326 E0.01716
G1 X150.674 Y78.870 E0.33492
G1 X151.214 Y78.870 E0.01716
G1 X158.130 Y85.786 E0.31065
G1 X158.130 Y85.246 E0.01716
G1 X151.754 Y78.870 E0.28639
G1 X152.295 Y78.870 E0.01716
G1 X158.130 Y84.705 E0.26212
G1 X158.130 Y84.165 E0.01716
G1 X152.835 Y78.870 E0.23786
G1 X153.375 Y78.870 E0.01716
G1 X158.130 Y83.625 E0.21359
G1 X158.130 Y83.085 E0.01716
G1 X153.915 Y78.870 E0.18932
G1 X154.456 Y78.870 E0.01716
G1 X158.130 Y82.544 E0.16506
G1 X158.130 Y82.004 E0.01716
G1 X154.996 Y78.870 E0.14079
G1 X155.536 Y78.870 E0.01716
G1 X158.130 Y81.464 E0.11653
G1 X158.130 Y80.924 E0.01716
G1 X156.076 Y78.870 E0.09226
G1 X156.616 Y78.870 E0.01716
G1 X158.130 Y80.384 E0.06800
G1 X158.130 Y79.843 E0.01716
G1 X157.157 Y78.870 E0.04373
G1 X157.697 Y78.870 E0.01716
G1 X158.300 Y79.473 E0.02709
G1 F8640
G1 X157.697 Y78.870 E-0.19691
G1 X157.157 Y78.870 E-0.12474
G1 X158.130 Y79.843 E-0.31790
G1 X158.130 Y80.365 E-0.12046
G1 E-0.04000 F2100.00000
G1 Z0.800 F10800.000

; Filament-specific end gcode
G4 ; wait
M221 S100
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107 ; turn off fan
G1 X0 Y200; home X axis
M84 ; disable motors
