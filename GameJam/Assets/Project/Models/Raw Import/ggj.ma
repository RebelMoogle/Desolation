//Maya ASCII 2013 scene
//Name: ggj.ma
//Last modified: Sat, Jan 26, 2013 10:54:37 AM
//Codeset: 1252
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l inch -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013";
fileInfo "cutIdentifier" "201202220747-825128";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 429.93372615465046 102.47078140960213 -1.5898893912121026 ;
	setAttr ".r" -type "double3" -10.538352731732509 1176.1999999994441 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.03937007874015748;
	setAttr ".fcp" 3937.0078740157478;
	setAttr ".fd" 1.9685039370078738;
	setAttr ".coi" 411.73085171191605;
	setAttr ".ow" 3.9370078740157477;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 277.04105166022811 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 39.40944881889763 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.03937007874015748;
	setAttr ".fcp" 3937.0078740157478;
	setAttr ".fd" 1.9685039370078738;
	setAttr ".coi" 39.40944881889763;
	setAttr ".ow" 11.811023622047241;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 39.40944881889763 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.03937007874015748;
	setAttr ".fcp" 3937.0078740157478;
	setAttr ".fd" 1.9685039370078738;
	setAttr ".coi" 39.40944881889763;
	setAttr ".ow" 11.811023622047241;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 39.40944881889763 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.03937007874015748;
	setAttr ".fcp" 3937.0078740157478;
	setAttr ".fd" 1.9685039370078738;
	setAttr ".coi" 39.40944881889763;
	setAttr ".ow" 11.811023622047241;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
