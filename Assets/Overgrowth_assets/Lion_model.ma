//Maya ASCII 2017 scene
//Name: Lion_model.ma
//Last modified: Sun, Feb 11, 2018 12:28:20 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "20515F66-4474-6802-CF87-B1B153FFCF07";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.4469396810237032 3.7008220923447546 8.0477307756591223 ;
	setAttr ".r" -type "double3" -13.538352731422599 735.39999999985878 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "897965A7-40AD-67D0-8B90-088ED2DEA3CB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 6.8023454986684131;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "62B37ADD-4FBE-2445-5B02-A2A5E213D3CE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "913D61FF-45F1-0AA9-2A32-DAB4E3CCAF42";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F0CB3342-46B3-84CE-CE91-3CBB05A0BAEA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.30986538849574552 1.8794155984474754 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E5F5AC76-451D-AEF0-4F91-7EB6617CE4AA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 6.9623543653069522;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "23130BC5-49C2-5DCB-1169-28B3439B13ED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 1.7038911032546982 0.15532210810170372 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8FB476F0-4708-6071-97B4-D8B9B40EF889";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 8.865897069977553;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "A27103FD-4318-07A5-4612-00989F3A7AE0";
	setAttr ".t" -type "double3" 0 1.7633478316712747 0 ;
createNode transform -n "transform1" -p "pCube1";
	rename -uid "67DFBA61-469D-FD0A-0C7A-25AC1A6AA05F";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	rename -uid "EBBE977C-4B51-0D1A-6178-0888BD1E3D9F";
	setAttr -s 2 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog";
	setAttr ".pv" -type "double2" 0.24688984453678131 1.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "C5A1231F-4938-F397-5CD7-3EB88223E021";
	setAttr ".t" -type "double3" 0 1.7633478316712747 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode transform -n "transform2" -p "pCube2";
	rename -uid "5FAE14F1-4C7A-67FD-D9FC-9C865E777353";
	setAttr ".v" no;
createNode transform -n "pCube3";
	rename -uid "352A66D9-4E81-85E2-F199-138703E65AAB";
	setAttr ".rp" -type "double3" -0.081011652946472168 1.3928801092553504 0 ;
	setAttr ".sp" -type "double3" -0.081011652946472168 1.3928801092553504 0 ;
createNode transform -n "transform3" -p "pCube3";
	rename -uid "48270E0F-4E8F-791B-48B8-B186EEEA5D6C";
	setAttr ".v" no;
createNode mesh -n "pCube3Shape" -p "transform3";
	rename -uid "842EA787-4F1F-5F0B-11AC-92A76C88072C";
	setAttr -s 2 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[24]" -type "float3" 0 0 -0.065794066 ;
	setAttr ".pt[36]" -type "float3" 0 0 -0.065794066 ;
	setAttr ".pt[70]" -type "float3" 0 0 -0.065794066 ;
	setAttr ".pt[74]" -type "float3" 0 0 -0.065794066 ;
	setAttr ".pt[78]" -type "float3" 0 0 -0.065794066 ;
	setAttr ".pt[82]" -type "float3" -0.21291633 -0.041241556 -0.041056264 ;
	setAttr ".pt[83]" -type "float3" -0.26159596 -0.041241556 0.041856382 ;
	setAttr ".pt[84]" -type "float3" -0.26159602 0 0 ;
	setAttr ".pt[85]" -type "float3" -0.22948435 0 -6.9849193e-010 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "68FA095D-4B62-350A-01C7-9B86F3EEA499";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" -0.081011652946472168 1.3928801092553504 0 ;
	setAttr ".sp" -type "double3" -0.081011652946472168 1.3928801092553504 0 ;
createNode transform -n "transform4" -p "pCube4";
	rename -uid "15AECF3F-4EB2-A911-214B-7EA92F73A9AC";
	setAttr ".v" no;
createNode transform -n "pCube5";
	rename -uid "360313A7-464A-08CE-305B-6CA3A8DA186C";
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -0.332691490650177 1.413141667842865 0 ;
	setAttr ".sp" -type "double3" -0.332691490650177 1.413141667842865 0 ;
createNode transform -n "transform6" -p "pCube5";
	rename -uid "2F86C907-4848-16EE-A9E8-DFB30877F54C";
	setAttr ".v" no;
createNode mesh -n "pCube5Shape" -p "transform6";
	rename -uid "9F1958A3-4BCB-1B11-8DFF-A4B028DEE62E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.3333333283662796 1.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.04234596 0 ;
	setAttr ".pt[5]" -type "float3" 0 0.04234596 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.04234596 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.096476763 0 ;
	setAttr ".pt[18]" -type "float3" 0 0.096476763 -9.3132257e-010 ;
	setAttr ".pt[19]" -type "float3" 9.3132257e-010 0.04234596 0 ;
	setAttr ".pt[20]" -type "float3" 9.3132257e-010 0.04234596 0 ;
	setAttr ".pt[21]" -type "float3" 9.3132257e-010 0.092416026 0 ;
	setAttr ".pt[90]" -type "float3" 0 0.04234596 0 ;
	setAttr ".pt[91]" -type "float3" 0 0.04234596 0 ;
	setAttr ".pt[94]" -type "float3" 0 0.04234596 0 ;
	setAttr ".pt[103]" -type "float3" 0 0.096476763 0 ;
	setAttr ".pt[104]" -type "float3" 0 0.096476763 0 ;
	setAttr ".pt[105]" -type "float3" 9.3132257e-010 0.04234596 0 ;
	setAttr ".pt[106]" -type "float3" 9.3132257e-010 0.04234596 0 ;
	setAttr ".pt[107]" -type "float3" 9.3132257e-010 0.092416026 0 ;
	setAttr ".pt[176]" -type "float3" 0.19948433 0 0 ;
	setAttr ".pt[177]" -type "float3" -0.079364747 -0.030029917 0 ;
	setAttr ".pt[178]" -type "float3" -0.079364747 -0.030029917 0 ;
	setAttr ".pt[179]" -type "float3" 0.19948433 0 0 ;
	setAttr ".pt[180]" -type "float3" -0.070784792 0.27230671 0 ;
	setAttr ".pt[181]" -type "float3" -0.070784792 0.27230671 0 ;
	setAttr ".pt[182]" -type "float3" -0.18661439 0.25514677 0 ;
	setAttr ".pt[183]" -type "float3" -0.18661439 0.25514677 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6";
	rename -uid "0394B99B-4A2D-782A-F04D-A782BFD371C8";
	setAttr ".t" -type "double3" -0.34952909005375754 3.1564619375317382 0.89890716511138347 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "transform5" -p "pCube6";
	rename -uid "864B5E3F-4873-08AB-74AE-B9A8D49A4E56";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform5";
	rename -uid "D9401350-4F3C-102A-BD67-52A5789FEE8A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3333333432674408 3.4999996423721313 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 55 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -9.3132257e-010 0 ;
	setAttr ".pt[2]" -type "float3" -0.03147098 0.029972369 0 ;
	setAttr ".pt[3]" -type "float3" 0 0.1598376 0 ;
	setAttr ".pt[4]" -type "float3" 0 0.14035307 0 ;
	setAttr ".pt[5]" -type "float3" 0.037465461 0.080925383 0 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.042913578 ;
	setAttr ".pt[11]" -type "float3" -0.0044958554 -0.10169171 -0.035967633 ;
	setAttr ".pt[14]" -type "float3" 0.034145884 -0.058446117 -5.5511151e-017 ;
	setAttr ".pt[17]" -type "float3" 0.034145884 -0.058446117 -5.5511151e-017 ;
	setAttr ".pt[19]" -type "float3" 0 0 0.042913578 ;
	setAttr ".pt[20]" -type "float3" -0.0044958554 -0.10169171 0.035967633 ;
	setAttr ".pt[24]" -type "float3" 0 0.1598376 0 ;
	setAttr ".pt[26]" -type "float3" 0.037465461 0.080925383 0 ;
	setAttr ".pt[27]" -type "float3" 0 -9.3132257e-010 0 ;
	setAttr ".pt[29]" -type "float3" -0.03147098 0.029972369 0 ;
	setAttr ".pt[30]" -type "float3" 0 0.039129682 7.4505806e-009 ;
	setAttr ".pt[32]" -type "float3" -0.096005268 0.029972369 0 ;
	setAttr -av ".pt[32].px";
	setAttr -av ".pt[32].py";
	setAttr -av ".pt[32].pz";
	setAttr ".pt[33]" -type "float3" 0 0.039129682 -7.4505806e-009 ;
	setAttr ".pt[35]" -type "float3" -0.096005268 0.029972369 0 ;
	setAttr -av ".pt[35].px";
	setAttr -av ".pt[35].py";
	setAttr -av ".pt[35].pz";
	setAttr ".pt[36]" -type "float3" 0 0 -0.1886341 ;
	setAttr ".pt[37]" -type "float3" 0 0 0.1886341 ;
	setAttr ".pt[38]" -type "float3" -0.0053311153 -0.079480037 -0.025299296 ;
	setAttr ".pt[39]" -type "float3" -0.0053311153 -0.079480037 0.0252993 ;
	setAttr ".pt[42]" -type "float3" 0.058216434 0.14035307 0 ;
	setAttr ".pt[44]" -type "float3" 0.058216434 0 0 ;
	setAttr ".pt[46]" -type "float3" 0.058216434 0.14035307 0 ;
	setAttr ".pt[47]" -type "float3" 0.058216434 0 0 ;
	setAttr ".pt[52]" -type "float3" 0 2.3283064e-010 0 ;
	setAttr ".pt[54]" -type "float3" 0.019482039 -0.011988948 0 ;
	setAttr ".pt[55]" -type "float3" 0.019482039 -0.011988948 0 ;
	setAttr ".pt[57]" -type "float3" 0 2.3283064e-010 0 ;
	setAttr ".pt[58]" -type "float3" 0 3.7252903e-009 7.4505806e-009 ;
	setAttr ".pt[59]" -type "float3" 0.0068114377 0.015460319 -0.033730116 ;
	setAttr ".pt[60]" -type "float3" 0.0068114377 0.015460319 0.033730116 ;
	setAttr ".pt[61]" -type "float3" 0 3.7252903e-009 -7.4505806e-009 ;
	setAttr ".pt[62]" -type "float3" 0 9.3132257e-010 0 ;
	setAttr ".pt[64]" -type "float3" 0.02098066 -0.0014986184 0 ;
	setAttr ".pt[65]" -type "float3" 0.02098066 -0.0014986184 0 ;
	setAttr ".pt[67]" -type "float3" 0 9.3132257e-010 0 ;
	setAttr ".pt[78]" -type "float3" 0.0067746448 -0.0323333 0.045546088 ;
	setAttr ".pt[79]" -type "float3" 0.0067746448 -0.0323333 -0.045546092 ;
	setAttr ".pt[80]" -type "float3" -0.056292087 -0.03168644 -0.060724024 ;
	setAttr ".pt[81]" -type "float3" -0.056292087 -0.03168644 0.060724024 ;
	setAttr ".pt[90]" -type "float3" 0.13312459 0 -5.5511151e-017 ;
	setAttr ".pt[91]" -type "float3" 0.20733313 0.080925383 -5.5511151e-017 ;
	setAttr ".pt[92]" -type "float3" 0.14865389 -0.0014986184 -5.5511151e-017 ;
	setAttr ".pt[93]" -type "float3" 0.13378467 -0.011988948 -5.5511151e-017 ;
	setAttr ".pt[94]" -type "float3" 0.13312459 0 -5.5511151e-017 ;
	setAttr ".pt[95]" -type "float3" 0.20733313 0.080925383 -5.5511151e-017 ;
	setAttr ".pt[96]" -type "float3" 0.14865389 -0.0014986184 -5.5511151e-017 ;
	setAttr ".pt[97]" -type "float3" 0.13378467 -0.011988948 -5.5511151e-017 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "53AB26EB-40F6-8193-2EF5-1EBC5BF00B67";
	setAttr ".rp" -type "double3" -0.33269149065017706 2.155831567101135 0.17691608288947769 ;
	setAttr ".sp" -type "double3" -0.33269149065017706 2.155831567101135 0.17691608288947769 ;
createNode transform -n "polySurface1" -p "pCube7";
	rename -uid "0FA71F98-43D0-0D97-18B0-0FA7E1E33660";
createNode transform -n "transform9" -p "|pCube7|polySurface1";
	rename -uid "9BC72606-4023-784D-E447-9A83196859E3";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform9";
	rename -uid "2F0247CB-458F-194D-AE42-5CA987D6AFFC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1.8333331346511841 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[23]" -type "float3" 0 0 -0.11868298 ;
	setAttr ".pt[109]" -type "float3" 0 0 -0.11868298 ;
	setAttr ".pt[173]" -type "float3" 0 0 -0.11868298 ;
	setAttr ".pt[174]" -type "float3" 0 0 -0.11868298 ;
	setAttr ".pt[180]" -type "float3" 0 0 -0.11582223 ;
	setAttr ".pt[181]" -type "float3" 0 0 -0.11582223 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "transform7" -p "pCube7";
	rename -uid "5512035F-4C38-D3C1-362A-E4B7572D5573";
	setAttr ".v" no;
createNode mesh -n "pCube7Shape" -p "transform7";
	rename -uid "10727EAA-4DE7-C964-4FC4-7BBE3E03CCA7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 109 ".pt";
	setAttr ".pt[173]" -type "float3" 0 0 0.073904976 ;
	setAttr ".pt[174]" -type "float3" 0 0 0.073904976 ;
	setAttr ".pt[176]" -type "float3" 0 -0.026107319 0.074527927 ;
	setAttr ".pt[177]" -type "float3" 0 -0.026107319 0.18861714 ;
	setAttr ".pt[178]" -type "float3" 0 -0.026107319 0.18861714 ;
	setAttr ".pt[179]" -type "float3" 0 -0.026107319 0.074527927 ;
	setAttr ".pt[180]" -type "float3" 0 -0.10900896 0.073904976 ;
	setAttr ".pt[181]" -type "float3" 0 -0.10900896 0.073904976 ;
	setAttr ".pt[182]" -type "float3" 0 -0.10900896 0.11408922 ;
	setAttr ".pt[183]" -type "float3" 0 -0.10900896 0.11408922 ;
	setAttr ".pt[184]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[185]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[186]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[187]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[188]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[189]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[190]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[191]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[192]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[193]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[194]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[195]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[196]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[197]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[198]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[199]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[200]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[201]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[202]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[203]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[204]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[205]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[206]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[207]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[208]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[209]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[210]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[211]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[212]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[213]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[214]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[215]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[216]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[217]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[218]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[219]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[220]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[221]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[222]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[223]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[224]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[225]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[226]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[227]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[228]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[229]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[230]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[231]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[232]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[233]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[234]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[235]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[236]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[237]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[238]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[239]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[240]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[241]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[242]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[243]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[244]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[245]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[246]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[247]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[248]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[249]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[250]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[251]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[252]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[253]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[254]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[255]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[256]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[257]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[258]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[259]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[260]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[261]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[262]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[263]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[264]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[265]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[266]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[267]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[268]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[269]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[270]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[271]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[272]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[273]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[274]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[275]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[276]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[277]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[278]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[279]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[280]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".pt[281]" -type "float3" -0.010079329 -0.13110992 0.10359679 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface3" -p "pCube7";
	rename -uid "DC0DE95F-49CD-02BC-76D1-4496EA1A4197";
	setAttr ".t" -type "double3" 0.023382032911898942 0 0 ;
	setAttr ".rp" -type "double3" -0.35774806804732717 2.9660567096287531 0 ;
	setAttr ".sp" -type "double3" -0.35774806804732717 2.9660567096287531 0 ;
