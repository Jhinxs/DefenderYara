
rule Adware_Win32_Eorezo{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {61 70 70 50 61 72 74 6e 65 72 22 3a 20 22 65 6f 72 65 7a 6f } //1 appPartner": "eorezo
		$a_01_1 = {61 70 70 4e 61 6d 65 22 3a 20 22 74 75 74 6f 34 70 63 } //1 appName": "tuto4pc
		$a_01_2 = {63 00 6f 00 6e 00 66 00 2e 00 63 00 79 00 6c 00 } //1 conf.cyl
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Adware_Win32_Eorezo_2{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {61 64 73 2e 65 6f 72 65 7a 6f 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 61 64 76 65 72 74 2f 67 65 74 61 64 73 } //1 ads.eorezo.com/cgi-bin/advert/getads
		$a_01_1 = {5c 45 6f 45 6e 67 69 6e 65 2e 65 78 65 00 00 00 53 6f 66 74 77 61 72 65 5c 45 6f 52 65 7a 6f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Adware_Win32_Eorezo_3{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {70 72 6f 66 2e 65 6f 72 65 7a 6f 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 70 61 63 6b 61 67 65 73 2f 44 59 4e 50 41 43 4b 41 47 45 53 5f 57 45 42 5f 47 45 54 5f 49 4e 46 4f } //1 prof.eorezo.com/cgi-bin/packages/DYNPACKAGES_WEB_GET_INFO
		$a_01_1 = {3f 73 64 61 74 65 67 2f 74 72 65 76 64 61 2f 6e 69 62 2d 69 67 63 2f 6d 6f 63 2e 62 75 70 65 64 65 69 67 65 72 2e 73 64 61 2f 2f 3a 70 74 74 68 } //1 ?sdateg/trevda/nib-igc/moc.bupedeiger.sda//:ptth
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Adware_Win32_Eorezo_4{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {8a 04 31 bf 00 01 00 00 2c ?? 0f be c0 99 f7 ff 88 14 31 41 3b 4d 08 7c ?? 56 e8 ?? ?? ?? ?? 59 50 56 8d 4d e0 ff 15 } //1
		$a_01_1 = {59 32 68 76 59 32 38 3d } //1 Y2hvY28=
		$a_01_2 = {50 41 55 53 45 00 00 00 55 70 64 61 74 65 20 44 6f 6e 65 20 53 75 63 63 65 73 73 66 75 6c 6c 79 00 } //1
		$a_01_3 = {74 80 80 7c 46 3b 3b 6d 70 7f 3a 7e } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Adware_Win32_Eorezo_5{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {51 c7 04 24 ?? 00 00 00 e8 ?? ?? ?? ?? 85 c0 74 09 8b 04 24 83 c0 ?? 89 04 24 8b 0c 24 ff 14 8d ?? ?? ?? ?? 33 c0 59 c3 } //1
		$a_03_1 = {8a 10 33 c9 83 c0 02 84 d2 0f 84 ?? 00 00 00 8d 9b 00 00 00 00 0f b6 d2 03 ca 8b d1 c1 ea ?? c1 e1 ?? 0b d1 81 f2 ?? ?? ?? ?? 8b ca 8a 10 83 c0 02 84 d2 75 e0 81 f9 ?? ?? ?? ?? 74 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Adware_Win32_Eorezo_6{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {55 72 6c 4f 62 66 75 73 63 61 74 6f 72 2e 63 70 70 } //1 UrlObfuscator.cpp
		$a_01_1 = {2e 00 65 00 6f 00 72 00 65 00 7a 00 6f 00 2e 00 63 00 6f 00 6d 00 } //1 .eorezo.com
		$a_01_2 = {5c 00 65 00 6f 00 53 00 74 00 61 00 74 00 73 00 2e 00 74 00 78 00 74 00 } //1 \eoStats.txt
		$a_01_3 = {41 64 73 63 6f 6e 66 69 67 75 72 61 74 69 6f 6e 2e 63 70 70 } //1 Adsconfiguration.cpp
		$a_03_4 = {41 67 65 6e 63 65 [0-0c] 2e 63 70 70 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}
rule Adware_Win32_Eorezo_7{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {39 5d 08 c6 45 fc 02 89 5d f0 7e ?? 8b 7d 0c 8b 37 56 e8 ?? ?? ?? ?? 59 50 56 ff 75 c8 8d 4d c0 53 ff 15 } //1
		$a_03_1 = {8a 04 31 bf 00 01 00 00 2c 0a 0f be c0 99 f7 ff 88 14 31 41 3b 4d 08 7c ?? 56 e8 ?? ?? ?? ?? 59 50 56 8d 4d e0 ff 15 ?? ?? ?? ?? 56 e8 } //1
		$a_00_2 = {59 32 68 76 59 32 38 3d } //1 Y2hvY28=
		$a_00_3 = {72 7e 7e 7a 44 39 39 6b 6e 7d 38 7c 6f 71 73 6f 6e 6f 7a } //1 r~~zD99kn}8|oqsonoz
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
rule Adware_Win32_Eorezo_8{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {c0 e8 04 8a 55 ?? 24 03 c0 e1 02 02 c1 80 e2 0f 88 45 ?? 8a 45 ?? 8a c8 24 03 c0 e9 02 c0 e0 06 02 45 ?? 80 e1 0f c0 e2 04 02 ca } //1
		$a_03_1 = {8b 45 e0 59 3b c3 59 75 ?? b8 ?? ?? ?? ?? 6a 05 53 68 ?? ?? ?? ?? 50 68 ?? ?? ?? ?? 53 ff 15 ?? ?? ?? ?? 53 } //1
		$a_01_2 = {61 48 52 30 63 44 6f 76 4c 32 46 6b 63 79 35 79 5a 57 64 70 5a 57 52 6c 63 48 56 69 4c 6d 4e 76 62 53 39 6a 5a 32 6b } //1 aHR0cDovL2Fkcy5yZWdpZWRlcHViLmNvbS9jZ2k
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Adware_Win32_Eorezo_9{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {22 75 72 6c 22 3a 22 68 74 74 70 3a 2f 2f 63 64 6e 2e 73 74 61 72 74 65 72 2e 66 6d 2f 73 2f 74 75 74 6f 34 70 63 2f 61 64 73 2f 66 72 2f 73 74 61 72 74 65 72 74 76 2f 70 6c 61 79 65 72 5f 74 76 2e 68 74 6d 6c 3f } //4 "url":"http://cdn.starter.fm/s/tuto4pc/ads/fr/startertv/player_tv.html?
		$a_01_1 = {54 75 74 6f 34 50 43 42 48 4f } //1 Tuto4PCBHO
		$a_01_2 = {54 34 50 43 42 48 4f } //1 T4PCBHO
		$a_01_3 = {54 34 50 43 45 6e 67 69 6e 65 42 48 4f } //1 T4PCEngineBHO
		$a_01_4 = {54 00 75 00 74 00 6f 00 34 00 50 00 43 00 41 00 64 00 73 00 44 00 6c 00 67 00 } //1 Tuto4PCAdsDlg
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}
rule Adware_Win32_Eorezo_10{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {68 00 30 40 00 ff 35 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 81 3d ?? ?? ?? ?? ?? ?? 00 00 74 00 83 3d ?? ?? ?? ?? ff 74 0c ff 35 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 6a 01 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? e8 05 00 00 00 6f 70 65 6e 00 6a 00 ff 15 } //1
		$a_03_1 = {c7 45 00 3c 00 00 00 c7 45 04 40 01 00 00 8b 44 24 68 89 45 1c b8 ?? ?? ?? ?? 89 45 0c 8b 04 24 89 45 10 8b 44 24 08 89 45 14 8b 44 24 04 89 45 18 8d 44 24 0c 50 e8 } //1
		$a_00_2 = {61 64 73 2e 72 65 67 69 65 64 65 70 75 62 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 61 64 76 65 72 74 2f 67 65 74 61 64 73 3f } //2 ads.regiedepub.com/cgi-bin/advert/getads?
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_00_2  & 1)*2) >=3
 
}
rule Adware_Win32_Eorezo_11{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 "
		
	strings :
		$a_02_0 = {5c 72 65 6c 65 61 73 65 5f 65 6f 72 65 7a 6f 5c 45 6f 52 65 7a 6f [0-08] 2e 70 64 62 } //10
		$a_00_1 = {45 00 6f 00 52 00 65 00 7a 00 6f 00 41 00 64 00 73 00 44 00 6c 00 67 00 } //1 EoRezoAdsDlg
		$a_00_2 = {45 6f 45 6e 67 69 6e 65 42 48 4f } //1 EoEngineBHO
		$a_00_3 = {7b 43 31 30 44 43 31 46 34 2d 43 43 44 46 2d 34 32 32 34 2d 41 32 34 44 2d 42 32 33 41 46 43 33 35 37 33 43 38 7d } //1 {C10DC1F4-CCDF-4224-A24D-B23AFC3573C8}
		$a_00_4 = {2e 00 65 00 6f 00 72 00 65 00 7a 00 6f 00 2e 00 63 00 6f 00 6d 00 } //1 .eorezo.com
		$a_00_5 = {78 00 2d 00 65 00 6f 00 72 00 65 00 7a 00 6f 00 2d 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //1 x-eorezo-crypted
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=12
 
}
rule Adware_Win32_Eorezo_12{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {70 72 6f 66 2e 65 6f 72 65 7a 6f 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 70 61 63 6b 61 67 65 73 2f 44 59 4e 50 41 43 4b 41 47 45 53 5f 57 45 42 5f 47 45 54 5f 49 4e 46 4f } //1 prof.eorezo.com/cgi-bin/packages/DYNPACKAGES_WEB_GET_INFO
		$a_03_1 = {57 72 69 74 65 2d 48 6f 73 74 20 5c 22 24 28 24 5f 2e 64 69 73 70 6c 61 79 4e 61 6d 65 29 5e 7c 24 28 69 66 20 28 24 5f 2e 6f 6e 41 63 63 65 73 73 53 63 61 6e 6e 69 6e 67 45 6e 61 62 6c 65 64 29 20 7b 5c 22 34 30 39 36 5c 22 7d 90 08 ff 01 72 6f 6f 74 5c 53 65 63 75 72 69 74 79 43 65 6e 74 65 72 32 20 2d 43 6c 61 73 73 20 41 6e 74 69 (56 69 72 75 73|53 70 79 77 61 72 65) 50 72 6f 64 75 63 74 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Adware_Win32_Eorezo_13{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 01 00 09 00 00 "
		
	strings :
		$a_01_0 = {5c 52 65 6c 65 61 73 65 5c 43 6f 6d 42 72 6f 61 64 63 61 73 74 65 72 2e 70 64 62 00 } //10
		$a_03_1 = {5c 52 65 6c 65 61 73 65 5c 74 75 74 6f 34 70 63 5f [0-06] 2e 70 64 62 } //10
		$a_01_2 = {63 00 6f 00 6e 00 66 00 2e 00 63 00 79 00 6c 00 } //1 conf.cyl
		$a_01_3 = {2e 3f 41 56 49 45 55 72 6c 43 61 74 63 68 65 72 40 40 } //1 .?AVIEUrlCatcher@@
		$a_01_4 = {2e 3f 41 56 46 46 55 72 6c 43 61 74 63 68 65 72 40 40 } //1 .?AVFFUrlCatcher@@
		$a_01_5 = {2e 3f 41 56 4d 79 55 72 6c 43 61 74 63 68 65 72 40 40 } //1 .?AVMyUrlCatcher@@
		$a_01_6 = {2e 3f 41 56 46 46 31 30 55 43 40 40 } //1 .?AVFF10UC@@
		$a_01_7 = {63 6f 6e 74 61 63 74 40 74 75 74 6f 72 69 61 6c 65 73 31 30 30 2e 63 6f 6d } //1 contact@tutoriales100.com
		$a_01_8 = {63 6f 6e 74 61 63 74 40 74 75 74 6f 34 70 63 2e 63 6f 6d } //1 contact@tuto4pc.com
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=1
 
}
rule Adware_Win32_Eorezo_14{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 "
		
	strings :
		$a_01_0 = {7b 30 34 39 35 46 34 44 37 2d 39 46 45 33 2d 34 34 35 36 2d 41 41 39 44 2d 31 44 35 37 45 37 38 44 46 35 46 30 7d } //8 {0495F4D7-9FE3-4456-AA9D-1D57E78DF5F0}
		$a_01_1 = {7b 32 46 32 43 43 36 39 32 2d 44 31 42 36 2d 34 33 33 65 2d 42 45 46 46 2d 37 34 35 43 45 38 30 38 37 39 38 30 7d } //8 {2F2CC692-D1B6-433e-BEFF-745CE8087980}
		$a_01_2 = {7b 32 39 33 41 36 33 46 37 2d 43 33 42 36 2d 34 32 33 61 2d 39 38 34 35 2d 39 30 31 41 43 30 41 37 45 45 36 45 7d } //8 {293A63F7-C3B6-423a-9845-901AC0A7EE6E}
		$a_01_3 = {31 32 33 54 75 74 6f 42 48 4f } //2 123TutoBHO
		$a_01_4 = {27 54 31 30 30 42 48 4f 20 43 6c 61 73 73 27 } //2 'T100BHO Class'
		$a_01_5 = {27 50 43 54 42 48 4f 20 43 6c 61 73 73 27 } //2 'PCTBHO Class'
		$a_01_6 = {27 41 45 42 48 4f 20 43 6c 61 73 73 27 } //2 'AEBHO Class'
		$a_01_7 = {41 67 65 6e 63 65 42 48 4f 2e 41 45 42 48 4f } //1 AgenceBHO.AEBHO
		$a_01_8 = {54 75 74 6f 72 69 61 6c 65 73 31 30 30 42 48 4f 2e 54 31 30 30 42 48 4f } //1 Tutoriales100BHO.T100BHO
		$a_01_9 = {50 43 54 75 74 6f 42 48 4f 2e 50 43 54 42 48 4f } //1 PCTutoBHO.PCTBHO
		$a_01_10 = {4e 6f 52 65 6d 6f 76 65 20 27 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 27 } //4 NoRemove 'Browser Helper Objects'
	condition:
		((#a_01_0  & 1)*8+(#a_01_1  & 1)*8+(#a_01_2  & 1)*8+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*4) >=15
 
}
rule Adware_Win32_Eorezo_15{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0c 00 00 "
		
	strings :
		$a_01_0 = {61 48 52 30 63 44 6f 76 4c 32 46 6b 63 79 35 79 5a 57 64 70 5a 57 52 6c 63 48 56 69 4c 6d 4e 76 62 53 39 6a 5a 32 6b 74 59 6d 6c 75 4c 32 46 6b 64 6d 56 79 64 43 39 6e 5a 58 52 68 5a 48 4d 2f 5a 47 6c 6b 50 54 } //7 aHR0cDovL2Fkcy5yZWdpZWRlcHViLmNvbS9jZ2ktYmluL2FkdmVydC9nZXRhZHM/ZGlkPT
		$a_01_1 = {70 00 72 00 6f 00 66 00 2e 00 31 00 32 00 33 00 54 00 75 00 74 00 6f 00 2e 00 69 00 6e 00 66 00 6f 00 } //4 prof.123Tuto.info
		$a_01_2 = {78 00 5f 00 67 00 75 00 69 00 64 00 5f 00 67 00 65 00 6e 00 3d 00 25 00 73 00 26 00 69 00 5f 00 6c 00 6f 00 67 00 3d 00 25 00 78 00 26 00 78 00 5f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 76 00 65 00 72 00 3d 00 25 00 73 00 26 00 78 00 5f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 69 00 64 00 3d 00 25 00 73 00 26 00 78 00 5f 00 63 00 6f 00 6d 00 6d 00 65 00 6e 00 74 00 3d 00 25 00 73 00 } //2 x_guid_gen=%s&i_log=%x&x_servicever=%s&x_serviceid=%s&x_comment=%s
		$a_01_3 = {40 00 31 00 32 00 33 00 54 00 75 00 74 00 6f 00 41 00 67 00 65 00 6e 00 63 00 65 00 } //1 @123TutoAgence
		$a_01_4 = {78 00 2d 00 31 00 32 00 33 00 54 00 75 00 74 00 6f 00 2d 00 63 00 72 00 63 00 33 00 32 00 } //1 x-123Tuto-crc32
		$a_01_5 = {54 00 75 00 74 00 6f 00 5f 00 63 00 6f 00 6e 00 66 00 4d 00 65 00 64 00 69 00 61 00 2e 00 63 00 79 00 70 00 } //1 Tuto_confMedia.cyp
		$a_01_6 = {5c 00 65 00 6f 00 53 00 74 00 61 00 74 00 73 00 2e 00 74 00 78 00 74 00 } //1 \eoStats.txt
		$a_01_7 = {54 00 75 00 74 00 6f 00 41 00 64 00 73 00 44 00 6c 00 67 00 } //1 TutoAdsDlg
		$a_01_8 = {78 00 5f 00 67 00 75 00 69 00 64 00 5f 00 67 00 65 00 6e 00 3d 00 25 00 73 00 26 00 78 00 5f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 76 00 65 00 72 00 3d 00 25 00 73 00 } //1 x_guid_gen=%s&x_servicever=%s
		$a_01_9 = {78 00 5f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 69 00 64 00 3d 00 25 00 73 00 26 00 78 00 5f 00 73 00 63 00 6f 00 6e 00 66 00 3d 00 25 00 73 00 26 00 69 00 5f 00 63 00 68 00 61 00 6e 00 67 00 65 00 68 00 6f 00 6d 00 65 00 3d 00 25 00 64 00 } //1 x_serviceid=%s&x_sconf=%s&i_changehome=%d
		$a_01_10 = {78 00 5f 00 68 00 6f 00 6d 00 65 00 73 00 74 00 61 00 72 00 74 00 69 00 65 00 3d 00 25 00 73 00 26 00 78 00 5f 00 68 00 6f 00 6d 00 65 00 73 00 74 00 61 00 72 00 74 00 66 00 69 00 72 00 65 00 66 00 6f 00 78 00 3d 00 25 00 73 00 } //1 x_homestartie=%s&x_homestartfirefox=%s
		$a_01_11 = {78 00 5f 00 68 00 6f 00 6d 00 65 00 6c 00 61 00 73 00 74 00 69 00 65 00 3d 00 25 00 73 00 26 00 78 00 5f 00 68 00 6f 00 6d 00 65 00 6c 00 61 00 73 00 74 00 66 00 69 00 72 00 65 00 66 00 6f 00 78 00 3d 00 25 00 73 00 } //1 x_homelastie=%s&x_homelastfirefox=%s
	condition:
		((#a_01_0  & 1)*7+(#a_01_1  & 1)*4+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=7
 
}
rule Adware_Win32_Eorezo_16{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {70 72 6f 66 2e 65 6f 72 65 7a 6f 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f } //1 prof.eorezo.com/cgi-bin/
		$a_01_1 = {72 6f 6f 74 5c 53 65 63 75 72 69 74 79 43 65 6e 74 65 72 20 2d 43 6c 61 73 73 20 41 6e 74 69 56 69 72 75 73 } //1 root\SecurityCenter -Class AntiVirus
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Adware_Win32_Eorezo_17{
	meta:
		description = "Adware:Win32/Eorezo,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 61 64 73 2e 65 6f 72 65 7a 6f 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 61 64 76 65 72 74 2f 67 65 74 61 64 73 2e 63 67 69 3f } //1 http://ads.eorezo.com/cgi-bin/advert/getads.cgi?
		$a_01_1 = {41 76 65 72 74 69 73 73 65 6d 65 6e 74 20 64 65 } //1 Avertissement de
		$a_01_2 = {6a 00 6a 64 68 ea 03 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}