createNode transform -n "transform15" -p "pPlane1";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape1" -p "transform15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane2";
createNode transform -n "transform1" -p "pPlane2";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape2" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane3";
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "transform2" -p "pPlane3";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape3" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 121 ".uvst[0].uvsp[0:120]" -type "float2" 0.1 0.25 0.2 0.25
		 0.30000001 0.25 0.40000001 0.25 0.5 0.25 0.60000002 0.25 0.69999999 0.25 0.80000001
		 0.25 0.90000004 0.25 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001
		 0.30000001 0.5 0.30000001 0.60000002 0.30000001 0.69999999 0.30000001 0.80000001
		 0.30000001 0.90000004 0.30000001 0.1 0.34999999 0.2 0.34999999 0.30000001 0.34999999
		 0.40000001 0.34999999 0.5 0.34999999 0.60000002 0.34999999 0.69999999 0.34999999
		 0.80000001 0.34999999 0.90000004 0.34999999 0 0.40000001 0.1 0.40000001 0.2 0.40000001
		 0.30000001 0.40000001 0.40000001 0.40000001 0.5 0.40000001 0.60000002 0.40000001
		 0.69999999 0.40000001 0.80000001 0.40000001 0.90000004 0.40000001 1 0.40000001 0
		 0.45000002 0.1 0.45000002 0.2 0.45000002 0.30000001 0.45000002 0.40000001 0.45000002
		 0.5 0.45000002 0.60000002 0.45000002 0.69999999 0.45000002 0.80000001 0.45000002
		 0.90000004 0.45000002 1 0.45000002 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5 0.40000001
		 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.80000001 0.5 0.90000004 0.5 1 0.5 0 0.25
		 1 0.25 0 0.30000001 1 0.30000001 0 0.34999999 1 0.34999999 0.1 0.40000001 0 0.40000001
		 0.2 0.40000001 0.30000001 0.40000001 0.40000001 0.40000001 0.5 0.40000001 0.60000002
		 0.40000001 0.69999999 0.40000001 0.80000001 0.40000001 0.90000004 0.40000001 1 0.40000001
		 0 0.40220618 0.1 0.40220618 0.2 0.40220618 0.30000004 0.40220618 0.40000001 0.40220618
		 0.5 0.40220618 0.60000008 0.40220618 0.69999999 0.40220618 0.80000001 0.40220618
		 0.90000004 0.40220618 1 0.40220618 1 0.40000001 0.90000004 0.40000001 0.80000001
		 0.40000001 0.69999999 0.40000001 0.60000008 0.40000001 0.5 0.40000001 0.40000001
		 0.40000001 0.30000004 0.40000001 0.2 0.40000001 0.1 0.40000001 0 0.40000001 0 0.40091708
		 0.1 0.40091708 0.2 0.40091708 0.30000001 0.40091708 0.40000001 0.40091708 0.5 0.40091708
		 0.60000002 0.40091708 0.69999999 0.40091708 0.80000001 0.40091708 0.89999998 0.40091708
		 1 0.40091708 1 0.40000001 0.89999998 0.40000001 0.80000001 0.40000001 0.69999999
		 0.40000001 0.60000002 0.40000001 0.5 0.40000001 0.40000001 0.40000001 0.30000001
		 0.40000001 0.2 0.40000001 0.1 0.40000001 0 0.40000001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".vt[0:120]"  -239.99998474 -0.35435984 -72.18115234 -192 -0.35435984 -72.18115234
		 -143.99998474 -0.35435984 -72.18115234 -95.99998474 -0.35435984 -72.18115234 -47.99999237 -0.35435984 -72.18115234
		 0 -0.35435984 -72.18115234 48.000019073486 -0.35435984 -72.18115234 96.000007629395 -0.35435984 -72.18115234
		 144 -0.35435984 -72.18115234 192.000015258789 -0.35435984 -72.18115234 239.99998474 -0.35435984 -72.18115234
		 -239.99998474 2.1316284e-014 -96.000007629395 -192 2.1316284e-014 -96.000007629395
		 -143.99998474 2.1316284e-014 -96.000007629395 -95.99998474 2.1316284e-014 -96.000007629395
		 -47.99999237 2.1316284e-014 -96.000007629395 0 2.1316284e-014 -96.000007629395 48.000019073486 2.1316284e-014 -96.000007629395
		 96.000007629395 2.1316284e-014 -96.000007629395 144 2.1316284e-014 -96.000007629395
		 192.000015258789 2.1316284e-014 -96.000007629395 239.99998474 2.1316284e-014 -96.000007629395
		 -239.99998474 2.6645351e-014 -119.99999237 -192 2.6645351e-014 -119.99999237 -143.99998474 2.6645351e-014 -119.99999237
		 -95.99998474 2.6645351e-014 -119.99999237 -47.99999237 2.6645351e-014 -119.99999237
		 0 2.6645351e-014 -119.99999237 48.000019073486 2.6645351e-014 -119.99999237 96.000007629395 2.6645351e-014 -119.99999237
		 144 2.6645351e-014 -119.99999237 192.000015258789 2.6645351e-014 -119.99999237 239.99998474 2.6645351e-014 -119.99999237
		 -192 -28.40310097 -1.1189649e-014 -239.99998474 -28.40310097 -1.0490296e-014 -143.99998474 -28.40310097 -1.1189649e-014
		 -95.99998474 -28.40310097 -1.1189649e-014 -47.99999237 -28.40310097 -1.1189649e-014
		 0 -28.40310097 -1.1189649e-014 48.000019073486 -28.40310097 -1.1189649e-014 96.000007629395 -28.40310097 -1.1189649e-014
		 144 -28.40310097 -1.1189649e-014 192.000015258789 -28.40310097 -1.1189649e-014 239.99998474 -28.40310097 -1.1189649e-014
		 -192 -28.40310097 -24.000009536743 -239.99998474 -28.40310097 -24.000009536743 -143.99998474 -28.40310097 -24.000009536743
		 -95.99998474 -28.40310097 -24.000009536743 -47.99999237 -28.40310097 -24.000009536743
		 0 -28.40310097 -24.000009536743 48.000019073486 -28.40310097 -24.000009536743 96.000007629395 -28.40310097 -24.000009536743
		 144 -28.40310097 -24.000009536743 192.000015258789 -28.40310097 -24.000009536743
		 239.99998474 -28.40310097 -24.000009536743 -192 -28.40310097 -48.000003814697 -239.99998474 -28.40310097 -48.000003814697
		 -143.99998474 -28.40310097 -48.000003814697 -95.99998474 -28.40310097 -48.000003814697
		 -47.99999237 -28.40310097 -48.000003814697 0 -28.40310097 -48.000003814697 48.000019073486 -28.40310097 -48.000003814697
		 96.000007629395 -28.40310097 -48.000003814697 144 -28.40310097 -48.000003814697 192.000015258789 -28.40310097 -48.000003814697
		 239.99998474 -28.40310097 -48.000003814697 -192 -28.40310097 -72 -239.99998474 -28.40310097 -72
		 -143.99998474 -28.40310097 -72 -95.99998474 -28.40310097 -72 -47.99999237 -28.40310097 -72
		 -1.9984012e-015 -28.40310097 -72 48.000019073486 -28.40310097 -72 96.000007629395 -28.40310097 -72
		 144 -28.40310097 -72 192.000015258789 -28.40310097 -72 239.99998474 -28.40310097 -72
		 -240.000015258789 1.6222348e-014 -73.058959961 -192.000015258789 1.6222348e-014 -73.058959961
		 -143.99998474 1.6222348e-014 -73.058959961 -95.99999237 1.6222348e-014 -73.058959961
		 -47.99999619 1.6222348e-014 -73.058959961 0 1.6222348e-014 -73.058959961 48.000019073486 1.6222348e-014 -73.058959961
		 96.000007629395 1.6222348e-014 -73.058959961 144 1.6222348e-014 -73.058959961 192.000015258789 1.6222348e-014 -73.058959961
		 240.000015258789 1.6222348e-014 -73.058959961 240.000015258789 -1.25323546 -72 192.000015258789 -1.25323546 -72
		 144 -1.25323546 -72 96.000007629395 -1.25323546 -72 48.000019073486 -1.25323546 -72
		 -8.8175845e-017 -1.25323546 -72 -47.99999619 -1.25323546 -72 -95.99999237 -1.25323546 -72
		 -143.99998474 -1.25323546 -72 -192.000015258789 -1.25323546 -72 -240.000015258789 -1.25323546 -72
		 -239.99998474 -0.076757714 -72.54605103 -192.000015258789 -0.076757714 -72.54605103
		 -143.99998474 -0.076757714 -72.54605103 -95.99998474 -0.076757714 -72.54605103 -47.99999237 -0.076757714 -72.54605103
		 0 -0.076757714 -72.54605103 48.000019073486 -0.076757714 -72.54605103 96.000007629395 -0.076757714 -72.54605103
		 144 -0.076757714 -72.54605103 192.000015258789 -0.076757714 -72.54605103 239.99998474 -0.076757714 -72.54605103
		 239.99998474 -0.90669954 -71.99983215 192.000015258789 -0.90669954 -71.99983215 144 -0.90669954 -71.99983215
		 96.000007629395 -0.90669954 -71.99983215 48.000019073486 -0.90669954 -71.99983215
		 -3.6653792e-017 -0.90669954 -71.99983215 -47.99999237 -0.90669954 -71.99983215 -95.99998474 -0.90669954 -71.99983215
		 -143.99998474 -0.90669954 -71.99983215 -192.000015258789 -0.90669954 -71.99983215
		 -239.99998474 -0.90669954 -71.99983215;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 1 1 0 99 0 1 2 1 1 100 1 2 3 1 2 101 1 3 4 1 3 102 1
		 4 5 1 4 103 1 5 6 1 5 104 1 6 7 1 6 105 1 7 8 1 7 106 1 8 9 1 8 107 1 9 10 1 9 108 1
		 10 109 0 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1
		 15 26 1 16 17 1 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1
		 21 32 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0 31 32 0
		 34 33 0 33 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0 42 43 0 33 44 1
		 45 44 1 34 45 0 35 46 1 44 46 1 36 47 1 46 47 1 37 48 1 47 48 1 38 49 1 48 49 1 39 50 1
		 49 50 1 40 51 1 50 51 1 41 52 1 51 52 1 42 53 1 52 53 1 43 54 0 53 54 1 44 55 1 56 55 1
		 45 56 0 46 57 1 55 57 1 47 58 1 57 58 1 48 59 1 58 59 1 49 60 1 59 60 1 50 61 1 60 61 1
		 51 62 1 61 62 1 52 63 1 62 63 1 53 64 1 63 64 1 54 65 0 64 65 1 1 119 1 55 66 1 0 120 0
		 67 66 0 56 67 0 2 118 1 57 68 1 66 68 0 3 117 1 58 69 1 68 69 0 4 116 1 59 70 1 69 70 0
		 5 115 1 60 71 1 70 71 0 6 114 1 61 72 1 71 72 0 7 113 1 62 73 1 72 73 0 8 112 1 63 74 1
		 73 74 0 9 111 1 64 75 1 74 75 0 10 110 0 65 76 0 75 76 0 77 11 0 78 12 1 77 78 1
		 79 13 1 78 79 1 80 14 1 79 80 1 81 15 1 80 81 1 82 16 1 81 82 1 83 17 1 82 83 1 84 18 1
		 83 84 1 85 19 1 84 85 1 86 20 1 85 86 1 87 21 0 86 87 1 88 76 0 89 75 1 88 89 1 90 74 1
		 89 90 1 91 73 1 90 91 1 92 72 1 91 92 1;
	setAttr ".ed[166:219]" 93 71 1 92 93 1 94 70 1 93 94 1 95 69 1 94 95 1 96 68 1
		 95 96 1 97 66 1 96 97 1 98 67 0 97 98 1 99 77 0 100 78 1 99 100 1 101 79 1 100 101 1
		 102 80 1 101 102 1 103 81 1 102 103 1 104 82 1 103 104 1 105 83 1 104 105 1 106 84 1
		 105 106 1 107 85 1 106 107 1 108 86 1 107 108 1 109 87 0 108 109 1 110 88 0 111 89 1
		 110 111 1 112 90 1 111 112 1 113 91 1 112 113 1 114 92 1 113 114 1 115 93 1 114 115 1
		 116 94 1 115 116 1 117 95 1 116 117 1 118 96 1 117 118 1 119 97 1 118 119 1 120 98 0
		 119 120 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 52 62 -64 -65
		mu 0 4 60 0 9 62
		f 4 53 65 -67 -63
		mu 0 4 0 1 10 9
		f 4 54 67 -69 -66
		mu 0 4 1 2 11 10
		f 4 55 69 -71 -68
		mu 0 4 2 3 12 11
		f 4 56 71 -73 -70
		mu 0 4 3 4 13 12
		f 4 57 73 -75 -72
		mu 0 4 4 5 14 13
		f 4 58 75 -77 -74
		mu 0 4 5 6 15 14
		f 4 59 77 -79 -76
		mu 0 4 6 7 16 15
		f 4 60 79 -81 -78
		mu 0 4 7 8 17 16
		f 4 61 81 -83 -80
		mu 0 4 8 61 63 17
		f 4 63 83 -85 -86
		mu 0 4 62 9 18 64
		f 4 66 86 -88 -84
		mu 0 4 9 10 19 18
		f 4 68 88 -90 -87
		mu 0 4 10 11 20 19
		f 4 70 90 -92 -89
		mu 0 4 11 12 21 20
		f 4 72 92 -94 -91
		mu 0 4 12 13 22 21
		f 4 74 94 -96 -93
		mu 0 4 13 14 23 22
		f 4 76 96 -98 -95
		mu 0 4 14 15 24 23
		f 4 78 98 -100 -97
		mu 0 4 15 16 25 24
		f 4 80 100 -102 -99
		mu 0 4 16 17 26 25
		f 4 82 102 -104 -101
		mu 0 4 17 63 65 26
		f 4 84 105 -108 -109
		mu 0 4 64 18 66 67
		f 4 87 110 -112 -106
		mu 0 4 18 19 68 66
		f 4 89 113 -115 -111
		mu 0 4 19 20 69 68
		f 4 91 116 -118 -114
		mu 0 4 20 21 70 69
		f 4 93 119 -121 -117
		mu 0 4 21 22 71 70
		f 4 95 122 -124 -120
		mu 0 4 22 23 72 71
		f 4 97 125 -127 -123
		mu 0 4 23 24 73 72
		f 4 99 128 -130 -126
		mu 0 4 24 25 74 73
		f 4 101 131 -133 -129
		mu 0 4 25 26 75 74
		f 4 103 134 -136 -132
		mu 0 4 26 65 76 75
		f 4 138 137 -22 -137
		mu 0 4 77 78 39 38
		f 4 140 139 -24 -138
		mu 0 4 78 79 40 39
		f 4 142 141 -26 -140
		mu 0 4 79 80 41 40
		f 4 144 143 -28 -142
		mu 0 4 80 81 42 41
		f 4 146 145 -30 -144
		mu 0 4 81 82 43 42
		f 4 148 147 -32 -146
		mu 0 4 82 83 44 43
		f 4 150 149 -34 -148
		mu 0 4 83 84 45 44
		f 4 152 151 -36 -150
		mu 0 4 84 85 46 45
		f 4 154 153 -38 -152
		mu 0 4 85 86 47 46
		f 4 156 155 -40 -154
		mu 0 4 86 87 48 47
		f 4 21 24 -43 -23
		mu 0 4 38 39 50 49
		f 4 23 26 -44 -25
		mu 0 4 39 40 51 50
		f 4 25 28 -45 -27
		mu 0 4 40 41 52 51
		f 4 27 30 -46 -29
		mu 0 4 41 42 53 52
		f 4 29 32 -47 -31
		mu 0 4 42 43 54 53
		f 4 31 34 -48 -33
		mu 0 4 43 44 55 54
		f 4 33 36 -49 -35
		mu 0 4 44 45 56 55
		f 4 35 38 -50 -37
		mu 0 4 45 46 57 56
		f 4 37 40 -51 -39
		mu 0 4 46 47 58 57
		f 4 39 41 -52 -41
		mu 0 4 47 48 59 58
		f 4 177 176 107 -175
		mu 0 4 97 98 67 66
		f 4 175 174 111 -173
		mu 0 4 96 97 66 68
		f 4 173 172 114 -171
		mu 0 4 95 96 68 69
		f 4 171 170 117 -169
		mu 0 4 94 95 69 70
		f 4 169 168 120 -167
		mu 0 4 93 94 70 71
		f 4 167 166 123 -165
		mu 0 4 92 93 71 72
		f 4 165 164 126 -163
		mu 0 4 91 92 72 73
		f 4 163 162 129 -161
		mu 0 4 90 91 73 74
		f 4 161 160 132 -159
		mu 0 4 89 90 74 75
		f 4 159 158 135 -158
		mu 0 4 88 89 75 76
		f 4 180 179 -139 -179
		mu 0 4 99 100 78 77
		f 4 182 181 -141 -180
		mu 0 4 100 101 79 78
		f 4 184 183 -143 -182
		mu 0 4 101 102 80 79
		f 4 186 185 -145 -184
		mu 0 4 102 103 81 80
		f 4 188 187 -147 -186
		mu 0 4 103 104 82 81
		f 4 190 189 -149 -188
		mu 0 4 104 105 83 82
		f 4 192 191 -151 -190
		mu 0 4 105 106 84 83
		f 4 194 193 -153 -192
		mu 0 4 106 107 85 84
		f 4 196 195 -155 -194
		mu 0 4 107 108 86 85
		f 4 198 197 -157 -196
		mu 0 4 108 109 87 86
		f 4 201 200 -160 -200
		mu 0 4 110 111 89 88
		f 4 203 202 -162 -201
		mu 0 4 111 112 90 89
		f 4 205 204 -164 -203
		mu 0 4 112 113 91 90
		f 4 207 206 -166 -205
		mu 0 4 113 114 92 91
		f 4 209 208 -168 -207
		mu 0 4 114 115 93 92
		f 4 211 210 -170 -209
		mu 0 4 115 116 94 93
		f 4 213 212 -172 -211
		mu 0 4 116 117 95 94
		f 4 215 214 -174 -213
		mu 0 4 117 118 96 95
		f 4 217 216 -176 -215
		mu 0 4 118 119 97 96
		f 4 219 218 -178 -217
		mu 0 4 119 120 98 97
		f 4 0 3 -181 -2
		mu 0 4 27 28 100 99
		f 4 2 5 -183 -4
		mu 0 4 28 29 101 100
		f 4 4 7 -185 -6
		mu 0 4 29 30 102 101
		f 4 6 9 -187 -8
		mu 0 4 30 31 103 102
		f 4 8 11 -189 -10
		mu 0 4 31 32 104 103
		f 4 10 13 -191 -12
		mu 0 4 32 33 105 104
		f 4 12 15 -193 -14
		mu 0 4 33 34 106 105
		f 4 14 17 -195 -16
		mu 0 4 34 35 107 106
		f 4 16 19 -197 -18
		mu 0 4 35 36 108 107
		f 4 18 20 -199 -20
		mu 0 4 36 37 109 108
		f 4 -19 130 -202 -134
		mu 0 4 37 36 111 110
		f 4 -17 127 -204 -131
		mu 0 4 36 35 112 111
		f 4 -15 124 -206 -128
		mu 0 4 35 34 113 112
		f 4 -13 121 -208 -125
		mu 0 4 34 33 114 113
		f 4 -11 118 -210 -122
		mu 0 4 33 32 115 114
		f 4 -9 115 -212 -119
		mu 0 4 32 31 116 115
		f 4 -7 112 -214 -116
		mu 0 4 31 30 117 116
		f 4 -5 109 -216 -113
		mu 0 4 30 29 118 117
		f 4 -3 104 -218 -110
		mu 0 4 29 28 119 118
		f 4 -1 106 -220 -105
		mu 0 4 28 27 120 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface1";