createNode transform -n "transform8" -p "polySurface3";
	rename -uid "A28F6D31-4AAE-10E5-87CD-A9BEBE64B8FA";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform8";
	rename -uid "E29ACEEF-4A3A-3E10-E2DE-91A1850BAE14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:94]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.083333343267440796 2.3333331346511841 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 111 ".uvst[0].uvsp[0:110]" -type "float2" 0 0.16666667 0.33333334
		 0.16666667 0.33333337 0.23333335 0 0.23333335 0.66666669 0.16666667 0.66666675 0.23333335
		 0 0.33333334 0.33333334 0.33333334 0.33333334 0.66666669 0 0.66666669 0.66666669
		 0.33333334 0.66666669 0.66666669 0.33333334 1 0 1 0.66666669 1 0.33333334 1.33333337
		 0 1.33333337 0.66666669 1.33333337 0.33333334 1.66666675 0 1.66666675 0.66666669
		 1.66666675 0.33333334 2 0 2 0.66666669 2 0.33333334 2.33333325 0 2.33333325 0.66666669
		 2.33333325 0.33333334 2.66666651 0 2.66666651 0.66666669 2.66666651 0 2.76666641
		 0.33333334 2.76666641 0.33333334 2.83333302 0 2.83333302 0.66666669 2.76666641 0.66666669
		 2.83333302 0 2.99999976 0.33333334 2.99999976 0.33333334 3.33333302 0 3.33333302
		 0.66666669 2.99999976 0.66666669 3.33333302 0.33333334 3.66666627 0 3.66666627 0.33333334
		 3.99999952 0 3.99999952 0.66666669 3.66666627 0.66666669 3.99999952 -1 0.16666667
		 -0.66666663 0.16666667 -0.66666663 0.23333335 -1 0.23333333 -0.66666663 0.16666667
		 -0.33333328 0.16666667 -0.33333328 0.23333335 -0.66666663 0.23333335 -0.33333328
		 0.16666667 -0.33333328 0.23333335 -1 0.33333334 -0.66666663 0.33333334 -0.66666663
		 0.66666669 -1 0.66666669 -0.66666663 0.33333334 -0.33333328 0.33333334 -0.33333328
		 0.66666669 -0.66666663 0.66666669 -0.33333328 0.33333334 0 0.33333334 0 0.66666669
		 -0.33333328 0.66666669 -0.66666663 1 -1 1 -0.33333328 1 0 1 -0.66666663 0 -0.33333328
		 0 -0.33333328 0 -0.66666663 0 -1 0.33333334 -0.66666663 0.33333334 -1 0.66666669
		 -0.33333328 0.33333334 -0.66666663 1 -1 1 -1 1 -0.66666663 1 -1 1 -0.33333328 1 -0.66666663
		 1 0 1 -0.33333328 1 -0.33333328 1 0 1 0 0 0.33333334 0 0.66666669 0 -1 0 -0.66666663
		 0 -0.33333328 0 -0.33333328 0.16666667 -0.66666663 0.16666667 -0.66666663 0.23333335
		 -0.33333328 0.23333335 0.66666663 1.77777743 0.66666669 1.91268635 0.66666675 1.97342229
		 0.66666669 2.05034852 0.66666663 1.22222161 0.66666669 1.09266758 0.66666675 1.03561461
		 0.66666669 0.96577591;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[32]" -type "float3" 0 0 -0.16302876 ;
	setAttr ".pt[35]" -type "float3" 0 0 -0.16302876 ;
	setAttr -s 98 ".vt[0:97]"  -0.038298756 2.37736607 1.34300721 -0.038298756 2.37736607 1.12693357
		 -0.038298756 2.40733838 0.94233096 0.11082023 2.84818172 1.49212623 0.11082023 2.82869697 1.17663991
		 0.11082023 2.76926947 0.82368821 0.13759086 3.030601025 1.51066411 0.13759086 3.030601025 1.17733073
		 0.13759086 3.030601025 0.84399742 0.025121573 3.36393428 1.43278229 -0.017792014 3.36393428 1.17442846
		 -0.010846047 3.26224256 0.92057055 -0.32591823 3.46623564 1.51066411 -0.19574249 3.36393428 1.17733073
		 -0.19574249 3.30548811 0.80985153 -0.39890012 3.46623564 1.51066411 -0.5290758 3.36393428 1.17733073
		 -0.5290758 3.30548811 0.80985153 -0.74993986 3.36393428 1.43278229 -0.7070263 3.36393428 1.17442846
		 -0.71397221 3.26224256 0.92057055 -0.86240911 3.030601025 1.51066411 -0.86240911 3.030601025 1.17733073
		 -0.86240911 3.030601025 0.84399742 -0.83563846 2.84818172 1.49212623 -0.83563846 2.688344 1.17663991
		 -0.83563846 2.76926947 0.82368821 -0.6865195 2.37736607 1.34300721 -0.6865195 2.37736607 1.12693357
		 -0.6865195 2.40733838 0.94233096 -0.5290758 2.40306401 1.51066411 -0.5290758 2.36393428 1.35378778
		 -0.5290758 2.39390659 0.94000268 -0.19574246 2.40306401 1.51066411 -0.19574246 2.36393428 1.35378778
		 -0.19574246 2.39390659 0.94000268 -0.7177099 2.69726753 1.51066411 -0.0071083591 2.69726753 1.51066411
		 -0.55437511 2.27705956 1.8235234 -0.17044318 2.27705956 1.8235234 -0.084661365 2.69726753 1.81819224
		 -0.64015692 2.69726753 1.81819224 -0.76535636 2.88032031 1.72497249 -0.5590716 3.096872807 1.81819224
		 -0.79110849 3.096872807 1.75997579 -0.1657467 3.096872807 1.81819224 0.040538136 2.88032031 1.72497249
		 0.06629023 3.096872807 1.75997579 -0.5290758 3.36393428 1.68881845 -0.71049595 3.32955194 1.67113531
		 -0.19574249 3.36393428 1.68881845 -0.014322249 3.32955194 1.67113531 0.045387838 2.52609253 1.4266938
		 0.045387838 2.52609253 1.15482914 0.045387838 2.51410365 0.86348248 -0.77020609 2.51410365 0.86348248
		 -0.77020609 2.52609253 1.15482914 -0.77020609 2.52609253 1.4266938 -0.5290758 2.53060079 1.51066411
		 -0.61834651 2.51167893 1.72015572 -0.10647181 2.51167893 1.72015572 -0.19574246 2.53060079 1.51066411
		 -0.81121224 2.59369826 1.46769989 -0.81121224 2.59369826 1.16849792 -0.81121224 2.59219956 0.84831512
		 0.086393982 2.59219956 0.84831512 0.086393982 2.59369826 1.16849792 0.086393982 2.59369826 1.4677
		 -0.19574246 2.59726763 1.51066411 -0.08372876 2.57663822 1.81819224 -0.6410895 2.57663822 1.81819224
		 -0.5290758 2.59726763 1.51066411 -0.64015692 2.74205089 2.10847306 -0.084661365 2.74205089 2.10847306
		 -0.19574247 2.97087812 1.94427264 -0.5290758 2.97087812 1.94427264 -0.08372876 2.57663822 2.10847306
		 -0.6410895 2.57663822 2.10847306 -0.48352975 2.29600477 2.049077749 -0.24128857 2.29600477 2.049077749
		 -0.20092595 2.46453238 2.020919561 -0.52389234 2.46453238 2.020919561 -0.45414606 3.50294209 1.51066411
		 -0.72231692 3.46918058 1.43278229 -0.67059612 3.46855974 1.67113531 -0.5290758 3.50294209 1.68881845
		 -0.0025013969 3.46918058 1.43278229 -0.27067229 3.50294209 1.51066411 -0.19574249 3.50294209 1.68881845
		 -0.054222073 3.46855974 1.67113531 -0.19574215 3.030601025 0.71087283 -0.19718486 2.76926947 0.65382051
		 -0.19786893 2.59219956 0.72064185 -0.19901791 2.51410365 0.74917984 -0.52907562 3.030601025 0.71087283
		 -0.52980512 2.76926947 0.65382051 -0.53015131 2.59219956 0.72064185 -0.53073204 2.51410365 0.74917984;
	setAttr -s 192 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 1 4 5 1 6 7 1 7 8 1 9 10 0 10 11 0
		 12 13 1 13 14 1 15 16 1 16 17 1 18 19 0 19 20 0 21 22 1 22 23 1 24 25 1 25 26 1 27 28 0
		 28 29 0 30 31 1 31 32 0 33 34 1 34 35 0 0 52 0 1 53 1 2 54 0 3 6 0 4 7 1 5 8 0 6 9 0
		 7 10 1 8 11 0 9 12 0 10 13 1 11 14 0 12 15 0 13 16 1 14 17 0 15 18 0 16 19 1 17 20 0
		 18 21 0 19 22 1 20 23 0 21 24 0 22 25 1 23 26 0 24 62 0 25 63 1 26 64 0 27 30 0 28 31 1
		 29 32 0 30 33 0 31 34 0 32 35 0 33 0 0 34 1 1 35 2 0 24 36 0 37 3 0 30 58 0 33 61 0
		 30 38 0 33 39 0 38 39 0 37 40 0 39 60 0 36 41 0 38 59 0 24 42 0 42 41 0 41 43 0 21 44 0
		 44 43 1 44 42 0 40 45 0 43 45 0 3 46 0 40 46 0 6 47 0 46 47 0 45 47 1 15 48 0 43 48 1
		 18 49 0 48 49 0 49 44 0 12 50 0 45 50 1 50 48 0 9 51 0 47 51 0 51 50 0 52 67 0 53 66 1
		 54 65 0 55 29 0 56 28 1 57 27 0 58 71 0 59 70 0 60 69 0 61 68 0 52 53 1 53 54 1 55 56 1
		 56 57 1 57 58 1 58 59 1 59 60 0 60 61 1 61 52 1 62 57 0 63 56 1 64 55 0 65 5 0 66 4 1
		 67 3 0 68 37 0 69 40 0 70 41 0 71 36 0 62 63 1 63 64 1 65 66 1 66 67 1 67 68 1 68 69 1
		 69 70 0 70 71 1 71 62 1 41 72 0 40 73 0 72 73 1 45 74 0 73 74 0 43 75 0 75 74 0 72 75 0
		 69 76 0 70 77 0 76 77 0 76 73 0 77 72 0 38 78 0 39 79 0 78 79 0 60 80 0 79 80 0 59 81 0
		 81 80 0 78 81 0 15 82 0 18 83 0 82 83 0 49 84 0 83 84 0 48 85 0 85 84 0 82 85 0 9 86 0
		 12 87 0 86 87 0 50 88 0;
	setAttr ".ed[166:191]" 87 88 0 51 89 0 89 88 0 86 89 0 8 90 1 5 91 1 65 92 1
		 54 93 1 90 94 1 91 95 1 92 96 1 93 97 1 14 90 1 90 91 1 91 92 1 92 93 1 93 35 1 94 23 1
		 95 26 1 96 64 1 97 55 1 17 94 1 94 95 1 95 96 1 96 97 1 97 32 1;
	setAttr -s 95 -ch 380 ".fc[0:94]" -type "polyFaces" 
		f 4 105 96 127 -96
		mu 0 4 0 1 2 3
		f 4 106 97 126 -97
		mu 0 4 1 4 5 2
		f 4 2 28 -5 -28
		mu 0 4 6 7 8 9
		f 4 3 29 -6 -29
		mu 0 4 7 10 11 8
		f 4 4 31 -7 -31
		mu 0 4 9 8 12 13
		f 4 5 32 -8 -32
		mu 0 4 8 11 14 12
		f 4 6 34 -9 -34
		mu 0 4 13 12 15 16
		f 4 7 35 -10 -35
		mu 0 4 12 14 17 15
		f 4 8 37 -11 -37
		mu 0 4 16 15 18 19
		f 4 9 38 -12 -38
		mu 0 4 15 17 20 18
		f 4 10 40 -13 -40
		mu 0 4 19 18 21 22
		f 4 11 41 -14 -41
		mu 0 4 18 20 23 21
		f 4 12 43 -15 -43
		mu 0 4 22 21 24 25
		f 4 13 44 -16 -44
		mu 0 4 21 23 26 24
		f 4 14 46 -17 -46
		mu 0 4 25 24 27 28
		f 4 15 47 -18 -47
		mu 0 4 24 26 29 27
		f 4 124 115 108 -115
		mu 0 4 30 31 32 33
		f 4 125 116 107 -116
		mu 0 4 31 34 35 32
		f 4 18 52 -21 -52
		mu 0 4 36 37 38 39
		f 4 19 53 -22 -53
		mu 0 4 37 40 41 38
		f 4 20 55 -23 -55
		mu 0 4 39 38 42 43
		f 4 22 58 -1 -58
		mu 0 4 43 42 44 45
		f 4 23 59 -2 -59
		mu 0 4 42 46 47 44
		f 4 109 101 132 114
		mu 0 4 48 49 50 51
		f 4 111 103 130 -103
		mu 0 4 52 53 54 55
		f 4 113 95 128 -105
		mu 0 4 56 0 3 57
		f 4 72 73 -76 76
		mu 0 4 58 59 60 61
		f 4 135 137 -140 -141
		mu 0 4 62 63 64 65
		f 4 80 82 -84 -78
		mu 0 4 66 67 68 69
		f 4 75 85 87 88
		mu 0 4 61 60 70 71
		f 4 78 90 91 -86
		mu 0 4 60 69 72 70
		f 4 83 93 94 -91
		mu 0 4 69 68 73 72
		f 4 54 65 -67 -65
		mu 0 4 74 75 76 77
		f 4 112 104 129 -104
		mu 0 4 53 56 57 54
		f 4 131 -102 110 102
		mu 0 4 55 50 49 52
		f 4 60 69 -73 -72
		mu 0 4 78 79 59 58
		f 4 45 71 -77 -75
		mu 0 4 80 78 58 61
		f 4 61 79 -81 -68
		mu 0 4 81 6 67 66
		f 4 27 81 -83 -80
		mu 0 4 6 9 68 67
		f 4 156 158 -161 -162
		mu 0 4 82 83 84 85
		f 4 42 74 -89 -87
		mu 0 4 86 80 61 71
		f 4 36 84 -92 -90
		mu 0 4 87 88 70 72
		f 4 30 92 -94 -82
		mu 0 4 9 13 73 68
		f 4 164 166 -169 -170
		mu 0 4 89 90 91 92
		f 4 0 25 -106 -25
		mu 0 4 93 94 1 0
		f 4 1 26 -107 -26
		mu 0 4 94 95 4 1
		f 4 -108 98 -20 -100
		mu 0 4 32 35 40 37
		f 4 -109 99 -19 -101
		mu 0 4 33 32 37 36
		f 4 51 62 -110 100
		mu 0 4 96 74 49 48
		f 4 -111 -63 64 70
		mu 0 4 52 49 74 77
		f 4 148 150 -153 -154
		mu 0 4 97 98 99 100
		f 4 63 -113 -69 -66
		mu 0 4 75 56 53 76
		f 4 57 24 -114 -64
		mu 0 4 75 93 0 56
		f 4 16 49 -125 -49
		mu 0 4 28 27 31 30
		f 4 17 50 -126 -50
		mu 0 4 27 29 34 31
		f 4 -127 117 -4 -119
		mu 0 4 2 5 10 7
		f 4 -128 118 -3 -120
		mu 0 4 3 2 7 6
		f 4 -129 119 -62 -121
		mu 0 4 57 3 6 81
		f 4 -130 120 67 -122
		mu 0 4 54 57 81 66
		f 4 -144 144 -136 -146
		mu 0 4 101 102 63 62
		f 4 -124 -132 122 -70
		mu 0 4 79 50 55 59
		f 4 -133 123 -61 48
		mu 0 4 51 50 79 78
		f 4 77 136 -138 -135
		mu 0 4 66 69 64 63
		f 4 -79 138 139 -137
		mu 0 4 69 60 65 64
		f 4 -74 133 140 -139
		mu 0 4 60 59 62 65
		f 4 -131 141 143 -143
		mu 0 4 55 54 102 101
		f 4 121 134 -145 -142
		mu 0 4 54 66 63 102
		f 4 -123 142 145 -134
		mu 0 4 59 55 101 62
		f 4 66 147 -149 -147
		mu 0 4 77 76 98 97
		f 4 68 149 -151 -148
		mu 0 4 76 53 99 98
		f 4 -112 151 152 -150
		mu 0 4 53 52 100 99
		f 4 -71 146 153 -152
		mu 0 4 52 77 97 100
		f 4 39 155 -157 -155
		mu 0 4 88 86 83 82
		f 4 86 157 -159 -156
		mu 0 4 86 71 84 83
		f 4 -88 159 160 -158
		mu 0 4 71 70 85 84
		f 4 -85 154 161 -160
		mu 0 4 70 88 82 85
		f 4 33 163 -165 -163
		mu 0 4 13 87 90 89
		f 4 89 165 -167 -164
		mu 0 4 87 72 91 90
		f 4 -95 167 168 -166
		mu 0 4 72 73 92 91
		f 4 -93 162 169 -168
		mu 0 4 73 13 89 92
		f 4 187 183 -45 -42
		mu 0 4 20 103 26 23
		f 4 188 184 -48 -184
		mu 0 4 103 104 29 26
		f 4 189 185 -51 -185
		mu 0 4 104 105 34 29
		f 4 190 186 -117 -186
		mu 0 4 105 106 35 34
		f 4 191 -54 -99 -187
		mu 0 4 106 41 40 35
		f 4 170 -179 -36 -33
		mu 0 4 11 107 17 14
		f 4 171 -180 -171 -30
		mu 0 4 10 108 107 11
		f 4 172 -181 -172 -118
		mu 0 4 5 109 108 10
		f 4 173 -182 -173 -98
		mu 0 4 4 110 109 5
		f 4 -27 -60 -183 -174
		mu 0 4 4 47 46 110
		f 4 178 174 -188 -39
		mu 0 4 17 107 103 20
		f 4 179 175 -189 -175
		mu 0 4 107 108 104 103
		f 4 180 176 -190 -176
		mu 0 4 108 109 105 104
		f 4 181 177 -191 -177
		mu 0 4 109 110 106 105
		f 4 182 -57 -192 -178
		mu 0 4 110 46 41 106;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface1";
	rename -uid "C814C1EE-46F1-6094-C01E-23A29CBEC3C0";
	setAttr ".rp" -type "double3" -0.332691490650177 2.0095677971839905 0.23279452323913574 ;
	setAttr ".sp" -type "double3" -0.332691490650177 2.0095677971839905 0.23279452323913574 ;
