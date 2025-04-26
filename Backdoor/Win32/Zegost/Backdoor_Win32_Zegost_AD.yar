
rule Backdoor_Win32_Zegost_AD{
	meta:
		description = "Backdoor:Win32/Zegost.AD,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_00_0 = {2f 73 74 75 62 2e 64 61 74 } //1 /stub.dat
		$a_03_1 = {8b d1 83 e2 01 80 fa 01 8a 14 01 75 05 80 f2 ?? eb 03 80 f2 ?? 88 14 01 41 3b ce } //10
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*10) >=11
 
}
rule Backdoor_Win32_Zegost_AD_2{
	meta:
		description = "Backdoor:Win32/Zegost.AD,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {ff d6 40 89 44 24 ?? 8a 45 00 3c ?? 74 47 3c 42 74 } //1
		$a_03_1 = {b9 00 08 00 00 33 c0 8d bc 24 ?? ?? 00 00 50 f3 ab 8b 83 ?? ?? 00 00 8d 94 24 ?? ?? 00 00 68 00 20 00 00 52 50 ff d5 85 c0 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}