createNode transform -n "transform14" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[33]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[34]" -type "float3" 0 7.5092464e-007 -2.5535736e-014 ;
	setAttr ".pt[35]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[36]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[37]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[38]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[39]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[40]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[41]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[42]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[43]" -type "float3" 0 7.5092464e-007 0 ;
	setAttr ".pt[154]" -type "float3" 0 0 2.5535736e-014 ;
createNode transform -n "pPipe1";
	setAttr ".t" -type "double3" -209.99998558225684 109.07128018119217 0 ;
	setAttr ".r" -type "double3" 0 45 90 ;
	setAttr ".rp" -type "double3" -77.12504184881972 30.000004805917769 -77.125041848818555 ;
	setAttr ".rpt" -type "double3" 47.12503704291219 -139.0712849871118 77.125041848821468 ;
	setAttr ".sp" -type "double3" -77.12504184881972 30.000004805917769 -77.125041848818555 ;
createNode transform -n "polySurface2" -p "pPipe1";
createNode transform -n "transform5" -p "polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3" -p "pPipe1";
	setAttr ".t" -type "double3" -112.02248776052878 -1.3875165233740539e-012 112.02248776052878 ;
	setAttr ".rp" -type "double3" 231.77276371032224 30.000004805917769 7.7277641596756244 ;
	setAttr ".sp" -type "double3" 231.77276371032224 30.000004805917769 7.7277641596756244 ;
createNode transform -n "transform4" -p "polySurface3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform3" -p "pPipe1";
	setAttr ".v" no;
createNode mesh -n "pPipeShape1" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4";
	setAttr ".rp" -type "double3" -240.00001441775342 0 0 ;
	setAttr ".sp" -type "double3" -240.00001441775342 0 0 ;
createNode transform -n "transform13" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape4" -p "transform13";
	setAttr -s 8 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 8 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr -s 2 ".iog[2].og";
	setAttr -s 2 ".iog[3].og";
	setAttr -s 2 ".iog[4].og";
	setAttr -s 2 ".iog[5].og";
	setAttr -s 2 ".iog[6].og";
	setAttr -s 2 ".iog[7].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[5]" -type "float3"  0 9.386558e-008 0;
createNode transform -n "polySurface5";
	setAttr ".t" -type "double3" 60 0 0 ;
	setAttr ".rp" -type "double3" -240.00001441775342 0 0 ;
	setAttr ".sp" -type "double3" -240.00001441775342 0 0 ;
createNode transform -n "transform12" -p "polySurface5";
	setAttr ".v" no;
createNode transform -n "polySurface6";
	setAttr ".t" -type "double3" 119.99999999999997 0 0 ;
	setAttr ".rp" -type "double3" -240.00001441775342 0 0 ;
	setAttr ".sp" -type "double3" -240.00001441775342 0 0 ;
createNode transform -n "transform11" -p "polySurface6";
	setAttr ".v" no;
createNode transform -n "polySurface7";
	setAttr ".t" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".rp" -type "double3" -240.00001441775342 0 0 ;
	setAttr ".sp" -type "double3" -240.00001441775342 0 0 ;
createNode transform -n "transform10" -p "polySurface7";
	setAttr ".v" no;
createNode transform -n "polySurface8";
	setAttr ".t" -type "double3" 239.99999999999994 0 0 ;
	setAttr ".rp" -type "double3" -240.00001441775342 0 0 ;
	setAttr ".sp" -type "double3" -240.00001441775342 0 0 ;
createNode transform -n "transform9" -p "polySurface8";
	setAttr ".v" no;
createNode transform -n "polySurface9";
	setAttr ".t" -type "double3" 299.99999999999994 0 0 ;
	setAttr ".rp" -type "double3" -240.00001441775342 0 0 ;
	setAttr ".sp" -type "double3" -240.00001441775342 0 0 ;
createNode transform -n "transform8" -p "polySurface9";
	setAttr ".v" no;
createNode transform -n "polySurface10";
	setAttr ".t" -type "double3" 359.99999999999994 0 0 ;
	setAttr ".rp" -type "double3" -240.00001441775342 0 0 ;
	setAttr ".sp" -type "double3" -240.00001441775342 0 0 ;
createNode transform -n "transform7" -p "polySurface10";
	setAttr ".v" no;
createNode transform -n "polySurface11";
	setAttr ".t" -type "double3" 419.99999999999977 0 0 ;
	setAttr ".rp" -type "double3" -240.00001441775342 0 0 ;
	setAttr ".sp" -type "double3" -240.00001441775342 0 0 ;
createNode transform -n "transform6" -p "polySurface11";
	setAttr ".v" no;
createNode transform -n "walls";
	setAttr ".s" -type "double3" 0.21805653829366467 1 0.40319879013260096 ;