createNode mesh -n "polySurface1Shape" -p "|polySurface1";
	rename -uid "3533B287-45F0-35F9-E96B-45A4E7949C65";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.83333331346511841 0.66666668653488159 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt";
	setAttr ".pt[18]" -type "float3" 0 -1.1175871e-008 0 ;
	setAttr ".pt[19]" -type "float3" 0 -1.1175871e-008 0 ;
	setAttr ".pt[20]" -type "float3" 0 -1.1175871e-008 0 ;
	setAttr ".pt[21]" -type "float3" 0 -1.1175871e-008 0 ;
	setAttr ".pt[22]" -type "float3" 0 0 -0.12075586 ;
	setAttr ".pt[104]" -type "float3" 0 -1.1175871e-008 0 ;
	setAttr ".pt[105]" -type "float3" 0 -1.1175871e-008 0 ;
	setAttr ".pt[106]" -type "float3" 0 -1.1175871e-008 0 ;
	setAttr ".pt[107]" -type "float3" 0 -1.1175871e-008 0 ;
	setAttr ".pt[108]" -type "float3" 0 0 -0.12075586 ;
	setAttr ".pt[268]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".pt[282]" -type "float3" -0.15084997 -0.081432402 -0.026878782 ;
	setAttr ".pt[283]" -type "float3" -0.074622095 0.056862108 -0.01408289 ;
	setAttr ".pt[284]" -type "float3" -0.070434824 -0.021068506 -0.055377979 ;
	setAttr ".pt[285]" -type "float3" -0.13619359 -0.033534043 0.012282371 ;
	setAttr ".pt[286]" -type "float3" 0.074622206 0.056862079 -0.014082885 ;
	setAttr ".pt[287]" -type "float3" 0.15084998 -0.081432402 -0.026878778 ;
	setAttr ".pt[288]" -type "float3" 0.13619365 -0.033534043 0.012282371 ;
	setAttr ".pt[289]" -type "float3" 0.070434861 -0.021068502 -0.055377979 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere1";
	rename -uid "D3C2209F-4606-38A9-91AC-85A9B3147034";
	setAttr ".t" -type "double3" -0.55317230141586937 3.1340636784375655 1.836720019203046 ;
	setAttr ".s" -type "double3" 0.053601873226597103 0.053601873226597103 0.053601873226597103 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "E04CBDD8-47A0-5E87-2F7E-8BADE6BEBC94";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999999441206455 0.05000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere2";
	rename -uid "85520F0C-453B-D5E9-767B-EE887ECF4F85";
	setAttr ".t" -type "double3" -0.14183477070214245 3.1340636784375655 1.836720019203046 ;
	setAttr ".s" -type "double3" 0.053601873226597103 0.053601873226597103 0.053601873226597103 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	rename -uid "3810C2C8-46DD-0BF2-DC6F-3A96F46128E1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999999441206455 0.05000000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 109 ".uvst[0].uvsp[0:108]" -type "float2" 0 0.1 0.1 0.1 0.2
		 0.1 0.30000001 0.1 0.40000001 0.1 0.5 0.1 0.60000002 0.1 0.70000005 0.1 0.80000007
		 0.1 0.9000001 0.1 1.000000119209 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000001
		 0.2 0.5 0.2 0.60000002 0.2 0.70000005 0.2 0.80000007 0.2 0.9000001 0.2 1.000000119209
		 0.2 0 0.30000001 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000001 0.30000001
		 0.5 0.30000001 0.60000002 0.30000001 0.70000005 0.30000001 0.80000007 0.30000001
		 0.9000001 0.30000001 1.000000119209 0.30000001 0 0.40000001 0.1 0.40000001 0.2 0.40000001
		 0.30000001 0.40000001 0.40000001 0.40000001 0.5 0.40000001 0.60000002 0.40000001
		 0.70000005 0.40000001 0.80000007 0.40000001 0.9000001 0.40000001 1.000000119209 0.40000001
		 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5 0.40000001 0.5 0.5 0.5 0.60000002 0.5 0.70000005
		 0.5 0.80000007 0.5 0.9000001 0.5 1.000000119209 0.5 0 0.60000002 0.1 0.60000002 0.2
		 0.60000002 0.30000001 0.60000002 0.40000001 0.60000002 0.5 0.60000002 0.60000002
		 0.60000002 0.70000005 0.60000002 0.80000007 0.60000002 0.9000001 0.60000002 1.000000119209
		 0.60000002 0 0.70000005 0.1 0.70000005 0.2 0.70000005 0.30000001 0.70000005 0.40000001
		 0.70000005 0.5 0.70000005 0.60000002 0.70000005 0.70000005 0.70000005 0.80000007
		 0.70000005 0.9000001 0.70000005 1.000000119209 0.70000005 0 0.80000007 0.1 0.80000007
		 0.2 0.80000007 0.30000001 0.80000007 0.40000001 0.80000007 0.5 0.80000007 0.60000002
		 0.80000007 0.70000005 0.80000007 0.80000007 0.80000007 0.9000001 0.80000007 1.000000119209
		 0.80000007 0 0.9000001 0.1 0.9000001 0.2 0.9000001 0.30000001 0.9000001 0.40000001
		 0.9000001 0.5 0.9000001 0.60000002 0.9000001 0.70000005 0.9000001 0.80000007 0.9000001
		 0.9000001 0.9000001 1.000000119209 0.9000001 0.15000001 0 0.34999999 0 0.55000001
		 0 0.75 0 0.94999999 0 0.050000001 1 0.25 1 0.45000002 1 0.65000004 1 0.85000002 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 92 ".vt[0:91]"  0.25000003 -0.95105654 -0.18163569 0.095491491 -0.95105654 -0.29389271
		 -0.095491551 -0.95105654 -0.29389265 -0.25000006 -0.95105654 -0.18163563 -0.30901703 -0.95105654 1.8418849e-008
		 -0.25000003 -0.95105654 0.18163568 -0.095491499 -0.95105654 0.29389265 0.095491514 -0.95105654 0.29389265
		 0.25 -0.95105654 0.18163563 0.309017 -0.95105654 0 0.4755283 -0.809017 -0.34549159
		 0.1816356 -0.809017 -0.55901712 -0.18163572 -0.809017 -0.55901706 -0.47552836 -0.809017 -0.3454915
		 -0.5877853 -0.809017 3.5034731e-008 -0.4755283 -0.809017 0.34549156 -0.18163562 -0.809017 0.55901706
		 0.18163565 -0.809017 0.559017 0.47552827 -0.809017 0.3454915 0.58778524 -0.809017 0
		 0.65450853 -0.58778524 -0.47552839 0.24999996 -0.58778524 -0.76942104 -0.25000012 -0.58778524 -0.76942098
		 -0.65450865 -0.58778524 -0.47552827 -0.80901712 -0.58778524 4.8221171e-008 -0.65450853 -0.58778524 0.47552836
		 -0.24999999 -0.58778524 0.76942098 0.25000003 -0.58778524 0.76942092 0.65450853 -0.58778524 0.47552827
		 0.809017 -0.58778524 0 0.76942098 -0.30901697 -0.55901718 0.29389259 -0.30901697 -0.90450871
		 -0.29389277 -0.30901697 -0.90450859 -0.7694211 -0.30901697 -0.559017 -0.95105666 -0.30901697 5.6687387e-008
		 -0.76942098 -0.30901697 0.55901712 -0.29389262 -0.30901697 0.90450859 0.29389268 -0.30901697 0.90450853
		 0.76942092 -0.30901697 0.559017 0.95105654 -0.30901697 0 0.80901706 0 -0.58778542
		 0.30901694 0 -0.95105672 -0.30901715 0 -0.9510566 -0.80901718 0 -0.58778524 -1.000000119209 0 5.9604645e-008
		 -0.80901706 0 0.58778536 -0.30901697 0 0.9510566 0.30901703 0 0.95105654 0.809017 0 0.58778524
		 1 0 0 0.76942098 0.30901697 -0.55901718 0.29389259 0.30901697 -0.90450871 -0.29389277 0.30901697 -0.90450859
		 -0.7694211 0.30901697 -0.559017 -0.95105666 0.30901697 5.6687387e-008 -0.76942098 0.30901697 0.55901712
		 -0.29389262 0.30901697 0.90450859 0.29389268 0.30901697 0.90450853 0.76942092 0.30901697 0.559017
		 0.95105654 0.30901697 0 0.65450853 0.58778524 -0.47552839 0.24999996 0.58778524 -0.76942104
		 -0.25000012 0.58778524 -0.76942098 -0.65450865 0.58778524 -0.47552827 -0.80901712 0.58778524 4.8221171e-008
		 -0.65450853 0.58778524 0.47552836 -0.24999999 0.58778524 0.76942098 0.25000003 0.58778524 0.76942092
		 0.65450853 0.58778524 0.47552827 0.809017 0.58778524 0 0.4755283 0.809017 -0.34549159
		 0.1816356 0.809017 -0.55901712 -0.18163572 0.809017 -0.55901706 -0.47552836 0.809017 -0.3454915
		 -0.5877853 0.809017 3.5034731e-008 -0.4755283 0.809017 0.34549156 -0.18163562 0.809017 0.55901706
		 0.18163565 0.809017 0.559017 0.47552827 0.809017 0.3454915 0.58778524 0.809017 0
		 0.25000003 0.95105654 -0.18163569 0.095491491 0.95105654 -0.29389271 -0.095491551 0.95105654 -0.29389265
		 -0.25000006 0.95105654 -0.18163563 -0.30901703 0.95105654 1.8418849e-008 -0.25000003 0.95105654 0.18163568
		 -0.095491499 0.95105654 0.29389265 0.095491514 0.95105654 0.29389265 0.25 0.95105654 0.18163563
		 0.309017 0.95105654 0 0 -1 0 0 1 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 10 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 20 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 30 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 40 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 50 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 60 0 70 71 0 71 72 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 70 0 80 81 0 81 82 0 82 83 0 83 84 0 84 85 0 85 86 0
		 86 87 0 87 88 0 88 89 0 89 80 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0
		 7 17 0 8 18 0 9 19 0 10 20 0 11 21 0 12 22 0 13 23 0 14 24 0 15 25 0 16 26 0 17 27 0
		 18 28 0 19 29 0 20 30 0 21 31 0 22 32 0 23 33 0 24 34 0 25 35 0 26 36 0 27 37 0 28 38 0
		 29 39 0 30 40 0 31 41 0 32 42 0 33 43 0 34 44 0 35 45 0 36 46 0 37 47 0 38 48 0 39 49 0
		 40 50 0 41 51 0 42 52 0 43 53 0 44 54 0 45 55 0 46 56 0 47 57 0 48 58 0 49 59 0 50 60 0
		 51 61 0 52 62 0 53 63 0 54 64 0 55 65 0 56 66 0 57 67 0 58 68 0 59 69 0 60 70 0 61 71 0
		 62 72 0 63 73 0 64 74 0 65 75 0 66 76 0 67 77 0 68 78 0 69 79 0 70 80 0 71 81 0 72 82 0
		 73 83 0 74 84 0 75 85 0;
	setAttr ".ed[166:179]" 76 86 0 77 87 0 78 88 0 79 89 0 90 0 0 90 2 0 90 4 0
		 90 6 0 90 8 0 80 91 0 82 91 0 84 91 0 86 91 0 88 91 0;
	setAttr -s 90 -ch 360 ".fc[0:89]" -type "polyFaces" 
		f 4 0 91 -11 -91
		mu 0 4 0 1 12 11
		f 4 1 92 -12 -92
		mu 0 4 1 2 13 12
		f 4 2 93 -13 -93
		mu 0 4 2 3 14 13
		f 4 3 94 -14 -94
		mu 0 4 3 4 15 14
		f 4 4 95 -15 -95
		mu 0 4 4 5 16 15
		f 4 5 96 -16 -96
		mu 0 4 5 6 17 16
		f 4 6 97 -17 -97
		mu 0 4 6 7 18 17
		f 4 7 98 -18 -98
		mu 0 4 7 8 19 18
		f 4 8 99 -19 -99
		mu 0 4 8 9 20 19
		f 4 9 90 -20 -100
		mu 0 4 9 10 21 20
		f 4 10 101 -21 -101
		mu 0 4 11 12 23 22
		f 4 11 102 -22 -102
		mu 0 4 12 13 24 23
		f 4 12 103 -23 -103
		mu 0 4 13 14 25 24
		f 4 13 104 -24 -104
		mu 0 4 14 15 26 25
		f 4 14 105 -25 -105
		mu 0 4 15 16 27 26
		f 4 15 106 -26 -106
		mu 0 4 16 17 28 27
		f 4 16 107 -27 -107
		mu 0 4 17 18 29 28
		f 4 17 108 -28 -108
		mu 0 4 18 19 30 29
		f 4 18 109 -29 -109
		mu 0 4 19 20 31 30
		f 4 19 100 -30 -110
		mu 0 4 20 21 32 31
		f 4 20 111 -31 -111
		mu 0 4 22 23 34 33
		f 4 21 112 -32 -112
		mu 0 4 23 24 35 34
		f 4 22 113 -33 -113
		mu 0 4 24 25 36 35
		f 4 23 114 -34 -114
		mu 0 4 25 26 37 36
		f 4 24 115 -35 -115
		mu 0 4 26 27 38 37
		f 4 25 116 -36 -116
		mu 0 4 27 28 39 38
		f 4 26 117 -37 -117
		mu 0 4 28 29 40 39
		f 4 27 118 -38 -118
		mu 0 4 29 30 41 40
		f 4 28 119 -39 -119
		mu 0 4 30 31 42 41
		f 4 29 110 -40 -120
		mu 0 4 31 32 43 42
		f 4 30 121 -41 -121
		mu 0 4 33 34 45 44
		f 4 31 122 -42 -122
		mu 0 4 34 35 46 45
		f 4 32 123 -43 -123
		mu 0 4 35 36 47 46
		f 4 33 124 -44 -124
		mu 0 4 36 37 48 47
		f 4 34 125 -45 -125
		mu 0 4 37 38 49 48
		f 4 35 126 -46 -126
		mu 0 4 38 39 50 49
		f 4 36 127 -47 -127
		mu 0 4 39 40 51 50
		f 4 37 128 -48 -128
		mu 0 4 40 41 52 51
		f 4 38 129 -49 -129
		mu 0 4 41 42 53 52
		f 4 39 120 -50 -130
		mu 0 4 42 43 54 53
		f 4 40 131 -51 -131
		mu 0 4 44 45 56 55
		f 4 41 132 -52 -132
		mu 0 4 45 46 57 56
		f 4 42 133 -53 -133
		mu 0 4 46 47 58 57
		f 4 43 134 -54 -134
		mu 0 4 47 48 59 58
		f 4 44 135 -55 -135
		mu 0 4 48 49 60 59
		f 4 45 136 -56 -136
		mu 0 4 49 50 61 60
		f 4 46 137 -57 -137
		mu 0 4 50 51 62 61
		f 4 47 138 -58 -138
		mu 0 4 51 52 63 62
		f 4 48 139 -59 -139
		mu 0 4 52 53 64 63
		f 4 49 130 -60 -140
		mu 0 4 53 54 65 64
		f 4 50 141 -61 -141
		mu 0 4 55 56 67 66
		f 4 51 142 -62 -142
		mu 0 4 56 57 68 67
		f 4 52 143 -63 -143
		mu 0 4 57 58 69 68
		f 4 53 144 -64 -144
		mu 0 4 58 59 70 69
		f 4 54 145 -65 -145
		mu 0 4 59 60 71 70
		f 4 55 146 -66 -146
		mu 0 4 60 61 72 71
		f 4 56 147 -67 -147
		mu 0 4 61 62 73 72
		f 4 57 148 -68 -148
		mu 0 4 62 63 74 73
		f 4 58 149 -69 -149
		mu 0 4 63 64 75 74
		f 4 59 140 -70 -150
		mu 0 4 64 65 76 75
		f 4 60 151 -71 -151
		mu 0 4 66 67 78 77
		f 4 61 152 -72 -152
		mu 0 4 67 68 79 78
		f 4 62 153 -73 -153
		mu 0 4 68 69 80 79
		f 4 63 154 -74 -154
		mu 0 4 69 70 81 80
		f 4 64 155 -75 -155
		mu 0 4 70 71 82 81
		f 4 65 156 -76 -156
		mu 0 4 71 72 83 82
		f 4 66 157 -77 -157
		mu 0 4 72 73 84 83
		f 4 67 158 -78 -158
		mu 0 4 73 74 85 84
		f 4 68 159 -79 -159
		mu 0 4 74 75 86 85
		f 4 69 150 -80 -160
		mu 0 4 75 76 87 86
		f 4 70 161 -81 -161
		mu 0 4 77 78 89 88
		f 4 71 162 -82 -162
		mu 0 4 78 79 90 89
		f 4 72 163 -83 -163
		mu 0 4 79 80 91 90
		f 4 73 164 -84 -164
		mu 0 4 80 81 92 91
		f 4 74 165 -85 -165
		mu 0 4 81 82 93 92
		f 4 75 166 -86 -166
		mu 0 4 82 83 94 93
		f 4 76 167 -87 -167
		mu 0 4 83 84 95 94
		f 4 77 168 -88 -168
		mu 0 4 84 85 96 95
		f 4 78 169 -89 -169
		mu 0 4 85 86 97 96
		f 4 79 160 -90 -170
		mu 0 4 86 87 98 97
		f 4 -1 -171 171 -2
		mu 0 4 1 0 99 2
		f 4 -3 -172 172 -4
		mu 0 4 3 2 100 4
		f 4 -5 -173 173 -6
		mu 0 4 5 4 101 6
		f 4 -7 -174 174 -8
		mu 0 4 7 6 102 8
		f 4 -9 -175 170 -10
		mu 0 4 9 8 103 10
		f 4 -176 80 81 176
		mu 0 4 104 88 89 90
		f 4 -177 82 83 177
		mu 0 4 105 90 91 92
		f 4 -178 84 85 178
		mu 0 4 106 92 93 94
		f 4 -179 86 87 179
		mu 0 4 107 94 95 96
		f 4 -180 88 89 175
		mu 0 4 108 96 97 98;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
