
rule Trojan_Win32_Emotet_BS{
	meta:
		description = "Trojan:Win32/Emotet.BS,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {50 62 37 33 30 2e 70 64 62 } //4 Pb730.pdb
		$a_01_1 = {66 00 48 00 79 00 6b 00 59 00 74 00 20 00 55 00 7a 00 70 00 6e 00 50 00 72 00 20 00 58 00 55 00 43 00 53 00 70 00 20 00 4e 00 4f 00 6a 00 67 00 44 00 41 00 62 00 59 00 76 00 6d 00 20 00 55 00 4e 00 5a 00 44 00 20 00 41 00 41 00 } //1 fHykYt UzpnPr XUCSp NOjgDAbYvm UNZD AA
		$a_01_2 = {59 00 6b 00 20 00 66 00 6e 00 20 00 6f 00 6e 00 20 00 4e 00 55 00 63 00 77 00 62 00 6c 00 67 00 63 00 20 00 41 00 68 00 77 00 6d 00 20 00 4a 00 7a 00 62 00 } //1 Yk fn on NUcwblgc Ahwm Jzb
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=6
 
}
rule Trojan_Win32_Emotet_BS_2{
	meta:
		description = "Trojan:Win32/Emotet.BS,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {72 53 56 7a 2f 66 39 3d 47 49 30 2e 70 64 62 } //1 rSVz/f9=GI0.pdb
		$a_03_1 = {89 c1 83 e1 ?? 83 f8 ?? 0f 42 c8 8b ?? ?? 39 d1 0f 97 c3 83 f9 ?? 0f 97 c7 08 fb f6 c3 ?? 89 ?? ?? 89 ?? ?? 75 [0-02] 8b ?? ?? 8a ?? ?? ?? ?? ?? ?? 8b ?? ?? 8b ?? ?? 8a 2c 32 28 cd 8b ?? ?? 88 2c 37 83 c6 ?? 8b 5d ?? 39 de 89 75 ?? 72 } //1
		$a_01_2 = {49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 53 00 6f 00 66 00 74 00 70 00 75 00 62 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Trojan_Win32_Emotet_BS_3{
	meta:
		description = "Trojan:Win32/Emotet.BS,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {62 00 72 00 65 00 48 00 45 00 52 00 56 00 57 00 72 00 6e 00 45 00 47 00 52 00 45 00 62 00 20 00 73 00 74 00 6f 00 70 00 20 00 7a 00 72 00 66 00 48 00 66 00 66 00 73 00 5a 00 47 00 65 00 48 00 20 00 5a 00 56 00 67 00 6c 00 74 00 64 00 6e 00 78 00 48 00 20 00 38 00 33 00 37 00 38 00 33 00 36 00 } //1 breHERVWrnEGREb stop zrfHffsZGeH ZVgltdnxH 837836
		$a_01_1 = {43 00 4b 00 76 00 2e 00 61 00 77 00 45 00 56 00 57 00 65 00 68 00 57 00 52 00 4e 00 57 00 52 00 20 00 4a 00 5a 00 28 00 6b 00 79 00 29 00 57 00 45 00 46 00 } //1 CKv.awEVWehWRNWR JZ(ky)WEF
		$a_01_2 = {6e 00 69 00 37 00 3d 00 38 00 68 00 4c 00 4f 00 36 00 6f 00 } //1 ni7=8hLO6o
		$a_01_3 = {57 68 6a 72 6b 65 68 4c 6b 70 65 3b 72 6c 74 6a 68 70 6f 77 3b 65 6c 6b 72 6a 6a 6b 6c 57 45 4b 4c 23 2e 70 64 62 } //1 WhjrkehLkpe;rltjhpow;elkrjjklWEKL#.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}