createNode mesh -n "wallsShape" -p "walls";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 535 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[2]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[3]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[4]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[5]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.18085343 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[16]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[17]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[18]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[19]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[20]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[21]" -type "float3" 0 0 -0.14468406 ;
	setAttr ".pt[22]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[23]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[24]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[25]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[26]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[27]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[29]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[30]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[31]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[32]" -type "float3" 0 0 -0.10851468 ;
	setAttr ".pt[33]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[34]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[35]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[36]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[37]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[38]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[39]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[40]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[41]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[42]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[43]" -type "float3" 0 0 -0.072345287 ;
	setAttr ".pt[44]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[45]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[46]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[47]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[48]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[49]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[50]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[51]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[52]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[53]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[54]" -type "float3" 0 0 -0.036175899 ;
	setAttr ".pt[55]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[56]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[57]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[58]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[59]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[60]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[61]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[62]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[63]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[64]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[65]" -type "float3" 0 0 -6.5185168e-006 ;
	setAttr ".pt[66]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[67]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[68]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[69]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[70]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[71]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[72]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[73]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[74]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[75]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[76]" -type "float3" 0 0 0.036162876 ;
	setAttr ".pt[77]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[78]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[79]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[80]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[81]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[82]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[83]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[84]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[85]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[86]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[87]" -type "float3" 0 0 0.072332278 ;
	setAttr ".pt[88]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[89]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[90]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[91]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[92]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[93]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[94]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[95]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[96]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[97]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[98]" -type "float3" 0 0 0.10850164 ;
	setAttr ".pt[99]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[100]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[101]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[102]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[103]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[104]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[105]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[106]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[107]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[108]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[109]" -type "float3" 0 0 0.14467104 ;
	setAttr ".pt[110]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[111]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[112]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[113]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[114]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[115]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[116]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[117]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[118]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[119]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[120]" -type "float3" 0 0 0.18084037 ;
	setAttr ".pt[121]" -type "float3" 35.158005 0 -26.107489 ;
	setAttr ".pt[122]" -type "float3" 0 0 -26.107489 ;
	setAttr ".pt[123]" -type "float3" 0 0 -26.107489 ;
	setAttr ".pt[124]" -type "float3" 0 0 -26.107489 ;
	setAttr ".pt[125]" -type "float3" 0 0 -26.107489 ;
	setAttr ".pt[126]" -type "float3" 0 0 -26.107489 ;
	setAttr ".pt[127]" -type "float3" 0 0 -26.107489 ;
	setAttr ".pt[128]" -type "float3" 0 0 -26.107489 ;
	setAttr ".pt[129]" -type "float3" 0 0 -26.107489 ;
	setAttr ".pt[130]" -type "float3" 0 0 -26.107489 ;
	setAttr ".pt[131]" -type "float3" -35.158005 0 -26.107489 ;
	setAttr ".pt[132]" -type "float3" 35.158005 0 -0.00021025891 ;
	setAttr ".pt[142]" -type "float3" -35.158005 0 0 ;
	setAttr ".pt[143]" -type "float3" 35.158005 0 28.809963 ;
	setAttr ".pt[144]" -type "float3" 9.6118354e-005 0 28.809963 ;
	setAttr ".pt[145]" -type "float3" 4.8059177e-005 0 28.809963 ;
	setAttr ".pt[146]" -type "float3" 4.2051783e-005 0 28.809963 ;
	setAttr ".pt[147]" -type "float3" 4.2051783e-005 0 28.809963 ;
	setAttr ".pt[148]" -type "float3" 3.6716742e-006 0 28.809963 ;
	setAttr ".pt[149]" -type "float3" 2.4029589e-005 0 28.809963 ;
	setAttr ".pt[150]" -type "float3" 4.8059177e-005 0 28.809963 ;
	setAttr ".pt[151]" -type "float3" 4.8059177e-005 0 28.809963 ;
	setAttr ".pt[152]" -type "float3" 8.4103565e-005 0 28.809963 ;
	setAttr ".pt[153]" -type "float3" -35.158005 0 28.809963 ;
	setAttr ".pt[154]" -type "float3" 0 11.176714 -6.5185168e-006 ;
	setAttr ".pt[155]" -type "float3" 35.158005 11.176714 -6.5185168e-006 ;
	setAttr ".pt[156]" -type "float3" 0 11.176714 -6.5185168e-006 ;
	setAttr ".pt[157]" -type "float3" 0 11.176714 -6.5185168e-006 ;
	setAttr ".pt[158]" -type "float3" 0 11.176714 -6.5185168e-006 ;
	setAttr ".pt[159]" -type "float3" 0 11.176714 1.0299995 ;
	setAttr ".pt[160]" -type "float3" 0 11.176714 -6.5185168e-006 ;
	setAttr ".pt[161]" -type "float3" 0 11.176714 -6.5185168e-006 ;
	setAttr ".pt[162]" -type "float3" 0 11.176714 -6.5185168e-006 ;
	setAttr ".pt[163]" -type "float3" 0 11.176714 -6.5185168e-006 ;
	setAttr ".pt[164]" -type "float3" -35.158005 11.176714 -6.5185168e-006 ;
	setAttr ".pt[165]" -type "float3" 0 11.176714 -8.6806631 ;
	setAttr ".pt[166]" -type "float3" 35.158005 11.176714 -8.6806631 ;
	setAttr ".pt[167]" -type "float3" 0 11.176714 -8.6806631 ;
	setAttr ".pt[168]" -type "float3" 0 11.176714 -8.6806631 ;
	setAttr ".pt[169]" -type "float3" 0 11.176714 -8.6806631 ;
	setAttr ".pt[170]" -type "float3" 0 11.176714 -9.7106695 ;
	setAttr ".pt[171]" -type "float3" 0 11.176714 -8.6806631 ;
	setAttr ".pt[172]" -type "float3" 0 11.176714 -8.6806631 ;
	setAttr ".pt[173]" -type "float3" 0 11.176714 -8.6806631 ;
	setAttr ".pt[174]" -type "float3" 0 11.176714 -8.6806631 ;
	setAttr ".pt[175]" -type "float3" -35.158005 11.176714 -8.6806631 ;
	setAttr ".pt[176]" -type "float3" 0 11.176714 -17.361315 ;
	setAttr ".pt[177]" -type "float3" 35.158005 11.176714 -17.361315 ;
	setAttr ".pt[178]" -type "float3" 0 11.176714 -17.361315 ;
	setAttr ".pt[179]" -type "float3" 0 11.176714 -17.361315 ;
	setAttr ".pt[180]" -type "float3" 0 11.176714 -17.361315 ;
	setAttr ".pt[181]" -type "float3" 0 11.176714 -17.361315 ;
	setAttr ".pt[182]" -type "float3" 0 11.176714 -17.361315 ;
	setAttr ".pt[183]" -type "float3" 0 11.176714 -17.361315 ;
	setAttr ".pt[184]" -type "float3" 0 11.176714 -17.361315 ;
	setAttr ".pt[185]" -type "float3" 0 11.176714 -17.361315 ;
	setAttr ".pt[186]" -type "float3" -35.158005 11.176714 -17.361315 ;
	setAttr ".pt[187]" -type "float3" 0 11.176714 -26.041965 ;
	setAttr ".pt[188]" -type "float3" 35.158005 11.176714 -26.041965 ;
	setAttr ".pt[189]" -type "float3" 0 11.176714 -26.041965 ;
	setAttr ".pt[190]" -type "float3" 0 11.176714 -26.041965 ;
	setAttr ".pt[191]" -type "float3" 0 11.176714 -26.041965 ;
	setAttr ".pt[192]" -type "float3" 0 11.176714 -26.041965 ;
	setAttr ".pt[193]" -type "float3" 0 11.176714 -26.041965 ;
	setAttr ".pt[194]" -type "float3" 0 11.176714 -26.041965 ;
	setAttr ".pt[195]" -type "float3" 0 11.176714 -26.041965 ;
	setAttr ".pt[196]" -type "float3" 0 11.176714 -26.041965 ;
	setAttr ".pt[197]" -type "float3" -35.158005 11.176714 -26.041965 ;
	setAttr ".pt[198]" -type "float3" 35.157982 0 -26.424988 ;
	setAttr ".pt[199]" -type "float3" 0 0 -26.424988 ;
	setAttr ".pt[200]" -type "float3" 0 0 -26.424988 ;
	setAttr ".pt[201]" -type "float3" 0 0 -26.424988 ;
	setAttr ".pt[202]" -type "float3" 0 0 -26.424988 ;
	setAttr ".pt[203]" -type "float3" 0 0 -26.424988 ;
	setAttr ".pt[204]" -type "float3" 0 0 -26.424988 ;
	setAttr ".pt[205]" -type "float3" 0 0 -26.424988 ;
	setAttr ".pt[206]" -type "float3" 0 0 -26.424988 ;
	setAttr ".pt[207]" -type "float3" 0 0 -26.424988 ;
	setAttr ".pt[208]" -type "float3" -35.157982 0 -26.424988 ;
	setAttr ".pt[209]" -type "float3" -35.157982 0 -26.041965 ;
	setAttr ".pt[210]" -type "float3" 0 0 -26.041965 ;
	setAttr ".pt[211]" -type "float3" 0 0 -26.041965 ;
	setAttr ".pt[212]" -type "float3" 0 0 -26.041965 ;
	setAttr ".pt[213]" -type "float3" 0 0 -26.041965 ;
	setAttr ".pt[214]" -type "float3" 0 0 -26.041965 ;
	setAttr ".pt[215]" -type "float3" 0 0 -26.041965 ;
	setAttr ".pt[216]" -type "float3" 0 0 -26.041965 ;
	setAttr ".pt[217]" -type "float3" 0 0 -26.041965 ;
	setAttr ".pt[218]" -type "float3" 0 0 -26.041965 ;
	setAttr ".pt[219]" -type "float3" 35.157982 0 -26.041965 ;
	setAttr ".pt[220]" -type "float3" 35.158005 0 -26.239468 ;
	setAttr ".pt[221]" -type "float3" 0 0 -26.239468 ;
	setAttr ".pt[222]" -type "float3" 0 0 -26.239468 ;
	setAttr ".pt[223]" -type "float3" 0 0 -26.239468 ;
	setAttr ".pt[224]" -type "float3" 0 0 -26.239468 ;
	setAttr ".pt[225]" -type "float3" 0 0 -26.239468 ;
	setAttr ".pt[226]" -type "float3" 0 0 -26.239468 ;
	setAttr ".pt[227]" -type "float3" 0 0 -26.239468 ;
	setAttr ".pt[228]" -type "float3" 0 0 -26.239468 ;
	setAttr ".pt[229]" -type "float3" 0 0 -26.239468 ;
	setAttr ".pt[230]" -type "float3" -35.158005 0 -26.239468 ;
	setAttr ".pt[231]" -type "float3" -35.158005 0 -26.041908 ;
	setAttr ".pt[232]" -type "float3" 0 0 -26.041908 ;
	setAttr ".pt[233]" -type "float3" 0 0 -26.041908 ;
	setAttr ".pt[234]" -type "float3" 0 0 -26.041908 ;
	setAttr ".pt[235]" -type "float3" 0 0 -26.041908 ;
	setAttr ".pt[236]" -type "float3" 0 0 -26.041908 ;
	setAttr ".pt[237]" -type "float3" 0 0 -26.041908 ;
	setAttr ".pt[238]" -type "float3" 0 0 -26.041908 ;
	setAttr ".pt[239]" -type "float3" 0 0 -26.041908 ;
	setAttr ".pt[240]" -type "float3" 0 0 -26.041908 ;
	setAttr ".pt[241]" -type "float3" 35.158005 0 -26.041908 ;
	setAttr ".pt[242]" -type "float3" -35.158005 0 26.107452 ;
	setAttr ".pt[243]" -type "float3" 0 0 26.107452 ;
	setAttr ".pt[244]" -type "float3" 0 0 26.107452 ;
	setAttr ".pt[245]" -type "float3" 0 0 26.107452 ;
	setAttr ".pt[246]" -type "float3" 0 0 26.107452 ;
	setAttr ".pt[247]" -type "float3" 0 0 26.107452 ;
	setAttr ".pt[248]" -type "float3" 0 0 26.107452 ;
	setAttr ".pt[249]" -type "float3" 0 0 26.107452 ;
	setAttr ".pt[250]" -type "float3" 0 0 26.107452 ;
	setAttr ".pt[251]" -type "float3" 0 0 26.107452 ;
	setAttr ".pt[252]" -type "float3" 35.158005 0 26.107452 ;
	setAttr ".pt[253]" -type "float3" -35.158005 0 -3.6044385e-005 ;
	setAttr ".pt[254]" -type "float3" 0 0 -3.6044385e-005 ;
	setAttr ".pt[255]" -type "float3" 0 0 -3.6044385e-005 ;
	setAttr ".pt[256]" -type "float3" 0 0 -3.6044385e-005 ;
	setAttr ".pt[257]" -type "float3" 0 0 -3.6044385e-005 ;
	setAttr ".pt[258]" -type "float3" 0 0 -3.6044385e-005 ;
	setAttr ".pt[259]" -type "float3" 0 0 -3.6044385e-005 ;
	setAttr ".pt[260]" -type "float3" 0 0 -3.6044385e-005 ;
	setAttr ".pt[261]" -type "float3" 0 0 -3.6044385e-005 ;
	setAttr ".pt[262]" -type "float3" 0 0 -3.6044385e-005 ;
	setAttr ".pt[263]" -type "float3" 35.158005 0 -3.6044385e-005 ;
	setAttr ".pt[264]" -type "float3" -35.158005 0 -28.809963 ;
	setAttr ".pt[265]" -type "float3" 8.4103565e-005 0 -28.809963 ;
	setAttr ".pt[266]" -type "float3" 0.00012014795 0 -28.809963 ;
	setAttr ".pt[267]" -type "float3" 4.8059177e-005 0 -28.809963 ;
	setAttr ".pt[268]" -type "float3" 4.505548e-005 0 -28.809963 ;
	setAttr ".pt[269]" -type "float3" 3.6716742e-006 0 -28.809963 ;
	setAttr ".pt[270]" -type "float3" 4.2051783e-005 0 -28.809963 ;
	setAttr ".pt[271]" -type "float3" 4.2051783e-005 0 -28.809963 ;
	setAttr ".pt[272]" -type "float3" 4.8059177e-005 0 -28.809963 ;
	setAttr ".pt[273]" -type "float3" 7.2088769e-005 0 -28.809963 ;
	setAttr ".pt[274]" -type "float3" 35.158005 0 -28.809963 ;
	setAttr ".pt[275]" -type "float3" 0 11.176714 8.6806507 ;
	setAttr ".pt[276]" -type "float3" -35.158005 11.176714 8.6806507 ;
	setAttr ".pt[277]" -type "float3" 0 11.176714 8.6806507 ;
	setAttr ".pt[278]" -type "float3" 0 11.176714 8.6806507 ;
	setAttr ".pt[279]" -type "float3" 0 11.176714 8.6806507 ;
	setAttr ".pt[280]" -type "float3" 0 11.176714 8.6806507 ;
	setAttr ".pt[281]" -type "float3" 0 11.176714 8.6806507 ;
	setAttr ".pt[282]" -type "float3" 0 11.176714 8.6806507 ;
	setAttr ".pt[283]" -type "float3" 0 11.176714 8.6806507 ;
	setAttr ".pt[284]" -type "float3" 0 11.176714 8.6806507 ;
	setAttr ".pt[285]" -type "float3" 35.158005 11.176714 8.6806507 ;
	setAttr ".pt[286]" -type "float3" 0 11.176714 17.361303 ;
	setAttr ".pt[287]" -type "float3" -35.158005 11.176714 17.361303 ;
	setAttr ".pt[288]" -type "float3" 0 11.176714 17.361303 ;
	setAttr ".pt[289]" -type "float3" 0 11.176714 17.361303 ;
	setAttr ".pt[290]" -type "float3" 0 11.176714 17.361303 ;
	setAttr ".pt[291]" -type "float3" 0 11.176714 17.361303 ;
	setAttr ".pt[292]" -type "float3" 0 11.176714 17.361303 ;
	setAttr ".pt[293]" -type "float3" 0 11.176714 17.361303 ;
	setAttr ".pt[294]" -type "float3" 0 11.176714 17.361303 ;
	setAttr ".pt[295]" -type "float3" 0 11.176714 17.361303 ;
	setAttr ".pt[296]" -type "float3" 35.158005 11.176714 17.361303 ;
	setAttr ".pt[297]" -type "float3" 0 11.176714 26.042051 ;
	setAttr ".pt[298]" -type "float3" -35.158005 11.176714 26.042051 ;
	setAttr ".pt[299]" -type "float3" 0 11.176714 26.042051 ;
	setAttr ".pt[300]" -type "float3" 0 11.176714 26.042051 ;
	setAttr ".pt[301]" -type "float3" 0 11.176714 26.042051 ;
	setAttr ".pt[302]" -type "float3" 0 11.176714 26.042051 ;
	setAttr ".pt[303]" -type "float3" 0 11.176714 26.042051 ;
	setAttr ".pt[304]" -type "float3" 0 11.176714 26.042051 ;
	setAttr ".pt[305]" -type "float3" 0 11.176714 26.042051 ;
	setAttr ".pt[306]" -type "float3" 0 11.176714 26.042051 ;
	setAttr ".pt[307]" -type "float3" 35.158005 11.176714 26.042051 ;
	setAttr ".pt[308]" -type "float3" -35.157982 0 26.424952 ;
	setAttr ".pt[309]" -type "float3" 0 0 26.424952 ;
	setAttr ".pt[310]" -type "float3" 0 0 26.424952 ;
	setAttr ".pt[311]" -type "float3" 0 0 26.424952 ;
	setAttr ".pt[312]" -type "float3" 0 0 26.424952 ;
	setAttr ".pt[313]" -type "float3" 0 0 26.424952 ;
	setAttr ".pt[314]" -type "float3" 0 0 26.424952 ;
	setAttr ".pt[315]" -type "float3" 0 0 26.424952 ;
	setAttr ".pt[316]" -type "float3" 0 0 26.424952 ;
	setAttr ".pt[317]" -type "float3" 0 0 26.424952 ;
	setAttr ".pt[318]" -type "float3" 35.157982 0 26.424952 ;
	setAttr ".pt[319]" -type "float3" 35.157982 0 26.041929 ;
	setAttr ".pt[320]" -type "float3" 0 0 26.041929 ;
	setAttr ".pt[321]" -type "float3" 0 0 26.041929 ;
	setAttr ".pt[322]" -type "float3" 0 0 26.041929 ;
	setAttr ".pt[323]" -type "float3" 0 0 26.041929 ;
	setAttr ".pt[324]" -type "float3" 0 0 26.041929 ;
	setAttr ".pt[325]" -type "float3" 0 0 26.041929 ;
	setAttr ".pt[326]" -type "float3" 0 0 26.041929 ;
	setAttr ".pt[327]" -type "float3" 0 0 26.041929 ;
	setAttr ".pt[328]" -type "float3" 0 0 26.041929 ;
	setAttr ".pt[329]" -type "float3" -35.157982 0 26.041929 ;
	setAttr ".pt[330]" -type "float3" -35.158005 0 26.239431 ;
	setAttr ".pt[331]" -type "float3" 0 0 26.239431 ;
	setAttr ".pt[332]" -type "float3" 0 0 26.239431 ;
	setAttr ".pt[333]" -type "float3" 0 0 26.239431 ;
	setAttr ".pt[334]" -type "float3" 0 0 26.239431 ;
	setAttr ".pt[335]" -type "float3" 0 0 26.239431 ;
	setAttr ".pt[336]" -type "float3" 0 0 26.239431 ;
	setAttr ".pt[337]" -type "float3" 0 0 26.239431 ;
	setAttr ".pt[338]" -type "float3" 0 0 26.239431 ;
	setAttr ".pt[339]" -type "float3" 0 0 26.239431 ;
	setAttr ".pt[340]" -type "float3" 35.158005 0 26.239431 ;
	setAttr ".pt[341]" -type "float3" 35.158005 0 26.041872 ;
	setAttr ".pt[342]" -type "float3" 0 0 26.041872 ;
	setAttr ".pt[343]" -type "float3" 0 0 26.041872 ;
	setAttr ".pt[344]" -type "float3" 0 0 26.041872 ;
	setAttr ".pt[345]" -type "float3" 0 0 26.041872 ;
	setAttr ".pt[346]" -type "float3" 0 0 26.041872 ;
	setAttr ".pt[347]" -type "float3" 0 0 26.041872 ;
	setAttr ".pt[348]" -type "float3" 0 0 26.041872 ;
	setAttr ".pt[349]" -type "float3" 0 0 26.041872 ;
	setAttr ".pt[350]" -type "float3" 0 0 26.041872 ;
	setAttr ".pt[351]" -type "float3" -35.158005 0 26.041872 ;
	setAttr ".pt[352]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[353]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[354]" -type "float3" -35.158005 0 28.809975 ;
	setAttr ".pt[355]" -type "float3" -35.158005 -168.95479 30.056908 ;
	setAttr ".pt[356]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[357]" -type "float3" -35.158005 -169.76317 33.069077 ;
	setAttr ".pt[358]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[359]" -type "float3" -35.158005 -166.90379 28.809963 ;
	setAttr ".pt[360]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[361]" -type "float3" -35.158005 -169.52499 31.602791 ;
	setAttr ".pt[362]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[363]" -type "float3" -35.158005 -167.93588 29.193403 ;
	setAttr ".pt[364]" -type "float3" 0.0019584114 -168.95479 -30.056871 ;
	setAttr ".pt[365]" -type "float3" 0.0019584114 -167.93588 -29.193367 ;
	setAttr ".pt[366]" -type "float3" -35.159855 -167.93588 -29.193367 ;
	setAttr ".pt[367]" -type "float3" -35.159855 -168.95479 -30.056871 ;
	setAttr ".pt[368]" -type "float3" 0.0019584114 -169.76317 -33.069054 ;
	setAttr ".pt[369]" -type "float3" -35.159855 -169.76317 -33.069054 ;
	setAttr ".pt[370]" -type "float3" 0.0019584114 -169.52499 -31.602766 ;
	setAttr ".pt[371]" -type "float3" -35.159855 -169.52499 -31.602766 ;
	setAttr ".pt[372]" -type "float3" 0.0019584114 -166.90378 -28.809952 ;
	setAttr ".pt[373]" -type "float3" 0.0019584114 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[374]" -type "float3" -35.159855 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[375]" -type "float3" -35.159855 -166.90378 -28.809952 ;
	setAttr ".pt[376]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[377]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[378]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[379]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[380]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[381]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[382]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[383]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[384]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[385]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[386]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[387]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[388]" -type "float3" 6.0073973e-005 -168.95479 -30.056871 ;
	setAttr ".pt[389]" -type "float3" 6.0073973e-005 -167.93588 -29.193367 ;
	setAttr ".pt[390]" -type "float3" 0.0019584114 -167.93588 -29.193367 ;
	setAttr ".pt[391]" -type "float3" 0.0019584114 -168.95479 -30.056871 ;
	setAttr ".pt[392]" -type "float3" 6.0073973e-005 -169.76317 -33.069054 ;
	setAttr ".pt[393]" -type "float3" 0.0019584114 -169.76317 -33.069054 ;
	setAttr ".pt[394]" -type "float3" 6.0073973e-005 -169.52499 -31.602766 ;
	setAttr ".pt[395]" -type "float3" 0.0019584114 -169.52499 -31.602766 ;
	setAttr ".pt[396]" -type "float3" 6.0073973e-005 -166.90378 -28.809952 ;
	setAttr ".pt[397]" -type "float3" 6.0073973e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[398]" -type "float3" 0.0019584114 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[399]" -type "float3" 0.0019584114 -166.90378 -28.809952 ;
	setAttr ".pt[400]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[401]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[402]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[403]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[404]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[405]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[406]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[407]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[408]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[409]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[410]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[411]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[412]" -type "float3" -1.8022192e-005 -168.95479 -30.056871 ;
	setAttr ".pt[413]" -type "float3" -1.8022192e-005 -167.93588 -29.193367 ;
	setAttr ".pt[414]" -type "float3" 6.0073973e-005 -167.93588 -29.193367 ;
	setAttr ".pt[415]" -type "float3" 6.0073973e-005 -168.95479 -30.056871 ;
	setAttr ".pt[416]" -type "float3" -1.8022192e-005 -169.76317 -33.069054 ;
	setAttr ".pt[417]" -type "float3" 6.0073973e-005 -169.76317 -33.069054 ;
	setAttr ".pt[418]" -type "float3" -1.8022192e-005 -169.52499 -31.602766 ;
	setAttr ".pt[419]" -type "float3" 6.0073973e-005 -169.52499 -31.602766 ;
	setAttr ".pt[420]" -type "float3" -1.8022192e-005 -166.90378 -28.809952 ;
	setAttr ".pt[421]" -type "float3" -1.8022192e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[422]" -type "float3" 6.0073973e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[423]" -type "float3" 6.0073973e-005 -166.90378 -28.809952 ;
	setAttr ".pt[424]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[425]" -type "float3" -1.9608479e-019 -168.95479 30.056908 ;
	setAttr ".pt[426]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[427]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[428]" -type "float3" -1.9608479e-019 -169.76317 33.069077 ;
	setAttr ".pt[429]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[430]" -type "float3" -1.9608479e-019 -166.90379 28.809963 ;
	setAttr ".pt[431]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[432]" -type "float3" -1.9608479e-019 -169.52499 31.602791 ;
	setAttr ".pt[433]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[434]" -type "float3" -1.9608479e-019 -167.93588 29.193403 ;
	setAttr ".pt[435]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[436]" -type "float3" -6.0802358e-006 -168.95479 -30.056871 ;
	setAttr ".pt[437]" -type "float3" -6.0802358e-006 -167.93588 -29.193367 ;
	setAttr ".pt[438]" -type "float3" 6.6081368e-005 -167.93588 -29.193367 ;
	setAttr ".pt[439]" -type "float3" 6.6081368e-005 -168.95479 -30.056871 ;
	setAttr ".pt[440]" -type "float3" -6.0802358e-006 -169.76317 -33.069054 ;
	setAttr ".pt[441]" -type "float3" 6.6081368e-005 -169.76317 -33.069054 ;
	setAttr ".pt[442]" -type "float3" -6.0802358e-006 -169.52499 -31.602766 ;
	setAttr ".pt[443]" -type "float3" 6.6081368e-005 -169.52499 -31.602766 ;
	setAttr ".pt[444]" -type "float3" -6.0802358e-006 -166.90378 -28.809952 ;
	setAttr ".pt[445]" -type "float3" -6.0802358e-006 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[446]" -type "float3" 6.6081368e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[447]" -type "float3" 6.6081368e-005 -166.90378 -28.809952 ;
	setAttr ".pt[448]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[449]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[450]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[451]" -type "float3" -1.9575255e-019 -168.95479 30.056908 ;
	setAttr ".pt[452]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[453]" -type "float3" -1.9575255e-019 -169.76317 33.069077 ;
	setAttr ".pt[454]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[455]" -type "float3" -1.9575255e-019 -166.90379 28.809963 ;
	setAttr ".pt[456]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[457]" -type "float3" -1.9575255e-019 -169.52499 31.602791 ;
	setAttr ".pt[458]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[459]" -type "float3" -1.9575255e-019 -167.93588 29.193403 ;
	setAttr ".pt[460]" -type "float3" 6.6081368e-005 -168.95479 -30.056871 ;
	setAttr ".pt[461]" -type "float3" 6.6081368e-005 -167.93588 -29.193367 ;
	setAttr ".pt[462]" -type "float3" 2.9964149e-005 -167.93588 -29.193367 ;
	setAttr ".pt[463]" -type "float3" 2.9964149e-005 -168.95479 -30.056871 ;
	setAttr ".pt[464]" -type "float3" 6.6081368e-005 -169.76317 -33.069054 ;
	setAttr ".pt[465]" -type "float3" 2.9964149e-005 -169.76317 -33.069054 ;
	setAttr ".pt[466]" -type "float3" 6.6081368e-005 -169.52499 -31.602766 ;
	setAttr ".pt[467]" -type "float3" 2.9964149e-005 -169.52499 -31.602766 ;
	setAttr ".pt[468]" -type "float3" 6.6081368e-005 -166.90378 -28.809952 ;
	setAttr ".pt[469]" -type "float3" 6.6081368e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[470]" -type "float3" 2.9964149e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[471]" -type "float3" 2.9964149e-005 -166.90378 -28.809952 ;
	setAttr ".pt[472]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[473]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[474]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[475]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[476]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[477]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[478]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[479]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[480]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[481]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[482]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[483]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[484]" -type "float3" 2.4029589e-005 -168.95479 -30.056871 ;
	setAttr ".pt[485]" -type "float3" 2.4029589e-005 -167.93588 -29.193367 ;
	setAttr ".pt[486]" -type "float3" 3.0036987e-005 -167.93588 -29.193367 ;
	setAttr ".pt[487]" -type "float3" 3.0036987e-005 -168.95479 -30.056871 ;
	setAttr ".pt[488]" -type "float3" 2.4029589e-005 -169.76317 -33.069054 ;
	setAttr ".pt[489]" -type "float3" 3.0036987e-005 -169.76317 -33.069054 ;
	setAttr ".pt[490]" -type "float3" 2.4029589e-005 -169.52499 -31.602766 ;
	setAttr ".pt[491]" -type "float3" 3.0036987e-005 -169.52499 -31.602766 ;
	setAttr ".pt[492]" -type "float3" 2.4029589e-005 -166.90378 -28.809952 ;
	setAttr ".pt[493]" -type "float3" 2.4029589e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[494]" -type "float3" 3.0036987e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[495]" -type "float3" 3.0036987e-005 -166.90378 -28.809952 ;
	setAttr ".pt[496]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[497]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[498]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[499]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[500]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[501]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[502]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[503]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[504]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[505]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[506]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[507]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[508]" -type "float3" 1.2014794e-005 -168.95479 -30.056871 ;
	setAttr ".pt[509]" -type "float3" 1.2014794e-005 -167.93588 -29.193367 ;
	setAttr ".pt[510]" -type "float3" 2.4029589e-005 -167.93588 -29.193367 ;
	setAttr ".pt[511]" -type "float3" 2.4029589e-005 -168.95479 -30.056871 ;
	setAttr ".pt[512]" -type "float3" 1.2014794e-005 -169.76317 -33.069054 ;
	setAttr ".pt[513]" -type "float3" 2.4029589e-005 -169.76317 -33.069054 ;
	setAttr ".pt[514]" -type "float3" 1.2014794e-005 -169.52499 -31.602766 ;
	setAttr ".pt[515]" -type "float3" 2.4029589e-005 -169.52499 -31.602766 ;
	setAttr ".pt[516]" -type "float3" 1.2014794e-005 -166.90378 -28.809952 ;
	setAttr ".pt[517]" -type "float3" 1.2014794e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[518]" -type "float3" 2.4029589e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[519]" -type "float3" 2.4029589e-005 -166.90378 -28.809952 ;
	setAttr ".pt[520]" -type "float3" 35.157955 0 28.809975 ;
	setAttr ".pt[521]" -type "float3" 35.157955 -168.95479 30.056908 ;
	setAttr ".pt[522]" -type "float3" 0 0 28.809975 ;
	setAttr ".pt[523]" -type "float3" 0 -168.95479 30.056908 ;
	setAttr ".pt[524]" -type "float3" 35.157955 -169.76317 33.069077 ;
	setAttr ".pt[525]" -type "float3" 0 -169.76317 33.069077 ;
	setAttr ".pt[526]" -type "float3" 35.157955 -166.90379 28.809963 ;
	setAttr ".pt[527]" -type "float3" 0 -166.90379 28.809963 ;
	setAttr ".pt[528]" -type "float3" 35.157955 -169.52499 31.602791 ;
	setAttr ".pt[529]" -type "float3" 0 -169.52499 31.602791 ;
	setAttr ".pt[530]" -type "float3" 35.157955 -167.93588 29.193403 ;
	setAttr ".pt[531]" -type "float3" 0 -167.93588 29.193403 ;
	setAttr ".pt[532]" -type "float3" 35.158028 -168.95479 -30.056871 ;
	setAttr ".pt[533]" -type "float3" 35.158028 -167.93588 -29.193367 ;
	setAttr ".pt[534]" -type "float3" 4.8059177e-005 -167.93588 -29.193367 ;
	setAttr ".pt[535]" -type "float3" 4.8059177e-005 -168.95479 -30.056871 ;
	setAttr ".pt[536]" -type "float3" 35.158028 -169.76317 -33.069054 ;
	setAttr ".pt[537]" -type "float3" 4.8059177e-005 -169.76317 -33.069054 ;
	setAttr ".pt[538]" -type "float3" 35.158028 -169.52499 -31.602766 ;
	setAttr ".pt[539]" -type "float3" 4.8059177e-005 -169.52499 -31.602766 ;
	setAttr ".pt[540]" -type "float3" 35.158028 -166.90378 -28.809952 ;
	setAttr ".pt[541]" -type "float3" 35.158028 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[542]" -type "float3" 4.8059177e-005 -1.3115223e-006 -28.809952 ;
	setAttr ".pt[543]" -type "float3" 4.8059177e-005 -166.90378 -28.809952 ;