parent -s -nc -r -add "|pCube1|transform1|pCubeShape1" "transform2" ;
parent -s -nc -r -add "|pCube3|transform3|pCube3Shape" "transform4" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6783764A-47D9-8FEB-FE90-FD9BD11E1EDB";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "14B838D2-4134-D950-8F2D-00B18045FD2E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9EECF9AE-4B55-FB3F-6E2A-A1AEFE65B0F6";
createNode displayLayerManager -n "layerManager";
	rename -uid "9D94CDDA-448B-2E62-40B6-47B633A8733C";
createNode displayLayer -n "defaultLayer";
	rename -uid "A852551C-456C-B826-9442-EC91A590F48E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "264D2050-4408-D992-CD89-0AB233EDD2D9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "3D7DAF19-477C-D6E3-1F1D-AEABF0695F74";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "FB19D830-45DA-16F3-E037-7082F9C1AAF7";
	setAttr ".sw" 3;
	setAttr ".cuv" 1;
createNode polyTweak -n "polyTweak1";
	rename -uid "4F64A2C8-41BF-EE00-98BE-7482838D82AA";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[1]" -type "float3" 0.31161261 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.59725726 -0.041548353 0 ;
	setAttr ".tk[3]" -type "float3" 0.81019253 -0.12464505 0 ;
	setAttr ".tk[5]" -type "float3" 0.31161261 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.59725726 -0.041548353 0 ;
	setAttr ".tk[7]" -type "float3" 0.81019253 -0.21293531 0 ;
	setAttr ".tk[9]" -type "float3" 0.31161261 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.59725726 -0.041548353 0 ;
	setAttr ".tk[11]" -type "float3" 0.81019253 -0.21293531 0 ;
	setAttr ".tk[13]" -type "float3" 0.31161261 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.59725726 -0.041548353 0 ;
	setAttr ".tk[15]" -type "float3" 0.81019253 -0.12464505 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "9C81293D-4933-D0F0-72B3-1CA49C3744D3";
	setAttr -s 5 ".e[0:4]"  0.48133901 0.48133901 0.48133901 0.48133901
		 0.48133901;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483639 -2147483642 -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "0F0DD73F-4AC7-FCC9-8DD7-AD89F347708E";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.7633478316712747 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.70254827 1.7789284 0 ;
	setAttr ".rs" 37537;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.70254826545715332 1.2477671775269876 -0.5 ;
	setAttr ".cbx" -type "double3" -0.70254826545715332 2.3100897344994911 0.5 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "E6DB0273-4189-0AA1-87B2-14BEFA9A8A3F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" -0.2025483 -0.015580626 -7.4505806e-009 ;
	setAttr ".tk[4]" -type "float3" -0.20254828 0.046741888 -7.4505806e-009 ;
	setAttr ".tk[8]" -type "float3" -0.20254828 0.046741888 7.4505806e-009 ;
	setAttr ".tk[12]" -type "float3" -0.2025483 -0.015580626 7.4505806e-009 ;
	setAttr ".tk[16]" -type "float3" -0.11945152 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.11945152 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.11945152 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.11945152 0 0 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "523F26D6-4C61-4C82-7AC3-D1B1C3D4656A";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[0:23]" -type "float3"  2.2351742e-008 -7.4505806e-009
		 3.7252903e-009 9.3132257e-010 7.4505806e-009 3.7252903e-009 -1.8626451e-009 -1.3038516e-008
		 3.7252903e-009 1.1175871e-008 0.1235152 -0.13547616 2.2351742e-008 1.3038516e-008
		 3.7252903e-009 9.3132257e-010 3.7252903e-009 3.7252903e-009 -1.8626451e-009 3.7252903e-009
		 3.7252903e-009 1.1175871e-008 -0.12351509 -0.13547616 2.2351742e-008 1.3038516e-008
		 -3.7252903e-009 9.3132257e-010 3.7252903e-009 -3.7252903e-009 -1.8626451e-009 3.7252903e-009
		 -3.7252903e-009 1.1175871e-008 -0.12351509 0.13547616 2.2351742e-008 -7.4505806e-009
		 -3.7252903e-009 9.3132257e-010 7.4505806e-009 -3.7252903e-009 -1.8626451e-009 -1.3038516e-008
		 -3.7252903e-009 1.1175871e-008 0.1235152 0.13547616 3.7252903e-009 7.4505806e-009
		 3.7252903e-009 3.7252903e-009 7.4505806e-009 -3.7252903e-009 3.7252903e-009 3.7252903e-009
		 -3.7252903e-009 3.7252903e-009 3.7252903e-009 3.7252903e-009 -0.30533689 0.13881406
		 0.13067025 -0.30533689 0.13881406 -0.13067028 -0.30533689 -0.13881402 -0.13067028
		 -0.30533689 -0.13881402 0.13067025;
createNode polySplit -n "polySplit2";
	rename -uid "3D095943-4850-496A-7BFE-9D90262197A5";
	setAttr -s 13 ".e[0:12]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5;
	setAttr -s 13 ".d[0:12]"  -2147483632 -2147483614 -2147483631 -2147483630 -2147483629 -2147483621 
		-2147483622 -2147483623 -2147483616 -2147483624 -2147483610 -2147483606 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "E45E25D0-4E4B-7D50-9C9B-A1AE37215772";
	setAttr ".dc" -type "componentList" 4 "f[0:2]" "f[17]" "f[19]" "f[22:33]";
createNode polySplit -n "polySplit3";
	rename -uid "57D444F3-48EB-6177-CFEE-5C96E07D2876";
	setAttr -s 8 ".e[0:7]"  0.60000002 0.40000001 0.40000001 0.60000002
		 0.40000001 0.40000001 0.40000001 0.40000001;
	setAttr -s 8 ".d[0:7]"  -2147483610 -2147483627 -2147483642 -2147483632 -2147483641 -2147483640 
		-2147483639 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "43B00816-425E-3BA7-F669-9B90D2E9412F";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.7633478316712747 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0078852 2.0143368 -0.18466488 ;
	setAttr ".rs" 63973;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.007885217666626 1.8573979708600412 -0.36932975053787231 ;
	setAttr ".cbx" -type "double3" -1.007885217666626 2.1712757620263465 -1.4901161193847656e-008 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "F8285FA7-48F7-914E-5756-61B59346521B";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.7633478316712747 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.126829 1.873891 -0.18466488 ;
	setAttr ".rs" 33413;
	setAttr ".lt" -type "double3" 6.3837823915946501e-016 6.3183778342192422e-017 1.3908923529182857 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2457728385925293 1.8573980006623636 -0.36932975053787231 ;
	setAttr ".cbx" -type "double3" -1.007885217666626 1.8903839412379633 -7.4505805969238281e-009 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "E980C1B4-4920-632D-9F6D-E4826CA79A82";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[11]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[23]" -type "float3" 0 0 2.9802322e-008 ;
	setAttr ".tk[24]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[25]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[32]" -type "float3" -0.23788758 0.032985941 -0.038813442 ;
	setAttr ".tk[33]" -type "float3" -0.23788758 0.032985941 0.038813375 ;
	setAttr ".tk[34]" -type "float3" -0.23788758 -0.032985933 -0.038813442 ;
	setAttr ".tk[35]" -type "float3" -0.23788758 -0.032985933 0.038813375 ;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "BC4DB999-427F-2CD0-2A71-88AB740F0FE9";
	setAttr ".ics" -type "componentList" 2 "e[28:40]" "e[47]";
createNode polyTweak -n "polyTweak5";
	rename -uid "2F89806A-461D-5B4E-F2F5-0A9EA56FC1A3";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[0:39]" -type "float3"  0 0 -0.11972548 0 0 -0.11972548
		 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0
		 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0.044502173 -0.0054017454
		 -0.20030746 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548
		 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 0
		 0 -0.11972548 -0.03894683 0.0028427029 -0.20995297 -0.042039782 0.002924744 -0.20347792
		 0.041409228 -0.0053197136 -0.1938325 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548
		 0 0 -0.11972548 0 0 -0.11972548 0 0 -0.11972548 -0.026781214 0.0032237722 -0.25693297
		 0.039128207 -0.0032878176 -0.24931481 -0.024338361 0.0031589922 -0.26204708 0.041571062
		 -0.0033526244 -0.25442889 -0.050665896 0.0042276643 -0.21825165 0.032783072 -0.0040168031
		 -0.20860611 -0.035407353 0.0045267036 -0.27170676 0.0305021 -0.0019848768 -0.26408863;
createNode polyUnite -n "polyUnite1";
	rename -uid "EC74707F-423C-082F-20C6-84B5EE493637";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "FFEF428B-433F-C50A-44F1-4B882AC88CCA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "CC2B84FB-4FC4-AC87-A38A-7F84BAE261C8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:32]";
createNode groupId -n "groupId2";
	rename -uid "1A743D16-474D-8218-75F6-FB8E2045A3AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "5C501ABC-4829-517C-3C0F-888AA34CA1C9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "F61E1E61-428F-8AB7-57AB-459C3296C308";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:32]";
