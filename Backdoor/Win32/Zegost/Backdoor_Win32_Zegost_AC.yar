
rule Backdoor_Win32_Zegost_AC{
	meta:
		description = "Backdoor:Win32/Zegost.AC,SIGNATURE_TYPE_PEHSTR_EXT,ffffffa0 00 ffffff9b 00 0a 00 00 "
		
	strings :
		$a_01_0 = {7e 24 8b d1 81 e2 01 00 00 80 79 05 4a 83 ca fe 42 8a 14 31 74 05 80 c2 9c eb 03 80 c2 38 88 14 31 } //50
		$a_01_1 = {83 e2 03 89 b4 24 d0 03 00 00 03 c2 8a 54 29 ff c1 f8 02 3a d3 89 b4 24 d4 03 00 00 8d 04 40 } //50
		$a_01_2 = {64 6f 6f 72 6e 61 6d 65 3d 22 6d 73 6f 65 63 6a } //20 doorname="msoecj
		$a_01_3 = {70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 2d 6e 20 33 26 64 65 6c 20 22 25 73 22 00 77 73 63 72 69 70 74 2e 65 78 65 } //20
		$a_01_4 = {25 73 5c 6d 73 25 64 2e 64 6c 6c } //10 %s\ms%d.dll
		$a_01_5 = {52 32 56 30 55 32 68 76 63 6e 52 51 59 58 52 6f 54 6d 46 74 5a 55 45 3d } //5 R2V0U2hvcnRQYXRoTmFtZUE=
		$a_01_6 = {51 33 4a 6c 59 58 52 6c 52 6d 6c 73 5a 55 45 3d 3d } //5 Q3JlYXRlRmlsZUE==
		$a_01_7 = {56 32 6c 75 52 58 68 6c 59 77 3d 3d } //5 V2luRXhlYw==
		$a_01_8 = {54 47 39 68 5a 46 4a 6c 63 32 39 31 63 6d 4e 6c } //5 TG9hZFJlc291cmNl
		$a_01_9 = {56 33 4a 70 64 47 56 47 61 57 78 6c } //5 V3JpdGVGaWxl
	condition:
		((#a_01_0  & 1)*50+(#a_01_1  & 1)*50+(#a_01_2  & 1)*20+(#a_01_3  & 1)*20+(#a_01_4  & 1)*10+(#a_01_5  & 1)*5+(#a_01_6  & 1)*5+(#a_01_7  & 1)*5+(#a_01_8  & 1)*5+(#a_01_9  & 1)*5) >=155
 
}