createNode transform -n "water";
	setAttr ".t" -type "double3" 0 -11.339812818668211 0 ;
	setAttr ".s" -type "double3" 1 1 0.34749679866229172 ;
createNode mesh -n "waterShape" -p "water";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode place3dTexture -n "place3dTexture1";
createNode place3dTexture -n "place3dTexture2";
createNode transform -n "locator1";
	setAttr ".t" -type "double3" 239.99999038816435 -28.403100441759964 -72.000001922367105 ;
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
parent -s -nc -r -add "|polySurface4|transform13|polySurfaceShape4" "transform6" ;
parent -s -nc -r -add "|polySurface4|transform13|polySurfaceShape4" "transform7" ;
parent -s -nc -r -add "|polySurface4|transform13|polySurfaceShape4" "transform8" ;
parent -s -nc -r -add "|polySurface4|transform13|polySurfaceShape4" "transform9" ;
parent -s -nc -r -add "|polySurface4|transform13|polySurfaceShape4" "transform10" ;
parent -s -nc -r -add "|polySurface4|transform13|polySurfaceShape4" "transform11" ;
parent -s -nc -r -add "|polySurface4|transform13|polySurfaceShape4" "transform12" ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyPlane -n "polyPlane1";
	setAttr ".ax" -type "double3" 0 0.99999999999999978 0 ;
	setAttr ".w" 0.99999999999999978;
	setAttr ".h" 0.99999999999999978;
	setAttr ".cuv" 2;