createNode groupId -n "groupId4";
	rename -uid "1D4BD7C4-417D-7B0B-6023-4C889787E7D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "43CDDA74-4471-D20B-5AB6-27A1ED4FE8B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:65]";
	setAttr ".gi" 21;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "80C10D12-4EB4-D0C6-FDC4-09B091FF5CDF";
	setAttr ".dc" -type "componentList" 2 "f[32]" "f[65]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "2CF49D4B-4D9B-1539-C60C-86ADE5F2FD1D";
	setAttr ".ics" -type "componentList" 4 "e[28:40]" "e[47]" "e[99:111]" "e[118]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 13;
	setAttr ".sv2" 53;
	setAttr ".d" 1;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "B3CE9269-4A96-FBC7-3CF3-0FB8CEC020AE";
	setAttr ".ics" -type "componentList" 1 "f[76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.87469018 2.2421043 0 ;
	setAttr ".rs" 45629;
	setAttr ".lt" -type "double3" -2.7755575615628914e-017 6.0434647971222997e-018 0.47852300536179987 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0468320846557617 2.1741185188293457 -0.2099529504776001 ;
	setAttr ".cbx" -type "double3" -0.70254826545715332 2.3100898265838623 0.2099529504776001 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "026B75DD-49D7-BD06-2B2F-96AC69914E48";
	setAttr ".uopa" yes;
	setAttr -s 58 ".tk";
	setAttr ".tk[0]" -type "float3" 0.17969511 -0.11453652 -0.13044555 ;
	setAttr ".tk[1]" -type "float3" 0.0013066725 -0.10469808 -0.13044555 ;
	setAttr ".tk[2]" -type "float3" -0.12898134 -0.095952384 -0.13044558 ;
	setAttr ".tk[3]" -type "float3" -0.24396522 -0.033878874 -0.10192915 ;
	setAttr ".tk[4]" -type "float3" 0.17969511 0.10907083 -0.13044555 ;
	setAttr ".tk[5]" -type "float3" 0.0013066722 0.1057912 -0.1304456 ;
	setAttr ".tk[6]" -type "float3" -0.12898132 0.11453652 -0.13044555 ;
	setAttr ".tk[7]" -type "float3" -0.24396522 0.10602885 -0.10192915 ;
	setAttr ".tk[8]" -type "float3" 0.096860267 0.1057912 -0.1304456 ;
	setAttr ".tk[9]" -type "float3" 0.096860223 -0.10469808 -0.13044555 ;
	setAttr ".tk[10]" -type "float3" 0.24396525 0.079851873 -0.10294089 ;
	setAttr ".tk[11]" -type "float3" 3.7252903e-009 -1.4901161e-008 1.4901161e-008 ;
	setAttr ".tk[17]" -type "float3" -0.10444718 0.054974388 0 ;
	setAttr ".tk[19]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[20]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[23]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[24]" -type "float3" -1.4901161e-008 -1.094304e-008 1.8626451e-009 ;
	setAttr ".tk[25]" -type "float3" 3.7252903e-009 -8.9406967e-008 7.4505806e-009 ;
	setAttr ".tk[30]" -type "float3" -0.24396522 0.022084264 -0.10192914 ;
	setAttr ".tk[32]" -type "float3" 0 0 1.8626451e-009 ;
	setAttr ".tk[33]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".tk[34]" -type "float3" 0 -7.4505806e-009 -3.7252903e-009 ;
	setAttr ".tk[35]" -type "float3" -2.3283064e-010 2.2351742e-008 -1.4901161e-008 ;
	setAttr ".tk[36]" -type "float3" -1.3411045e-007 7.4505779e-009 2.7939677e-009 ;
	setAttr ".tk[37]" -type "float3" -8.8708475e-008 7.4505806e-009 -4.4703484e-008 ;
	setAttr ".tk[38]" -type "float3" -7.4505806e-008 -2.8865799e-015 -3.259629e-009 ;
	setAttr ".tk[39]" -type "float3" -4.8428774e-008 -2.9802322e-008 -4.4703484e-008 ;
	setAttr ".tk[40]" -type "float3" 0.17969511 -0.11453652 0.13044555 ;
	setAttr ".tk[41]" -type "float3" 0.0013066725 -0.10469808 0.13044555 ;
	setAttr ".tk[42]" -type "float3" -0.12898132 -0.095952384 0.13044555 ;
	setAttr ".tk[43]" -type "float3" -0.24396522 -0.033878874 0.10192915 ;
	setAttr ".tk[44]" -type "float3" 0.17969511 0.10907083 0.13044555 ;
	setAttr ".tk[45]" -type "float3" 0.0013066725 0.10579119 0.13044555 ;
	setAttr ".tk[46]" -type "float3" -0.12898132 0.11453652 0.13044555 ;
	setAttr ".tk[47]" -type "float3" -0.24396522 0.10602885 0.10192915 ;
	setAttr ".tk[48]" -type "float3" 0.096860223 0.10579119 0.13044555 ;
	setAttr ".tk[49]" -type "float3" 0.096860223 -0.10469808 0.13044555 ;
	setAttr ".tk[50]" -type "float3" 0.24396525 0.079851873 0.10294089 ;
	setAttr ".tk[51]" -type "float3" 3.7252903e-009 -1.4901161e-008 -1.4901161e-008 ;
	setAttr ".tk[57]" -type "float3" -0.10444718 0.054974388 0 ;
	setAttr ".tk[63]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[64]" -type "float3" -2.9802322e-008 -1.2165401e-008 -1.7462298e-009 ;
	setAttr ".tk[65]" -type "float3" 3.7252903e-009 -7.4505806e-008 0 ;
	setAttr ".tk[70]" -type "float3" -0.24396513 0.02208427 0.10192918 ;
	setAttr ".tk[72]" -type "float3" 0 0 -1.8626451e-009 ;
	setAttr ".tk[73]" -type "float3" 2.3283064e-010 0 0 ;
	setAttr ".tk[74]" -type "float3" 0 -7.4505806e-009 3.7252903e-009 ;
	setAttr ".tk[75]" -type "float3" -2.3283064e-010 2.2351742e-008 1.4901161e-008 ;
	setAttr ".tk[76]" -type "float3" -1.1920929e-007 6.5192554e-009 -9.3132257e-010 ;
	setAttr ".tk[77]" -type "float3" -1.185108e-007 2.2351742e-008 -7.4505806e-008 ;
	setAttr ".tk[78]" -type "float3" -7.4505806e-008 -2.8865799e-015 4.1909516e-009 ;
	setAttr ".tk[79]" -type "float3" -4.8428774e-008 -2.9802322e-008 -7.4505806e-008 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "A9FD460A-4F5D-B2B2-51F0-2A8B9AAAB6A6";
	setAttr ".ics" -type "componentList" 2 "f[5]" "f[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.85058504 1.5790678 0 ;
	setAttr ".rs" 52279;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.63494265079498291 1.3363360166549683 -0.61972546577453613 ;
	setAttr ".cbx" -type "double3" 1.0662274360656738 1.8217995166778564 0.61972546577453613 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "60D7B0D9-4997-C7E7-8703-25959021533D";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[30]" -type "float3" 0.093636252 -0.01950755 0 ;
	setAttr ".tk[70]" -type "float3" 0.093636252 -0.01950755 0 ;
	setAttr ".tk[84]" -type "float3" -0.035816681 -0.59193367 0.25612995 ;
	setAttr ".tk[85]" -type "float3" 0.086443774 -0.37901539 0.20221744 ;
	setAttr ".tk[86]" -type "float3" 0.061813563 -0.58040881 0.15801135 ;
	setAttr ".tk[87]" -type "float3" 0.17105587 -0.59073097 0.15801135 ;
	setAttr ".tk[88]" -type "float3" -0.035816681 -0.59193367 -0.25612995 ;
	setAttr ".tk[89]" -type "float3" 0.1710559 -0.59073097 -0.1580113 ;
	setAttr ".tk[90]" -type "float3" 0.061813563 -0.58040881 -0.15801132 ;
	setAttr ".tk[91]" -type "float3" 0.086443774 -0.37901539 -0.20221743 ;
createNode polySplit -n "polySplit4";
	rename -uid "889BF617-438C-A0CE-09AB-7F828AE1D1A6";
	setAttr -s 5 ".e[0:4]"  0.60000002 0.60000002 0.60000002 0.60000002
		 0.60000002;
	setAttr -s 5 ".d[0:4]"  -2147483484 -2147483483 -2147483481 -2147483479 -2147483484;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "27398D63-4E41-C7B2-5DFE-B0A4627A02D7";
	setAttr -s 5 ".e[0:4]"  0.69999999 0.69999999 0.69999999 0.69999999
		 0.69999999;
	setAttr -s 5 ".d[0:4]"  -2147483476 -2147483475 -2147483473 -2147483471 -2147483476;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "18AE11BA-4715-D45C-ED11-62A16E17DB57";
	setAttr ".ics" -type "componentList" 2 "f[84]" "f[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1171809 1.0279641 -0.0058112442 ;
	setAttr ".rs" 56927;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.98201662302017212 0.86450076103210449 -0.63325363397598267 ;
	setAttr ".cbx" -type "double3" 1.2523452043533325 1.1914273500442505 0.62163114547729492 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "802EA61B-480E-A519-C5E8-F69869EB6274";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[86]" -type "float3" -0.1460243 0.076662779 0 ;
	setAttr ".tk[87]" -type "float3" 0.015061838 -0.10745825 0.081299633 ;
	setAttr ".tk[89]" -type "float3" 0.015061851 -0.10745825 -0.092922233 ;
	setAttr ".tk[90]" -type "float3" -0.1460243 0.076662779 0 ;
	setAttr ".tk[95]" -type "float3" 0 -0.12944113 1.8626451e-009 ;
	setAttr ".tk[97]" -type "float3" 0 -0.12944113 1.8626451e-009 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "298D1B6B-4CC8-D216-A7D4-EC8EF5608AE2";
	setAttr ".uopa" yes;
	setAttr -s 31 ".tk";
	setAttr ".tk[6]" -type "float3" -0.098573923 0.061895248 0 ;
	setAttr ".tk[18]" -type "float3" 0.067159422 -0.0062399623 0 ;
	setAttr ".tk[29]" -type "float3" -0.24881923 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.0064349393 0 0.12020296 ;
	setAttr ".tk[46]" -type "float3" -0.098573923 0.061895248 0 ;
	setAttr ".tk[58]" -type "float3" 0.067159422 -0.0062399623 0 ;
	setAttr ".tk[69]" -type "float3" -0.24881923 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.0064349957 0 -0.12020296 ;
	setAttr ".tk[84]" -type "float3" 0.067159422 -0.089404255 0 ;
	setAttr ".tk[86]" -type "float3" -0.07106366 -0.096297935 0.13430521 ;
	setAttr ".tk[87]" -type "float3" 0.033239029 0.075191855 0.1542981 ;
	setAttr ".tk[88]" -type "float3" 0.067159422 -0.089404255 0 ;
	setAttr ".tk[89]" -type "float3" 0.033239067 0.075191855 -0.1542981 ;
	setAttr ".tk[90]" -type "float3" -0.071063653 0.045578685 -0.13144711 ;
	setAttr ".tk[91]" -type "float3" 0 0 -4.4703484e-008 ;
	setAttr ".tk[92]" -type "float3" -0.094533287 -0.034386247 0 ;
	setAttr ".tk[93]" -type "float3" -0.098977298 -0.0035579272 -0.11653786 ;
	setAttr ".tk[94]" -type "float3" -0.14529023 -0.075819865 0.11876228 ;
	setAttr ".tk[95]" -type "float3" 0.091861226 -0.098338842 0.11876224 ;
	setAttr ".tk[96]" -type "float3" -0.094533287 -0.034386247 0 ;
	setAttr ".tk[97]" -type "float3" -0.14944375 0.11192784 -0.1197898 ;
	setAttr ".tk[98]" -type "float3" -0.14377014 -0.23196961 -0.11978981 ;
	setAttr ".tk[99]" -type "float3" -0.10060024 0.0035579272 0.11653791 ;
	setAttr ".tk[100]" -type "float3" -0.0034097154 -0.64897913 0.11876228 ;
	setAttr ".tk[101]" -type "float3" 0.021919612 -0.82130921 0.11876228 ;
	setAttr ".tk[102]" -type "float3" 0.033239052 -0.61576217 0.15429813 ;
	setAttr ".tk[103]" -type "float3" -0.033239044 -0.49191862 0.13430519 ;
	setAttr ".tk[104]" -type "float3" 0.023823516 -0.76806653 -0.11978981 ;
	setAttr ".tk[105]" -type "float3" -0.0018896199 -0.60599506 -0.11978982 ;
	setAttr ".tk[106]" -type "float3" -0.033239044 -0.48653954 -0.13144709 ;
	setAttr ".tk[107]" -type "float3" 0.033239089 -0.61576217 -0.15429813 ;
createNode polySplit -n "polySplit6";
	rename -uid "18D913D1-4662-9129-58B3-C684B4C76E15";
	setAttr -s 5 ".e[0:4]"  0.59746403 0.59746403 0.59746403 0.59746403
		 0.59746403;
	setAttr -s 5 ".d[0:4]"  -2147483476 -2147483475 -2147483473 -2147483471 -2147483476;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "226A997D-4C0E-7CB0-417F-F0902A7CE9D5";
	setAttr ".dc" -type "componentList" 5 "f[0:31]" "f[64:79]" "f[81:85]" "f[90:93]" "f[98:101]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "875BB762-488E-21F5-0EDB-FE848D4F5806";
	setAttr ".dc" -type "componentList" 1 "f[32]";
createNode polyTweak -n "polyTweak10";
	rename -uid "E1DC72C3-4258-A93A-327A-31AC182FD82F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[41]" -type "float3" -0.19102681 0 0 ;
	setAttr ".tk[45]" -type "float3" 0.26628545 0.18658006 0 ;
	setAttr ".tk[53]" -type "float3" 0.15205239 0.18658006 0 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "5C93CFE3-44F8-9862-094B-F99AD74BB07B";
	setAttr ".dc" -type "componentList" 2 "f[33]" "f[40:43]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "0C9F6DE0-48AC-C0A1-8046-07A01F836C4C";
	setAttr ".ics" -type "componentList" 3 "e[75]" "e[80:81]" "e[84]";
createNode polyTweak -n "polyTweak11";
	rename -uid "38C411B4-4D03-8BF1-45AC-80AEDAB10D89";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[45]" -type "float3" 0 -0.32073075 -0.14507405 ;
	setAttr ".tk[46]" -type "float3" 0 0.21838608 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.15882944 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.16267249 0 ;
createNode groupParts -n "groupParts4";
	rename -uid "21234AEB-416C-BE16-C9D4-739617FD06E7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:43]";
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "D8FDA811-47F6-9941-BD01-1B8DECBDAADF";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.90797192 1.0252705 -0.773817 ;
	setAttr ".rs" 58458;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.72138643264770508 0.91007941961288452 -0.87585544586181641 ;
	setAttr ".cbx" -type "double3" 1.0945574045181274 1.1404615640640259 -0.67177855968475342 ;
