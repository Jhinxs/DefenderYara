
rule Trojan_Win32_ClipBanker_M_MTB{
	meta:
		description = "Trojan:Win32/ClipBanker.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_81_0 = {43 72 61 73 68 44 75 6d 70 73 } //3 CrashDumps
		$a_81_1 = {73 75 62 73 74 2e 65 78 65 } //3 subst.exe
		$a_81_2 = {73 63 68 74 61 73 6b 73 } //3 schtasks
		$a_81_3 = {2f 43 72 65 61 74 65 20 2f 74 6e 20 4e 76 54 6d 52 65 70 5f 43 72 61 73 68 52 65 70 6f 72 74 33 5f 7b 42 32 46 45 31 39 35 32 2d 30 31 38 36 7d 20 2f 73 63 20 4d 49 4e 55 54 45 20 2f 74 72 } //3 /Create /tn NvTmRep_CrashReport3_{B2FE1952-0186} /sc MINUTE /tr
		$a_81_4 = {30 38 38 34 31 64 2d 31 38 63 37 2d 34 65 32 64 2d 66 37 65 32 39 64 } //3 08841d-18c7-4e2d-f7e29d
		$a_81_5 = {50 72 6f 63 65 73 73 48 61 63 6b 65 72 2e 65 78 65 } //3 ProcessHacker.exe
		$a_81_6 = {55 73 65 72 73 5c 79 6f 75 61 72 } //3 Users\youar
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3) >=21
 
}