createNode polyPlane -n "polyPlane2";
	setAttr ".ax" -type "double3" 0 0.99999999999999978 0 ;
	setAttr ".w" 480;
	setAttr ".h" 240;
	setAttr ".cuv" 2;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n"
		+ "            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 4.9999999999999982 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[20:79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.6695506e-022 -3.0036986e-006 ;
	setAttr ".rs" 55372;
	setAttr ".lt" -type "double3" 0 4.8828941170857987e-015 -28.40310066120438 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -239.99999038816435 -1.598721064754335e-014 -72.000001922367105 ;
	setAttr ".cbx" -type "double3" 239.99999038816435 1.5987211981453498e-014 71.999995914969858 ;
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 1 "f[101]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 1 "f[111]";
createNode deleteComponent -n "deleteComponent15";
	setAttr ".dc" -type "componentList" 1 "f[112]";
createNode deleteComponent -n "deleteComponent16";
	setAttr ".dc" -type "componentList" 1 "f[113]";
createNode deleteComponent -n "deleteComponent17";
	setAttr ".dc" -type "componentList" 1 "f[114]";
createNode deleteComponent -n "deleteComponent18";
	setAttr ".dc" -type "componentList" 1 "f[116]";
createNode deleteComponent -n "deleteComponent19";
	setAttr ".dc" -type "componentList" 1 "f[124]";