createNode animCurveTL -n "pCube3Shape_pnts_6__pntx";
	rename -uid "76906766-44ED-B78D-D579-3C9EF17FE5D4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCube3Shape_pnts_6__pnty";
	rename -uid "B87AF804-470D-63BB-20EB-388A5AEE740D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCube3Shape_pnts_6__pntz";
	rename -uid "E27641F3-4189-F14F-E781-938E846C63B9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "50FD9DAE-4EE7-11A8-7413-179B7D2F0E92";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.94491208 0.81616986 -0.773817 ;
	setAttr ".rs" 58289;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.79526674747467041 0.70097875595092773 -0.87585544586181641 ;
	setAttr ".cbx" -type "double3" 1.0945574045181274 0.93136090040206909 -0.67177855968475342 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "20D108B9-4E98-2446-0341-7896A54D3AFC";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[40]" -type "float3" -0.34352168 0.0044060796 -0.0049946313 ;
	setAttr ".tk[43]" -type "float3" -0.1532466 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.24997079 1.110223e-015 -0.006109152 ;
	setAttr ".tk[45]" -type "float3" -0.26243296 0.12315065 -0.007138445 ;
	setAttr ".tk[47]" -type "float3" -0.075869277 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.24256286 2.220446e-015 -0.0059281047 ;
	setAttr ".tk[49]" -type "float3" -0.17866966 0.054539435 0.0022724322 ;
	setAttr ".tk[51]" -type "float3" -0.13362701 0.04136999 0.061747909 ;
	setAttr ".tk[52]" -type "float3" 0 -0.20910065 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.20910065 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.20910065 0 ;
	setAttr ".tk[55]" -type "float3" 0.087196998 -0.20910065 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "246A6FF3-484F-59EE-C042-DB96FAF77471";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0537472 0.42609358 -0.773817 ;
	setAttr ".rs" 43933;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.89761751890182495 0.42029708623886108 -0.87585544586181641 ;
	setAttr ".cbx" -type "double3" 1.2098767757415771 0.43189007043838501 -0.67177855968475342 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "86981AB8-4B44-EB64-3F57-1FA8274FE42B";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[40]" -type "float3" 0 0.19622056 0 ;
	setAttr ".tk[41]" -type "float3" -0.17547351 0.19622056 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.065342061 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.19622056 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.19622056 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.19622056 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.1156453 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.1156453 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.19622056 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.19622056 0 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.038936466 ;
	setAttr ".tk[56]" -type "float3" 0.10235076 -0.49947083 0 ;
	setAttr ".tk[57]" -type "float3" 0.11531937 -0.42439619 0 ;
	setAttr ".tk[58]" -type "float3" 0 -0.28068167 0 ;
	setAttr ".tk[59]" -type "float3" 0.10020577 -0.32143658 -0.049369249 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "679ECF0D-46B0-2002-C710-2383DCD73C6D";
	setAttr ".ics" -type "componentList" 1 "f[54:55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.90428525 0.33181989 -0.773817 ;
	setAttr ".rs" 48936;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.89761751890182495 0.23174971342086792 -0.87585544586181641 ;
	setAttr ".cbx" -type "double3" 0.91095298528671265 0.43189007043838501 -0.67177855968475342 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "1E1E5E1B-48FD-200E-B64F-A3B23C0CCB46";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[60]" -type "float3" 0 -0.18854737 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.18854737 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.18854737 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.18854737 0 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "CEDE9518-4745-F755-0870-FD87AC256F8A";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[26]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[27]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[28]" -type "float3" 0 0 -3.7252903e-009 ;
	setAttr ".tk[40]" -type "float3" 0 0.09885221 0.051521845 ;
	setAttr ".tk[41]" -type "float3" 0 0.09885221 0.051521845 ;
	setAttr ".tk[42]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[43]" -type "float3" 0 0.09885221 0.051521845 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.020202739 ;
	setAttr ".tk[45]" -type "float3" -0.069438994 0 0.051521845 ;
	setAttr ".tk[46]" -type "float3" 0 0.30327049 0.051521853 ;
	setAttr ".tk[47]" -type "float3" 0 0.09885221 -0.071724586 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.020202739 ;
	setAttr ".tk[49]" -type "float3" 0.060312826 0 0.051521856 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.051521856 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.13816498 ;
	setAttr ".tk[52]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[53]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[54]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[55]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[56]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[57]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[58]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[59]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[60]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[61]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[62]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[63]" -type "float3" 0 0.30327049 0.051521845 ;
	setAttr ".tk[64]" -type "float3" -0.23495138 0.30327049 0.051521845 ;
	setAttr ".tk[65]" -type "float3" -0.23495138 0.30327049 0.051521845 ;
	setAttr ".tk[66]" -type "float3" -0.23495138 0.30327049 0.051521845 ;
	setAttr ".tk[67]" -type "float3" -0.23495138 0.30327049 0.051521845 ;
	setAttr ".tk[68]" -type "float3" -0.23495138 0.30327049 0.051521845 ;
	setAttr ".tk[69]" -type "float3" -0.23495138 0.30327049 0.051521845 ;
createNode polySplit -n "polySplit7";
	rename -uid "4445F7E5-4604-18A5-AE84-3CB064565A64";
	setAttr -s 5 ".e[0:4]"  0.40000001 0.40000001 0.40000001 0.40000001
		 0.40000001;
	setAttr -s 5 ".d[0:4]"  -2147483585 -2147483582 -2147483580 -2147483584 -2147483585;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "03A75E89-4351-C835-831A-8B97D2C55FCF";
	setAttr -s 5 ".e[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".d[0:4]"  -2147483517 -2147483514 -2147483515 -2147483516 -2147483517;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "A2B9B75D-4FFF-58D7-FC65-9782F8B6251F";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.600811 0.73169738 -0.40831769 ;
	setAttr ".rs" 36291;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7460912466049194 0.68025368452072144 -0.5962873101234436 ;
	setAttr ".cbx" -type "double3" -1.4555307626724243 0.78314113616943359 -0.220348060131073 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "4531A8FB-4D1D-AB37-C986-78B86637B0BA";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[36]" -type "float3" -0.2856032 0.21988437 -0.002096419 ;
	setAttr ".tk[37]" -type "float3" -0.28939271 0.20458318 -0.0022794202 ;
	setAttr ".tk[38]" -type "float3" -0.27387521 0.26594123 -0.0015377251 ;
	setAttr ".tk[39]" -type "float3" -0.27686825 0.25385606 -0.0016822629 ;
	setAttr ".tk[74]" -type "float3" -0.049416021 -0.020724634 -0.00013722185 ;
	setAttr ".tk[75]" -type "float3" -0.053205531 -0.036025815 -0.00032022267 ;
	setAttr ".tk[76]" -type "float3" -0.04068099 0.01324709 0.00027693558 ;
	setAttr ".tk[77]" -type "float3" -0.037687983 0.025332263 0.00042147271 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "BFAF1D17-40CA-1AA3-3938-5A88222C2306";
	setAttr ".ics" -type "componentList" 1 "f[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.714633 0.65177625 -0.45417261 ;
	setAttr ".rs" 52300;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7460912466049194 0.52041137218475342 -0.5962873101234436 ;
	setAttr ".cbx" -type "double3" -1.683174729347229 0.78314113616943359 -0.31205794215202332 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "CDC39B40-42A9-E5AA-6D61-BEA64EB4EC31";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[78]" -type "float3" 0 -0.18336508 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.16406015 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.26272979 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.24342486 0 ;
createNode groupParts -n "groupParts5";
	rename -uid "666FF977-4CF8-EEB9-5417-1E9D2918DF6D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode groupId -n "groupId6";
	rename -uid "FA9203A1-4B69-0C88-68EB-A3ACE512BD9F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "09FABB1F-4A3C-A440-E052-BCA33DE6D43E";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite2";
	rename -uid "B7C5D7D8-48B1-3843-6737-D4B92B1E1784";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId7";
	rename -uid "173C7E3E-43C7-CC1E-D1CD-55BE263A2253";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "2CDD2592-4834-46E9-2816-9894945AA0AB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:155]";
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "2C085915-4AA1-2F83-8470-4399420C0CBF";
	setAttr ".ics" -type "componentList" 4 "e[28:40]" "e[47]" "e[191:203]" "e[210]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 13;
	setAttr ".sv2" 99;
	setAttr ".d" 1;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "A3C63963-424E-B2E6-707A-6B8027FB071A";
	setAttr ".ics" -type "componentList" 1 "f[167]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0483785 2.0172205 0 ;
	setAttr ".rs" 36243;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0499249696731567 1.8603227138519287 -0.26927196979522705 ;
	setAttr ".cbx" -type "double3" -1.0468320846557617 2.1741185188293457 0.26927196979522705 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "17675B39-4342-FA39-2C64-4490FADC3716";
	setAttr ".ics" -type "componentList" 1 "f[167]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0483785 2.0172205 0 ;
	setAttr ".rs" 61949;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0493870973587036 1.9149007797241211 -0.17560380697250366 ;
	setAttr ".cbx" -type "double3" -1.0473699569702148 2.1195404529571533 0.17560380697250366 ;
createNode polyTweak -n "polyTweak18";
	rename -uid "D0484E3B-4E12-B418-524C-49A2D4DC6D15";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[65]" -type "float3" -5.8207661e-011 -1.3969839e-009 -2.9802322e-008 ;
	setAttr ".tk[67]" -type "float3" -5.8207661e-011 3.259629e-009 -2.9802322e-008 ;
	setAttr ".tk[68]" -type "float3" 5.8207661e-011 -3.259629e-009 4.4703484e-008 ;
	setAttr ".tk[69]" -type "float3" 5.8207661e-011 1.3969839e-009 4.4703484e-008 ;
	setAttr ".tk[82]" -type "float3" -2.910383e-011 -5.5879354e-009 -5.2154064e-008 ;
	setAttr ".tk[83]" -type "float3" -9.3132257e-010 -5.5879354e-009 -1.4901161e-008 ;
	setAttr ".tk[84]" -type "float3" 0 9.3132257e-009 -2.9802322e-008 ;
	setAttr ".tk[85]" -type "float3" 9.3132257e-010 7.4505806e-009 -1.4901161e-008 ;
	setAttr ".tk[151]" -type "float3" -5.8207661e-011 -1.3969839e-009 2.2351742e-008 ;
	setAttr ".tk[153]" -type "float3" -5.8207661e-011 3.259629e-009 2.2351742e-008 ;
	setAttr ".tk[154]" -type "float3" 5.8207661e-011 -3.259629e-009 -2.2351742e-008 ;
	setAttr ".tk[155]" -type "float3" 5.8207661e-011 1.3969839e-009 -2.2351742e-008 ;
	setAttr ".tk[168]" -type "float3" -2.910383e-011 -5.5879354e-009 5.2154064e-008 ;
	setAttr ".tk[169]" -type "float3" -9.3132257e-010 -5.5879354e-009 1.4901161e-008 ;
	setAttr ".tk[170]" -type "float3" 0 9.3132257e-009 2.9802322e-008 ;
	setAttr ".tk[171]" -type "float3" 9.3132257e-010 7.4505806e-009 1.4901161e-008 ;
	setAttr ".tk[172]" -type "float3" 0.00053793186 0.054578058 -0.093668155 ;
	setAttr ".tk[173]" -type "float3" -0.00053793186 -0.054578058 -0.073033638 ;
	setAttr ".tk[174]" -type "float3" -0.00053793186 -0.054578058 0.073033638 ;
	setAttr ".tk[175]" -type "float3" 0.00053793186 0.054578058 0.093668155 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "A5F1928A-434C-F197-B23F-B5B566D2B2A4";
	setAttr ".ics" -type "componentList" 1 "f[175]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2207098 2.1547177 0 ;
	setAttr ".rs" 57968;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3940496444702148 2.1547176837921143 -0.13691931962966919 ;
	setAttr ".cbx" -type "double3" -1.0473699569702148 2.1547176837921143 0.13691931962966919 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "514417A5-40F7-0C0A-9013-08AE0F81EEBE";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[173]" -type "float3" 0 0.035177164 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.035177164 0 ;
	setAttr ".tk[176]" -type "float3" -0.34667975 0 0 ;
	setAttr ".tk[177]" -type "float3" -0.34667975 0.035177164 0 ;
	setAttr ".tk[178]" -type "float3" -0.34667975 0.035177164 0 ;
	setAttr ".tk[179]" -type "float3" -0.34667975 0 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "AFAF8F9B-4EAC-59CC-8E9E-B391274AE1CA";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 799\n                -height 367\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 799\n            -height 367\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n"
		+ "                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 798\n                -height 367\n"
		+ "                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n"
		+ "            -captureSequenceNumber -1\n            -width 798\n            -height 367\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 799\n                -height 367\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 799\n            -height 367\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1604\n                -height 779\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1604\n            -height 779\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n"
		+ "                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1604\\n    -height 779\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1604\\n    -height 779\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D1944CCD-47AD-C713-1E51-1BADCFF7B29C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube2";
	rename -uid "FB86E8D4-4226-07A7-4067-1D9AC72A2DDB";
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 1;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "2AC63AA2-4B48-DFAC-0824-819F42CD3542";
	setAttr ".ics" -type "componentList" 3 "f[39:40]" "f[46]" "f[48:53]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -0.34952909005375754 3.6037225751510529 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.34952909 3.6037226 0 ;
	setAttr ".rs" 41213;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.84952909005375765 3.1037225751510529 -0.50000000000000011 ;
	setAttr ".cbx" -type "double3" 0.15047090994624235 4.1037225751510533 0.50000000000000011 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "18781319-4EF6-0C33-997F-FDB4EB811223";
	setAttr ".uopa" yes;
	setAttr -s 79 ".tk";
	setAttr ".tk[0]" -type "float3" 0.09995874 0.0089235362 -0.10819143 ;
	setAttr ".tk[1]" -type "float3" 0.027831096 0.0089235362 -0.10819142 ;
	setAttr ".tk[2]" -type "float3" -0.044296522 0.0089235362 -0.10819142 ;
	setAttr ".tk[3]" -type "float3" -0.11642417 0.0089235362 -0.10819142 ;
	setAttr ".tk[4]" -type "float3" 0.018537898 -0.0089235343 -0.02677061 ;
	setAttr ".tk[5]" -type "float3" 0.00069082039 -0.0089235343 -0.02677061 ;
	setAttr ".tk[6]" -type "float3" -0.017156255 -0.0089235343 -0.02677061 ;
	setAttr ".tk[7]" -type "float3" -0.035003331 -0.0089235343 -0.02677061 ;
	setAttr ".tk[12]" -type "float3" 0.077881813 0 -0.11246929 ;
	setAttr ".tk[13]" -type "float3" 0.002902291 0 -0.11246929 ;
	setAttr ".tk[14]" -type "float3" -0.072077274 0 -0.11246929 ;
	setAttr ".tk[15]" -type "float3" -0.14705676 0 -0.11246929 ;
	setAttr ".tk[24]" -type "float3" 0.077881813 0 0.11246929 ;
	setAttr ".tk[25]" -type "float3" 0.002902291 0 0.11246929 ;
	setAttr ".tk[26]" -type "float3" -0.072077274 0 0.11246929 ;
	setAttr ".tk[27]" -type "float3" -0.14705676 0 0.11246929 ;
	setAttr ".tk[32]" -type "float3" 0.018537898 -0.0089235343 0.02677061 ;
	setAttr ".tk[33]" -type "float3" 0.00069082039 -0.0089235343 0.02677061 ;
	setAttr ".tk[34]" -type "float3" -0.017156255 -0.0089235343 0.02677061 ;
	setAttr ".tk[35]" -type "float3" -0.035003331 -0.0089235343 0.02677061 ;
	setAttr ".tk[36]" -type "float3" 0.09995874 0.0089235362 0.10819143 ;
	setAttr ".tk[37]" -type "float3" 0.027831096 0.0089235362 0.10819142 ;
	setAttr ".tk[38]" -type "float3" -0.044296522 0.0089235362 0.10819142 ;
	setAttr ".tk[39]" -type "float3" -0.11642417 0.0089235362 0.10819142 ;
	setAttr ".tk[52]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[53]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.32606602 -0.0089235343 0.02677061 ;
	setAttr ".tk[55]" -type "float3" -0.30752808 0 0 ;
	setAttr ".tk[56]" -type "float3" -0.30752811 -1.4901161e-008 -1.1175871e-008 ;
	setAttr ".tk[57]" -type "float3" -0.30752811 -1.4901161e-008 1.1175871e-008 ;
	setAttr ".tk[58]" -type "float3" -0.30752811 -1.1175871e-008 1.1175871e-008 ;
	setAttr ".tk[59]" -type "float3" -0.30752811 -1.1175871e-008 -1.1175871e-008 ;
	setAttr ".tk[60]" -type "float3" -0.30752811 -0.068764523 -1.6763806e-008 ;
	setAttr ".tk[61]" -type "float3" -0.30752811 -0.0687645 -9.3132257e-009 ;
	setAttr ".tk[62]" -type "float3" -0.30752811 1.1175871e-008 0.1110811 ;
	setAttr ".tk[63]" -type "float3" -0.30752811 1.1175871e-008 -0.11108112 ;
	setAttr ".tk[64]" -type "float3" -0.2725248 -0.0089235455 0.026770625 ;
	setAttr ".tk[65]" -type "float3" -0.30752811 1.1175871e-008 1.4901161e-008 ;
	setAttr ".tk[66]" -type "float3" -0.30752811 1.4901161e-008 3.7252903e-009 ;
	setAttr ".tk[67]" -type "float3" -0.30752811 1.4901161e-008 -1.1175871e-008 ;
	setAttr ".tk[68]" -type "float3" -0.2725248 -0.0089235138 -0.02677059 ;
	setAttr ".tk[69]" -type "float3" -0.30752811 2.2351742e-008 -5.5879354e-009 ;
	setAttr ".tk[70]" -type "float3" -0.30752811 -7.4505806e-009 -5.5879354e-009 ;
	setAttr ".tk[71]" -type "float3" -0.16047122 -0.034382261 0.19181298 ;
	setAttr ".tk[72]" -type "float3" -0.30752811 2.2351742e-008 -5.5879354e-009 ;
	setAttr ".tk[73]" -type "float3" -0.16047122 -0.034382232 -0.19181295 ;
	setAttr ".tk[74]" -type "float3" 0 -7.4505806e-009 5.5879354e-009 ;
	setAttr ".tk[75]" -type "float3" 0 -7.4505806e-009 -5.5879354e-009 ;
	setAttr ".tk[76]" -type "float3" 0 -7.4505806e-009 2.2351742e-008 ;
	setAttr ".tk[77]" -type "float3" 0 7.4505806e-009 -5.5879354e-009 ;
	setAttr ".tk[78]" -type "float3" 0 7.4505806e-009 2.2351742e-008 ;
	setAttr ".tk[79]" -type "float3" 0 7.4505806e-009 5.5879354e-009 ;
	setAttr ".tk[80]" -type "float3" 0 -7.4505806e-009 -2.2351742e-008 ;
	setAttr ".tk[81]" -type "float3" 0 7.4505806e-009 -2.2351742e-008 ;
	setAttr ".tk[82]" -type "float3" 0 -2.2351742e-008 1.8626451e-009 ;
	setAttr ".tk[83]" -type "float3" 0 -2.2351742e-008 -5.5879354e-009 ;
	setAttr ".tk[84]" -type "float3" 0 2.2351742e-008 5.5879354e-009 ;
	setAttr ".tk[85]" -type "float3" 0 2.2351742e-008 -2.2351742e-008 ;
	setAttr ".tk[86]" -type "float3" 0 -7.4505806e-009 -2.2351742e-008 ;
	setAttr ".tk[87]" -type "float3" 0 -7.4505806e-009 5.5879354e-009 ;
	setAttr ".tk[88]" -type "float3" 0 7.4505806e-009 2.2351742e-008 ;
	setAttr ".tk[89]" -type "float3" 0 7.4505806e-009 -5.5879354e-009 ;
	setAttr ".tk[90]" -type "float3" 0 -2.2351742e-008 -5.5879354e-009 ;
	setAttr ".tk[91]" -type "float3" 0 -2.2351742e-008 2.2351742e-008 ;
	setAttr ".tk[92]" -type "float3" 0 7.4505806e-009 5.5879354e-009 ;
	setAttr ".tk[93]" -type "float3" 0 7.4505806e-009 -2.2351742e-008 ;
	setAttr ".tk[94]" -type "float3" 0 -2.2351742e-008 -2.2351742e-008 ;
	setAttr ".tk[95]" -type "float3" 0 -2.2351742e-008 1.8626451e-009 ;