createNode deleteComponent -n "deleteComponent20";
	setAttr ".dc" -type "componentList" 1 "f[114]";
createNode deleteComponent -n "deleteComponent21";
	setAttr ".dc" -type "componentList" 1 "f[112]";
createNode deleteComponent -n "deleteComponent22";
	setAttr ".dc" -type "componentList" 1 "f[112]";
createNode deleteComponent -n "deleteComponent23";
	setAttr ".dc" -type "componentList" 1 "f[111]";
createNode deleteComponent -n "deleteComponent24";
	setAttr ".dc" -type "componentList" 1 "f[110]";
createNode polyDuplicateEdge -n "polyDuplicateEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70]";
	setAttr ".of" 0.044123191386461258;
createNode polyDuplicateEdge -n "polyDuplicateEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70]";
	setAttr ".of" 0.41568970680236816;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk[33:43]" -type "float3"  0 -0.90007389 -0.46010628
		 0 -0.90007389 -0.46010628 0 -0.90007389 -0.46010628 0 -0.90007389 -0.46010628 0 -0.90007389
		 -0.46010628 0 -0.90007389 -0.46010628 0 -0.90007389 -0.46010628 0 -0.90007389 -0.46010628
		 0 -0.90007389 -0.46010628 0 -0.90007389 -0.46010628 0 -0.90007389 -0.46010628;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 30 "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70]" "e[306]" "e[308]" "e[310]" "e[312]" "e[314]" "e[316]" "e[318]" "e[320]" "e[322]" "e[324]" "e[327]" "e[329]" "e[331]" "e[333]" "e[335]" "e[337]" "e[339]" "e[341]" "e[343]" "e[345]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk[165:186]" -type "float3"  0 0.33095783 0 0 0.33095783
		 0 0 0.33095783 0 0 0.33095783 0 0 0.33095783 0 0 0.33095783 0 0 0.33095783 0 0 0.33095783
		 0 0 0.33095783 0 0 0.33095783 0 0 0.33095783 0 0 -0.45386344 0.26929387 0 -0.45386344
		 0.26929387 0 -0.45386344 0.26929387 0 -0.45386344 0.26929387 0 -0.45386344 0.26929387
		 0 -0.45386344 0.26929387 0 -0.45386344 0.26929387 0 -0.45386344 0.26929387 0 -0.45386344
		 0.26929387 0 -0.45386344 0.26929387 0 -0.45386344 0.26929387;
createNode deleteComponent -n "deleteComponent25";
	setAttr ".dc" -type "componentList" 2 "f[0:49]" "f[100:109]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:199]";
createNode polyPipe -n "polyPipe1";
	setAttr ".ax" -type "double3" 0 0.99999999999999978 0 ;
	setAttr ".r" 240;
	setAttr ".h" 120;
	setAttr ".t" 0.49999999999999989;
	setAttr ".sa" 4;
	setAttr ".sc" 0;
createNode deleteComponent -n "deleteComponent26";
	setAttr ".dc" -type "componentList" 4 "f[1]" "f[5]" "f[9]" "f[13]";
createNode deleteComponent -n "deleteComponent27";
	setAttr ".dc" -type "componentList" 2 "f[3]" "f[6]";
createNode deleteComponent -n "deleteComponent28";
	setAttr ".dc" -type "componentList" 1 "f[7]";
createNode deleteComponent -n "deleteComponent29";
	setAttr ".dc" -type "componentList" 3 "f[4]" "f[6]" "f[8]";
createNode deleteComponent -n "deleteComponent30";
	setAttr ".dc" -type "componentList" 1 "f[4:5]";
createNode deleteComponent -n "deleteComponent31";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[2]" "e[5]";
	setAttr ".ix" -type "matrix" 0 0.70710678118654757 -0.70710678118654757 0 -1.0000000000000002 1.1102230246251565e-016 0 0
		 1.1102230246251568e-016 0.70710678118654757 0.70710678118654746 0 -533.39996337890636 277.0410516602243 5.2864379540551454e-012 1;
	setAttr ".wt" 0.47176998853683472;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -88.63812256 1.5258789e-005
		 88.63954926 19.62855148 1.5258789e-005 196.90621948 196.90621948 1.5258789e-005 19.62847137
		 88.6388092 1.5258789e-005 -88.63879395 -88.63812256 1.9073486e-005 88.63954926 19.62855148
		 1.9073486e-005 196.90621948 196.90621948 1.9073486e-005 19.62847137 88.6388092 1.9073486e-005
		 -88.63879395;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[8:9]" -type "float3"  12.16897583 0 -12.16830444
		 12.16897583 0 -12.16830444;
createNode deleteComponent -n "deleteComponent32";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[2]";
createNode polyDuplicateEdge -n "polyDuplicateEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
	setAttr ".of" 0.035492531955242157;
createNode polyDuplicateEdge -n "polyDuplicateEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
	setAttr ".of" 0.46117773652076721;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" 1.7115917 0 -5.1020222 ;
	setAttr ".tk[3]" -type "float3" 1.7115917 0 -5.1020222 ;
	setAttr ".tk[8]" -type "float3" 12.612862 0 12.612862 ;
	setAttr ".tk[9]" -type "float3" 12.612862 0 12.612862 ;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1]" "e[3]" "e[5]" "e[9:18]";
	setAttr ".ix" -type "matrix" 0 0.70710678118654757 -0.70710678118654757 0 -1.0000000000000002 1.1102230246251565e-016 0 0
		 1.1102230246251568e-016 0.70710678118654757 0.70710678118654746 0 -533.39996337890636 277.0410516602243 5.2864379540551454e-012 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[1]" -type "float3" -0.92392033 0 1.4106517 ;
	setAttr ".tk[3]" -type "float3" -0.92392033 0 1.4106517 ;
	setAttr ".tk[10]" -type "float3" 0.1381942 0 0.83304554 ;
	setAttr ".tk[11]" -type "float3" 0.1381942 0 0.83304554 ;
	setAttr ".tk[12]" -type "float3" -1.1470377 0 1.1470377 ;
	setAttr ".tk[13]" -type "float3" -1.1470377 0 1.1470377 ;
createNode polyMirror -n "polyMirror1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0 0.70710678118654757 -0.70710678118654757 0 -1.0000000000000002 1.1102230246251565e-016 0 0
		 1.1102230246251568e-016 0.70710678118654757 0.70710678118654746 0 -533.39996337890636 277.0410516602243 5.2864379540551454e-012 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -209.99999158964386 168.69795573774505 -79.211879325292003 ;
	setAttr ".d" 5;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -3.3378601e-006 -2.72123e-006 ;
	setAttr ".tk[18]" -type "float3" 0 6.1035156e-005 2.7212336e-006 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 1 "vtx[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode deleteComponent -n "deleteComponent33";
	setAttr ".dc" -type "componentList" 1 "e[6]";
createNode deleteComponent -n "deleteComponent34";
	setAttr ".dc" -type "componentList" 1 "vtx[4:5]";
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[43]" "vtx[155]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[42]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[42]" -type "float3" 3.0517578e-005 0 1.4400848e-015 ;
	setAttr ".tk[43]" -type "float3" 0 0 9.7937033e-015 ;
	setAttr ".tk[154]" -type "float3" -3.0517578e-005 0 -1.4400831e-015 ;
	setAttr ".tk[155]" -type "float3" 0 0 -9.7937033e-015 ;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[41]" -type "float3" 0 0 -1.0922219e-014 ;
	setAttr ".tk[154]" -type "float3" -3.0517578e-005 0 1.0922219e-014 ;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[40]" -type "float3" 3.0517578e-005 0 -1.3490812e-014 ;
	setAttr ".tk[154]" -type "float3" -3.0517578e-005 0 1.3490814e-014 ;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[39]" -type "float3" 3.0517578e-005 0 -2.0956259e-014 ;
	setAttr ".tk[154]" -type "float3" -3.0517578e-005 0 2.0956259e-014 ;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[38]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[37]" -type "float3" 3.0517578e-005 0 -2.1676302e-014 ;
	setAttr ".tk[38]" -type "float3" 1.7403278e-030 0 -2.8421709e-014 ;
	setAttr ".tk[154]" -type "float3" -3.0517578e-005 0 5.0098011e-014 ;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[36]" -type "float3" 3.0517578e-005 0 -4.3352603e-014 ;
	setAttr ".tk[154]" -type "float3" -3.0517578e-005 0 4.3352603e-014 ;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[35]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[35]" -type "float3" 3.0517578e-005 0 -5.081805e-014 ;
	setAttr ".tk[154]" -type "float3" 0 0 5.081805e-014 ;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[33]" -type "float3" 3.0517578e-005 0 -5.8283497e-014 ;
	setAttr ".tk[154]" -type "float3" -3.0517578e-005 0 5.8283497e-014 ;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 2 "vtx[34]" "vtx[154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.01;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:10]";
createNode polyUnite -n "polyUnite3";
	setAttr -s 10 ".ip";
	setAttr -s 10 ".im";
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:387]";
createNode polyPlane -n "polyPlane3";
	setAttr ".ax" -type "double3" 0 0.99999999999999978 0 ;
	setAttr ".w" 120;
	setAttr ".h" 120;
	setAttr ".cuv" 2;