createNode polySplit -n "polySplit9";
	rename -uid "C048D4B2-4630-D02B-56F6-1CA2051DCF7A";
	setAttr -s 15 ".e[0:14]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5;
	setAttr -s 15 ".d[0:14]"  -2147483612 -2147483611 -2147483610 -2147483609 -2147483557 -2147483558 
		-2147483577 -2147483578 -2147483579 -2147483580 -2147483551 -2147483529 -2147483532 -2147483550 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "EFC970E2-4B3A-7A12-E4D8-71AE2CFE00D9";
	setAttr -s 15 ".e[0:14]"  0.60000002 0.60000002 0.60000002 0.60000002
		 0.40000001 0.40000001 0.40000001 0.40000001 0.40000001 0.40000001 0.40000001 0.40000001
		 0.40000001 0.40000001 0.60000002;
	setAttr -s 15 ".d[0:14]"  -2147483580 -2147483579 -2147483578 -2147483577 -2147483499 -2147483500 
		-2147483501 -2147483502 -2147483503 -2147483504 -2147483491 -2147483492 -2147483493 -2147483494 -2147483580;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "1A96EDC9-42AC-9B6E-ACB2-3F9A841E71D0";
	setAttr ".ics" -type "componentList" 2 "f[49]" "f[97]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -0.34952909005375754 3.6037225751510529 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.34952912 3.5434079 0.80752814 ;
	setAttr ".rs" 48084;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.62820950401516829 3.3164265184036164 0.80752813816070546 ;
	setAttr ".cbx" -type "double3" -0.070848705894669572 3.7703893361917404 0.80752813816070568 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "3345CAD7-44CD-2B7A-4F7A-C995F6ACEB74";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[70]" -type "float3" 0.12937376 0 0 ;
	setAttr ".tk[72]" -type "float3" 0.12937376 0 0 ;
	setAttr ".tk[85]" -type "float3" 0.09122511 0 0 ;
	setAttr ".tk[86]" -type "float3" 0.09122511 0 0 ;
	setAttr ".tk[99]" -type "float3" 0 0 0.034256939 ;
	setAttr ".tk[100]" -type "float3" 0 0 -0.034256939 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "FB3B316C-476B-7BD2-EDD9-34A89834925E";
	setAttr ".ics" -type "componentList" 1 "f[83]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -0.34952909005375754 3.6037225751510529 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.34952912 3.1661673 0.76191556 ;
	setAttr ".rs" 36046;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.57173633826466475 3.096327724896994 0.71630305051803589 ;
	setAttr ".cbx" -type "double3" -0.12732187164517311 3.2360069779983429 0.80752813816070557 ;
createNode polyTweak -n "polyTweak22";
	rename -uid "1AC27DA3-45DE-2631-D97A-0F8465DBEB76";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[60]" -type "float3" 0 0.061369605 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.061369605 0 ;
	setAttr ".tk[102]" -type "float3" -0.290281 0.044783231 0 ;
	setAttr ".tk[103]" -type "float3" -0.290281 0.044783231 0 ;
	setAttr ".tk[104]" -type "float3" -0.10285488 0 0 ;
	setAttr ".tk[105]" -type "float3" -0.10285488 0 0 ;
	setAttr ".tk[106]" -type "float3" -0.290281 0 0 ;
	setAttr ".tk[107]" -type "float3" -0.290281 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "CB31028B-4FE5-27B8-BBDC-C7B21A761FFD";
	setAttr ".ics" -type "componentList" 2 "f[67]" "f[71]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 -0.34952909005375754 3.6037225751510529 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.34952912 4.0865316 0.55013627 ;
	setAttr ".rs" 46396;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.7370598341295328 4.069340231858817 0.42211818695068348 ;
	setAttr ".cbx" -type "double3" 0.038001624219695107 4.1037225751510533 0.6781543493270874 ;
createNode polyTweak -n "polyTweak23";
	rename -uid "D7132DFE-4176-562C-6D01-868F9F50D101";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -7.4505806e-009 0 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.074929789 ;
	setAttr ".tk[20]" -type "float3" 0 0 0.074929789 ;
	setAttr ".tk[24]" -type "float3" 0 -7.4505806e-009 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.05162327 0.070282124 ;
	setAttr ".tk[65]" -type "float3" 0 0.066271819 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.066271819 0.071300626 ;
	setAttr ".tk[67]" -type "float3" 0 0.066271819 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.05162327 -0.070282124 ;
	setAttr ".tk[69]" -type "float3" 0 0.066271819 -0.071300626 ;
	setAttr ".tk[70]" -type "float3" 0 -7.4505806e-009 0 ;
	setAttr ".tk[71]" -type "float3" 0 -7.4505806e-009 0 ;
	setAttr ".tk[72]" -type "float3" 0 -7.4505806e-009 0 ;
	setAttr ".tk[73]" -type "float3" 0 -7.4505806e-009 0 ;
	setAttr ".tk[104]" -type "float3" -0.023225581 -0.059722941 0 ;
	setAttr ".tk[105]" -type "float3" -0.023225581 -0.059722941 0 ;
	setAttr ".tk[108]" -type "float3" -0.23766033 0 0 ;
	setAttr ".tk[109]" -type "float3" -0.23766033 0 0 ;
	setAttr ".tk[110]" -type "float3" -0.23766033 0 0 ;
	setAttr ".tk[111]" -type "float3" -0.23766033 0 0 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "CE6F8CDB-49E7-836B-71C3-D28B3DA1ECE6";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[0]" -type "float3" 0.067698158 0.0045081503 -0.067698166 ;
	setAttr ".tk[1]" -type "float3" 0.022566054 0.0045081503 -0.067698166 ;
	setAttr ".tk[2]" -type "float3" -0.022566058 0.0045081503 -0.067698166 ;
	setAttr ".tk[3]" -type "float3" -0.067698158 0.0045081503 -0.067698166 ;
	setAttr ".tk[16]" -type "float3" 0 0.1023013 -0.055245921 ;
	setAttr ".tk[20]" -type "float3" 0 0.1023013 0.055245921 ;
	setAttr ".tk[36]" -type "float3" 0.067698158 0.0045081503 0.067698166 ;
	setAttr ".tk[37]" -type "float3" 0.022566054 0.0045081503 0.067698166 ;
	setAttr ".tk[38]" -type "float3" -0.022566058 0.0045081503 0.067698166 ;
	setAttr ".tk[39]" -type "float3" -0.067698158 0.0045081503 0.067698166 ;
	setAttr ".tk[65]" -type "float3" 0 0 -0.029995771 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.029995771 ;
	setAttr ".tk[71]" -type "float3" 0 0 -0.039899834 ;
	setAttr ".tk[73]" -type "float3" 0 0 0.039899834 ;
	setAttr ".tk[74]" -type "float3" 0.024721993 -0.0045081503 -0.024721993 ;
	setAttr ".tk[75]" -type "float3" 0.0082406653 -0.0045081503 -0.024721993 ;
	setAttr ".tk[76]" -type "float3" -0.0082406662 -0.0045081503 -0.024721993 ;
	setAttr ".tk[77]" -type "float3" -0.024721993 -0.0045081503 -0.024721993 ;
	setAttr ".tk[80]" -type "float3" -0.024721993 -0.0045081503 0.024721993 ;
	setAttr ".tk[81]" -type "float3" -0.0082406662 -0.0045081503 0.024721993 ;
	setAttr ".tk[82]" -type "float3" 0.0082406653 -0.0045081503 0.024721993 ;
	setAttr ".tk[83]" -type "float3" 0.024721993 -0.0045081503 0.024721993 ;
	setAttr ".tk[108]" -type "float3" 0 -0.028201303 0 ;
	setAttr ".tk[109]" -type "float3" 0 -0.028201303 0 ;
	setAttr ".tk[112]" -type "float3" 0 0.1390077 0 ;
	setAttr ".tk[113]" -type "float3" 0 0.10524631 0.027622961 ;
	setAttr ".tk[114]" -type "float3" 0 0.1390077 0 ;
	setAttr ".tk[115]" -type "float3" 0 0.1390077 0 ;
	setAttr ".tk[116]" -type "float3" 0 0.10524631 -0.027622961 ;
	setAttr ".tk[117]" -type "float3" 0 0.1390077 0 ;
	setAttr ".tk[118]" -type "float3" 0 0.1390077 0 ;
	setAttr ".tk[119]" -type "float3" 0 0.1390077 0 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "F2493DD8-4AC2-84FF-AA58-81BBECE2F0F7";
	setAttr ".dc" -type "componentList" 1 "f[23]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "4D46F193-4C8E-7624-2CB4-AD827D913263";
	setAttr ".dc" -type "componentList" 1 "f[54]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "FB6C7C72-4FDB-F3BD-6836-5B8E6ABF0669";
	setAttr ".dc" -type "componentList" 15 "f[2]" "f[5]" "f[8]" "f[11]" "f[14]" "f[17]" "f[20]" "f[25]" "f[28]" "f[31]" "f[34:37]" "f[40:43]" "f[53:57]" "f[72:76]" "f[86:90]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "DCE931AB-450A-F4C0-7AB2-8189D5C40AAA";
	setAttr ".dc" -type "componentList" 1 "f[24:25]";
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "F820A6C0-415D-DC96-1C77-D5B4E9157ECE";
	setAttr ".ics" -type "componentList" 14 "e[26]" "e[29]" "e[32]" "e[35]" "e[38]" "e[41]" "e[44]" "e[47]" "e[50]" "e[53]" "e[56]" "e[59]" "e[97:98]" "e[116:117]";
createNode polySplit -n "polySplit11";
	rename -uid "341B4F68-414C-82D7-5D38-DF9E31C40D77";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483619 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "16D14C7F-425E-4595-3B98-29AD50E33E00";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483619 -2147483601;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "7560D452-483A-1BD3-2325-C896B8351189";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483531 -2147483532;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "22984CAA-4F20-49E4-7DA7-F58E645FFA30";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483551 -2147483550;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "199AB662-41E2-27AA-C89C-55AA561872CD";
	setAttr -s 6 ".e[0:5]"  1 0.33333299 0.32542899 0.31669 0.29966599
		 1;
	setAttr -s 6 ".d[0:5]"  -2147483613 -2147483478 -2147483477 -2147483476 -2147483475 -2147483592;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "838B9982-43F2-F1B2-5D89-0794D52234FF";
	setAttr -s 6 ".e[0:5]"  1 0.5 0.52097797 0.54175597 0.58074403 1;
	setAttr -s 6 ".d[0:5]"  -2147483610 -2147483474 -2147483473 -2147483472 -2147483471 -2147483595;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode animCurveTL -n "pCubeShape2_pnts_32__pntx";
	rename -uid "059E45DE-4616-F621-DAF0-CF936AD2803B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape2_pnts_32__pnty";
	rename -uid "4D1BFEBB-41A6-0F37-E361-CCA749365245";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape2_pnts_32__pntz";
	rename -uid "214EC06E-4CA9-69E9-D5F4-75B57002F9B2";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape2_pnts_35__pntx";
	rename -uid "FEE770D4-4A33-EED2-C241-64A1525533C4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape2_pnts_35__pnty";
	rename -uid "ABCF9F33-4092-AE0F-4439-2992D0974001";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCubeShape2_pnts_35__pntz";
	rename -uid "FC8DA059-4DED-7C89-3D1C-40986D909736";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode polyUnite -n "polyUnite3";
	rename -uid "55E1DE09-4389-703C-6985-E499861EC7BE";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId8";
	rename -uid "E2E90838-483A-AEF0-BEE1-0885D3D9CA6B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "0461E31E-44C6-562B-01FD-7A8AB89814CB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:95]";