createNode blinn -n "blinn1";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode cloud -n "cloud16";
	setAttr ".ail" yes;
	setAttr ".c1" -type "float3" 0.14760001 0.18000001 0.1503 ;
	setAttr ".c2" -type "float3" 0.17399999 0.1267416 0.106488 ;
createNode bump3d -n "bump3d1";
createNode cloud -n "cloud17";
	setAttr ".c1" -type "float3" 0.1373601 0.163 0.123554 ;
	setAttr ".c2" -type "float3" 0.146 0.081759997 0.068911999 ;
	setAttr ".r" -type "float3" 10 1 0 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 27 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId25.id" "pPlaneShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape1.iog.og[0].gco";
connectAttr "groupParts21.og" "pPlaneShape1.i";
connectAttr "groupId26.id" "pPlaneShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pPlaneShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape2.iog.og[0].gco";
connectAttr "groupParts1.og" "pPlaneShape2.i";
connectAttr "groupId4.id" "pPlaneShape2.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pPlaneShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape3.iog.og[0].gco";
connectAttr "groupId2.id" "pPlaneShape3.ciog.cog[0].cgid";
connectAttr "polyMergeVert15.out" "polySurfaceShape1.i";
connectAttr "groupId5.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts4.og" "polySurfaceShape2.i";
connectAttr "groupId8.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape3.i";
connectAttr "groupId9.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId6.id" "pPipeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape1.iog.og[0].gco";
connectAttr "groupParts3.og" "pPipeShape1.i";
connectAttr "groupId7.id" "pPipeShape1.ciog.cog[0].cgid";
connectAttr "groupParts20.og" "|polySurface4|transform13|polySurfaceShape4.i";
connectAttr "groupId10.id" "|polySurface4|transform13|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface4|transform13|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId18.id" "|polySurface5|transform12|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface5|transform12|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId19.id" "|polySurface6|transform11|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface6|transform11|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId20.id" "|polySurface7|transform10|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface7|transform10|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId21.id" "|polySurface8|transform9|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface8|transform9|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId22.id" "|polySurface9|transform8|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface9|transform8|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId23.id" "|polySurface10|transform7|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface10|transform7|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupId24.id" "|polySurface11|transform6|polySurfaceShape4.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface11|transform6|polySurfaceShape4.iog.og[0].gco"
		;
connectAttr "groupParts22.og" "wallsShape.i";
connectAttr "groupId27.id" "wallsShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "wallsShape.iog.og[0].gco";
connectAttr "polyPlane3.out" "waterShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyPlane2.out" "polyExtrudeFace2.ip";
connectAttr "pPlaneShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "polyDuplicateEdge4.ip";
connectAttr "polyTweak2.out" "polyDuplicateEdge5.ip";
connectAttr "polyDuplicateEdge4.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySoftEdge1.ip";
connectAttr "pPlaneShape2.wm" "polySoftEdge1.mp";
connectAttr "polyDuplicateEdge5.out" "polyTweak3.ip";
connectAttr "polySoftEdge1.out" "deleteComponent25.ig";
connectAttr "pPlaneShape3.o" "polyUnite1.ip[0]";
connectAttr "pPlaneShape2.o" "polyUnite1.ip[1]";
connectAttr "pPlaneShape3.wm" "polyUnite1.im[0]";
connectAttr "pPlaneShape2.wm" "polyUnite1.im[1]";
connectAttr "deleteComponent25.og" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "polyUnite1.out" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "polyPipe1.out" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "polyTweak4.out" "polySplitRing1.ip";
connectAttr "pPipeShape1.wm" "polySplitRing1.mp";
connectAttr "deleteComponent31.og" "polyTweak4.ip";
connectAttr "polySplitRing1.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "polyDuplicateEdge6.ip";
connectAttr "polyTweak6.out" "polyDuplicateEdge7.ip";
connectAttr "polyDuplicateEdge6.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySoftEdge2.ip";
connectAttr "pPipeShape1.wm" "polySoftEdge2.mp";
connectAttr "polyDuplicateEdge7.out" "polyTweak7.ip";
connectAttr "polySoftEdge2.out" "polyMirror1.ip";
connectAttr "pPipeShape1.wm" "polyMirror1.mp";
connectAttr "pPipeShape1.o" "polySeparate1.ip";
connectAttr "polyMirror1.out" "groupParts3.ig";
connectAttr "groupId6.id" "groupParts3.gi";
connectAttr "polySeparate1.out[0]" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "polySeparate1.out[1]" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polySurfaceShape2.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape2.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts6.ig";
connectAttr "groupId10.id" "groupParts6.gi";
connectAttr "groupParts6.og" "polyMergeVert1.ip";
connectAttr "|polySurface4|transform13|polySurfaceShape4.wm" "polyMergeVert1.mp"
		;
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "|polySurface4|transform13|polySurfaceShape4.wm" "polyMergeVert2.mp"
		;
connectAttr "polyTweak8.out" "polyMergeVert3.ip";
connectAttr "|polySurface4|transform13|polySurfaceShape4.wm" "polyMergeVert3.mp"
		;
connectAttr "polyMergeVert2.out" "polyTweak8.ip";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "|polySurface4|transform13|polySurfaceShape4.wm" "polyMergeVert4.mp"
		;
connectAttr "polyMergeVert4.out" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "deleteComponent34.ig";
connectAttr "groupParts2.og" "polyMergeVert5.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert5.mp";
connectAttr "polyTweak9.out" "polyMergeVert6.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert5.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyMergeVert7.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert6.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyMergeVert8.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert7.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyMergeVert9.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert8.out" "polyTweak12.ip";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert10.mp";
connectAttr "polyTweak13.out" "polyMergeVert11.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert10.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyMergeVert12.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert11.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyMergeVert13.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert12.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyMergeVert14.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert13.out" "polyTweak16.ip";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "polySurfaceShape1.wm" "polyMergeVert15.mp";
connectAttr "deleteComponent34.og" "groupParts7.ig";
connectAttr "groupId11.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId12.id" "groupParts8.gi";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId13.id" "groupParts9.gi";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupId14.id" "groupParts10.gi";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupId15.id" "groupParts11.gi";
connectAttr "groupParts11.og" "groupParts12.ig";
connectAttr "groupId16.id" "groupParts12.gi";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupId17.id" "groupParts13.gi";
connectAttr "groupParts13.og" "groupParts14.ig";
connectAttr "groupId18.id" "groupParts14.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId19.id" "groupParts15.gi";
connectAttr "groupParts15.og" "groupParts16.ig";
connectAttr "groupId20.id" "groupParts16.gi";
connectAttr "groupParts16.og" "groupParts17.ig";
connectAttr "groupId21.id" "groupParts17.gi";
connectAttr "groupParts17.og" "groupParts18.ig";
connectAttr "groupId22.id" "groupParts18.gi";
connectAttr "groupParts18.og" "groupParts19.ig";
connectAttr "groupId23.id" "groupParts19.gi";
connectAttr "groupParts19.og" "groupParts20.ig";
connectAttr "groupId24.id" "groupParts20.gi";
connectAttr "pPlaneShape1.o" "polyUnite3.ip[0]";
connectAttr "polySurfaceShape1.o" "polyUnite3.ip[1]";
connectAttr "|polySurface4|transform13|polySurfaceShape4.o" "polyUnite3.ip[2]";
connectAttr "|polySurface4|transform13|polySurfaceShape4.o" "polyUnite3.ip[3]";
connectAttr "|polySurface4|transform13|polySurfaceShape4.o" "polyUnite3.ip[4]";
connectAttr "|polySurface4|transform13|polySurfaceShape4.o" "polyUnite3.ip[5]";
connectAttr "|polySurface4|transform13|polySurfaceShape4.o" "polyUnite3.ip[6]";
connectAttr "|polySurface4|transform13|polySurfaceShape4.o" "polyUnite3.ip[7]";
connectAttr "|polySurface4|transform13|polySurfaceShape4.o" "polyUnite3.ip[8]";
connectAttr "|polySurface4|transform13|polySurfaceShape4.o" "polyUnite3.ip[9]";
connectAttr "pPlaneShape1.wm" "polyUnite3.im[0]";
connectAttr "polySurfaceShape1.wm" "polyUnite3.im[1]";
connectAttr "|polySurface4|transform13|polySurfaceShape4.wm" "polyUnite3.im[2]";
connectAttr "|polySurface5|transform12|polySurfaceShape4.wm" "polyUnite3.im[3]";
connectAttr "|polySurface6|transform11|polySurfaceShape4.wm" "polyUnite3.im[4]";
connectAttr "|polySurface7|transform10|polySurfaceShape4.wm" "polyUnite3.im[5]";
connectAttr "|polySurface8|transform9|polySurfaceShape4.wm" "polyUnite3.im[6]";
connectAttr "|polySurface9|transform8|polySurfaceShape4.wm" "polyUnite3.im[7]";
connectAttr "|polySurface10|transform7|polySurfaceShape4.wm" "polyUnite3.im[8]";
connectAttr "|polySurface11|transform6|polySurfaceShape4.wm" "polyUnite3.im[9]";
connectAttr "polyPlane1.out" "groupParts21.ig";
connectAttr "groupId25.id" "groupParts21.gi";
connectAttr "polyUnite3.out" "groupParts22.ig";
connectAttr "groupId27.id" "groupParts22.gi";
connectAttr "cloud17.oc" "blinn1.c";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "cloud17.msg" "materialInfo1.t" -na;
connectAttr "place3dTexture1.wim" "cloud16.pm";
connectAttr "cloud16.oa" "bump3d1.bv";
connectAttr "place3dTexture2.wim" "cloud17.pm";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "pPlaneShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface4|transform13|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface5|transform12|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface6|transform11|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface7|transform10|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface8|transform9|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface9|transform8|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface10|transform7|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface11|transform6|polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pPlaneShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "wallsShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "waterShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId26.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "cloud16.msg" ":defaultTextureList1.tx" -na;
connectAttr "cloud17.msg" ":defaultTextureList1.tx" -na;
connectAttr "place3dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump3d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place3dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of ggj.ma