createNode groupId -n "groupId9";
	rename -uid "C1B94D2E-474E-B34E-2419-50B0DB529832";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "8B15CE27-48CE-52FB-0398-27BBAB591840";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "B8DD5EAB-4B67-D79D-2230-4794F8F1FA29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:277]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "15B03617-44D0-8C03-1C49-B787DEC15E76";
	setAttr ".dc" -type "componentList" 1 "f[203]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "E4B95379-47EC-1EC5-9D06-C089306E0665";
	setAttr ".dc" -type "componentList" 1 "f[175]";
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "6966863A-46A0-02A7-0CCB-92B273D965BA";
	setAttr ".ics" -type "componentList" 6 "e[358]" "e[360]" "e[362:363]" "e[385]" "e[387]" "e[419:420]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 181;
	setAttr ".sv2" 216;
	setAttr ".d" 1;
createNode polyTweak -n "polyTweak25";
	rename -uid "34E255F2-462F-249B-FF45-D9B799550377";
	setAttr ".uopa" yes;
	setAttr -s 100 ".tk";
	setAttr ".tk[184]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[185]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[186]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[187]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[188]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[189]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[190]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[191]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[192]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[193]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[194]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[195]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[196]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[197]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[198]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[199]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[200]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[201]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[202]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[203]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[204]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[205]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[206]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[207]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[208]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[209]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[210]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[211]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[212]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[213]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[214]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[215]" -type "float3" -0.0028007268 -0.1614178 0.18461722 ;
	setAttr ".tk[216]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[217]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[218]" -type "float3" -0.0028007268 -0.1614178 0.18461722 ;
	setAttr ".tk[219]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[220]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[221]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[222]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[223]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[224]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[225]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[226]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[227]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[228]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[229]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[230]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[231]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[232]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[233]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[234]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[235]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[236]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[237]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[238]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[239]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[240]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[241]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[242]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[243]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[244]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[245]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[246]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[247]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[248]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[249]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[250]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[251]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[252]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[253]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[254]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[255]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[256]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[257]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[258]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[259]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[260]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[261]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[262]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[263]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[264]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[265]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[266]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[267]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[268]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[269]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[270]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[271]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[272]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[273]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[274]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[275]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[276]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[277]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[278]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[279]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[280]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
	setAttr ".tk[281]" -type "float3" -0.0028007268 -0.1614178 0.0081601292 ;
createNode deleteComponent -n "deleteComponent12";
	rename -uid "E56E6C27-4D1E-D73E-2060-99A3790FB83C";
	setAttr ".dc" -type "componentList" 2 "f[276]" "f[278:279]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "B1686E31-4AE8-7CBE-A83A-15A3CB0938B3";
	setAttr ".dc" -type "componentList" 1 "f[276]";
createNode polySeparate -n "polySeparate1";
	rename -uid "93DF8209-48C6-2999-97A8-C086422EEDB8";
	setAttr ".ic" 2;
createNode groupId -n "groupId11";
	rename -uid "B3236203-4312-BEDC-FEEB-F3AA0FDA90E7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "F0949C7E-4125-684F-C373-11A594DAB666";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:275]";
createNode groupId -n "groupId13";
	rename -uid "05035865-41B0-3FDB-87E6-0F80FC45EA64";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite4";
	rename -uid "225CCB0F-406D-3BF3-D6B5-83A16F555B8B";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId14";
	rename -uid "34F145E2-4D6D-D8E1-1A1D-11BDC0449714";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "BA864321-40CB-7B3E-19A0-099E04B573F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:275]";
createNode polyBridgeEdge -n "polyBridgeEdge4";
	rename -uid "313CE310-4CB1-3DAA-DD32-40BEEA1F048B";
	setAttr ".ics" -type "componentList" 6 "e[358]" "e[360]" "e[362:363]" "e[385]" "e[387]" "e[419:420]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 181;
	setAttr ".sv2" 216;
	setAttr ".d" 1;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "4537DD07-4FE3-9340-073A-1697F7ED3C36";
	setAttr ".ics" -type "componentList" 2 "f[221]" "f[223]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.33902711 3.2251055 1.596379 ;
	setAttr ".rs" 53009;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.83902710676193237 3.0306010246276855 1.4327822923660278 ;
	setAttr ".cbx" -type "double3" 0.16097289323806763 3.4196100234985352 1.759975790977478 ;
createNode polyTweak -n "polyTweak26";
	rename -uid "6BF05694-4FA3-9777-4EEA-35A5C557D94E";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.23214935 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.23214935 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.30953258 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.30953258 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[19]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[23]" -type "float3" 0 0.11541609 0 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.23214935 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.30953258 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.23214935 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[59]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[60]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[61]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[87]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.23214935 ;
	setAttr ".tk[91]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[92]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[93]" -type "float3" 0 0 0.23214935 ;
	setAttr ".tk[100]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[101]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[102]" -type "float3" 0 0 0.30953258 ;
	setAttr ".tk[103]" -type "float3" 0 0 0.30953258 ;
	setAttr ".tk[104]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[105]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[109]" -type "float3" 0 0.11541609 0 ;
	setAttr ".tk[114]" -type "float3" 0 0 0.099492624 ;
	setAttr ".tk[115]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[116]" -type "float3" 0 0 0.23214935 ;
	setAttr ".tk[117]" -type "float3" 0 0 0.30953258 ;
	setAttr ".tk[126]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[127]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[128]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[129]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[130]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[131]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[132]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[133]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[134]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[135]" -type "float3" 0 0 0.23214935 ;
	setAttr ".tk[136]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[137]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[138]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[139]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[140]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[141]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[142]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[143]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[144]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[145]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[146]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[147]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[148]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[149]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[150]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[151]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[152]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[153]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[154]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[155]" -type "float3" 0 0 0.18240312 ;
	setAttr ".tk[173]" -type "float3" 0 0.11541609 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.11541609 0 ;
	setAttr ".tk[177]" -type "float3" 0.063201599 -0.1367946 -0.083348393 ;
	setAttr ".tk[178]" -type "float3" -0.060314298 -0.1367946 -0.083348393 ;
	setAttr ".tk[180]" -type "float3" 0.003719962 0.01160876 -0.023420809 ;
	setAttr ".tk[181]" -type "float3" 0.003719962 0.01160876 -0.023420809 ;
	setAttr ".tk[182]" -type "float3" -0.060314298 -0.045557763 0.0073796511 ;
	setAttr ".tk[183]" -type "float3" 0.063201606 -0.045557763 0.0073796511 ;
	setAttr ".tk[193]" -type "float3" -1.1175871e-008 0.05567582 -4.4703484e-008 ;
	setAttr ".tk[196]" -type "float3" -1.1175871e-008 0 -4.4703484e-008 ;
	setAttr ".tk[197]" -type "float3" -0.0020982039 0.041944712 -0.015967241 ;
	setAttr ".tk[200]" -type "float3" -0.0020982039 0.041944712 -0.015967241 ;
	setAttr ".tk[202]" -type "float3" 0 0.055675823 0 ;
	setAttr ".tk[215]" -type "float3" -0.076589659 -0.017105745 0.0036475728 ;
	setAttr ".tk[216]" -type "float3" 0 0 -0.02342975 ;
	setAttr ".tk[218]" -type "float3" 0.08285965 -0.017105745 0.0036475728 ;
	setAttr ".tk[219]" -type "float3" 1.4901161e-008 -1.8626451e-009 -0.023429768 ;
	setAttr ".tk[232]" -type "float3" 0.046577763 0.081511058 0 ;
	setAttr ".tk[234]" -type "float3" -0.046577763 0.081511058 0 ;
	setAttr ".tk[266]" -type "float3" 0.001455555 -0.030566653 0 ;
	setAttr ".tk[267]" -type "float3" 0.0023903272 -0.037211023 0.071204901 ;
	setAttr ".tk[269]" -type "float3" 0.001455555 -0.030566653 0 ;
	setAttr ".tk[270]" -type "float3" 0.0023903272 -0.037211023 0.071204901 ;
	setAttr ".tk[271]" -type "float3" 0.001455555 -0.030566653 0 ;
	setAttr ".tk[272]" -type "float3" 0.001455555 -0.030566653 0 ;
createNode polySphere -n "polySphere1";
	rename -uid "BB942F90-4FBA-2424-510D-BA8A6D8D179F";
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode deleteComponent -n "deleteComponent14";
	rename -uid "20D60434-43B2-8A39-4D8E-A781743821B4";
	setAttr ".dc" -type "componentList" 5 "e[180]" "e[182]" "e[184]" "e[186]" "e[188]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "5D9787C6-47B7-1839-AF95-7B9FD0013505";
	setAttr ".dc" -type "componentList" 5 "e[171]" "e[173]" "e[175]" "e[177]" "e[179]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 15 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 13 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId3.id" "|pCube1|transform1|pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube1|transform1|pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId1.id" "|pCube2|transform2|pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube2|transform2|pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupParts2.og" "|pCube1|transform1|pCubeShape1.i";
connectAttr "groupId4.id" "|pCube1|transform1|pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId2.id" "|pCube2|transform2|pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "|pCube3|transform3|pCube3Shape.i";
connectAttr "groupId5.id" "|pCube3|transform3|pCube3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube3|transform3|pCube3Shape.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|pCube4|transform4|pCube3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube4|transform4|pCube3Shape.iog.og[0].gco"
		;
connectAttr "polyExtrudeFace15.out" "pCube5Shape.i";
connectAttr "groupId7.id" "pCube5Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube5Shape.iog.og[0].gco";
connectAttr "groupId8.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts7.og" "pCubeShape2.i";
connectAttr "pCubeShape2_pnts_32__pntx.o" "pCubeShape2.pt[32].px";
connectAttr "pCubeShape2_pnts_32__pnty.o" "pCubeShape2.pt[32].py";
connectAttr "pCubeShape2_pnts_32__pntz.o" "pCubeShape2.pt[32].pz";
connectAttr "pCubeShape2_pnts_35__pntx.o" "pCubeShape2.pt[35].px";
connectAttr "pCubeShape2_pnts_35__pnty.o" "pCubeShape2.pt[35].py";
connectAttr "pCubeShape2_pnts_35__pntz.o" "pCubeShape2.pt[35].pz";
connectAttr "groupId9.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupParts9.og" "polySurfaceShape1.i";
connectAttr "groupId11.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "deleteComponent13.og" "pCube7Shape.i";
connectAttr "groupId10.id" "pCube7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube7Shape.iog.og[0].gco";
connectAttr "groupId13.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "polyExtrudeFace20.out" "polySurface1Shape.i";
connectAttr "groupId14.id" "polySurface1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface1Shape.iog.og[0].gco";
connectAttr "deleteComponent15.og" "pSphereShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit1.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit2.ip";
connectAttr "polySplit2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySplit3.ip";
connectAttr "polySplit3.out" "polyExtrudeFace2.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak4.out" "polyExtrudeFace3.ip";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyCloseBorder1.ip";
connectAttr "polyExtrudeFace3.out" "polyTweak5.ip";
connectAttr "|pCube1|transform1|pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "|pCube1|transform1|pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "|pCube2|transform2|pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "|pCube1|transform1|pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "polyCloseBorder1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupParts3.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyBridgeEdge1.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyBridgeEdge1.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace4.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyExtrudeFace4.mp";
connectAttr "polyBridgeEdge1.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace6.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyExtrudeFace6.mp";
connectAttr "polySplit5.out" "polyTweak8.ip";
connectAttr "polyExtrudeFace6.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit6.ip";
connectAttr "polySplit6.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyTweak10.ip";
connectAttr "polyTweak10.out" "deleteComponent5.ig";
connectAttr "polyTweak11.out" "polyCloseBorder2.ip";
connectAttr "deleteComponent5.og" "polyTweak11.ip";
connectAttr "polyCloseBorder2.out" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "groupParts4.og" "polyExtrudeFace7.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak12.out" "polyExtrudeFace8.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak12.ip";
connectAttr "pCube3Shape_pnts_6__pntx.o" "polyTweak12.tk[6].tx";
connectAttr "pCube3Shape_pnts_6__pnty.o" "polyTweak12.tk[6].ty";
connectAttr "pCube3Shape_pnts_6__pntz.o" "polyTweak12.tk[6].tz";
connectAttr "polyTweak13.out" "polyExtrudeFace9.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeFace10.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak14.ip";
connectAttr "polyExtrudeFace10.out" "polyTweak15.ip";
connectAttr "polyTweak15.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace11.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyExtrudeFace11.mp";
connectAttr "polySplit8.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace12.ip";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak17.ip";
connectAttr "polyExtrudeFace12.out" "groupParts5.ig";
connectAttr "groupId6.id" "groupParts5.gi";
connectAttr "|pCube3|transform3|pCube3Shape.o" "polyUnite2.ip[0]";
connectAttr "|pCube3|transform3|pCube3Shape.o" "polyUnite2.ip[1]";
connectAttr "|pCube4|transform4|pCube3Shape.wm" "polyUnite2.im[0]";
connectAttr "|pCube3|transform3|pCube3Shape.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts6.ig";
connectAttr "groupId7.id" "groupParts6.gi";
connectAttr "groupParts6.og" "polyBridgeEdge2.ip";
connectAttr "pCube5Shape.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyExtrudeFace13.ip";
connectAttr "pCube5Shape.wm" "polyExtrudeFace13.mp";
connectAttr "polyTweak18.out" "polyExtrudeFace14.ip";
connectAttr "pCube5Shape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace15.ip";
connectAttr "pCube5Shape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak19.ip";
connectAttr "polyCube2.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak20.ip";
connectAttr "polyTweak20.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polyTweak21.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace17.mp";
connectAttr "polySplit10.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak23.ip";
connectAttr "polyExtrudeFace19.out" "polyTweak24.ip";
connectAttr "polyTweak24.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "pCube5Shape.o" "polyUnite3.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite3.ip[1]";
connectAttr "pCube5Shape.wm" "polyUnite3.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite3.im[1]";
connectAttr "polySplit16.out" "groupParts7.ig";
connectAttr "groupId8.id" "groupParts7.gi";
connectAttr "polyUnite3.out" "groupParts8.ig";
connectAttr "groupId10.id" "groupParts8.gi";
connectAttr "groupParts8.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyBridgeEdge3.ip";
connectAttr "pCube7Shape.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "polyTweak25.ip";
connectAttr "polyTweak25.out" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "pCube7Shape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts9.ig";
connectAttr "groupId11.id" "groupParts9.gi";
connectAttr "polySurfaceShape1.o" "polyUnite4.ip[0]";
connectAttr "polySurfaceShape3.o" "polyUnite4.ip[1]";
connectAttr "polySurfaceShape1.wm" "polyUnite4.im[0]";
connectAttr "polySurfaceShape3.wm" "polyUnite4.im[1]";
connectAttr "polyUnite4.out" "groupParts10.ig";
connectAttr "groupId14.id" "groupParts10.gi";
connectAttr "groupParts10.og" "polyBridgeEdge4.ip";
connectAttr "polySurface1Shape.wm" "polyBridgeEdge4.mp";
connectAttr "polyTweak26.out" "polyExtrudeFace20.ip";
connectAttr "polySurface1Shape.wm" "polyExtrudeFace20.mp";
connectAttr "polyBridgeEdge4.out" "polyTweak26.ip";
connectAttr "polySphere1.out" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "|pCube2|transform2|pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube2|transform2|pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube1|transform1|pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube1|transform1|pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube3|transform3|pCube3Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube4|transform4|pCube3Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCube5Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog" ":initialShadingGroup.dsm" -na;
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
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
// End of Lion_model.ma
