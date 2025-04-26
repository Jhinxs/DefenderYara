
rule Backdoor_Win32_Lotok_GMF_MTB{
	meta:
		description = "Backdoor:Win32/Lotok.GMF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {b0 6c 51 52 c6 44 24 ?? 43 c6 44 24 ?? 74 c6 44 24 ?? 54 c6 44 24 ?? 68 88 5c 24 24 c6 44 24 ?? 4b c6 44 24 ?? 52 c6 44 24 ?? 4e c6 44 24 ?? 4c c6 44 24 ?? 33 c6 44 24 ?? 32 c6 44 24 ?? 2e 88 44 24 ?? 88 44 24 ?? 88 5c 24 ?? ff 15 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Backdoor_Win32_Lotok_GMF_MTB_2{
	meta:
		description = "Backdoor:Win32/Lotok.GMF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_03_0 = {8d 45 f0 33 db 50 8d 45 e0 50 c6 45 f0 43 c6 45 f1 72 c6 45 f2 65 c6 45 f3 61 c6 45 f4 74 c6 45 f5 65 c6 45 f6 54 c6 45 f7 68 c6 45 f8 72 c6 45 f9 65 c6 45 fa 61 c6 45 fb 64 ?? ?? ?? c6 45 e0 4b c6 45 e1 45 c6 45 e2 52 c6 45 e3 4e c6 45 e4 45 c6 45 e5 4c c6 45 e6 33 c6 45 e7 32 c6 45 e8 2e c6 45 e9 64 c6 45 ea 6c c6 45 eb 6c } //10
		$a_01_1 = {32 31 31 2e 31 36 37 2e 37 33 2e 32 33 } //1 211.167.73.23
		$a_80_2 = {74 63 70 69 70 32 30 30 35 2e 62 6c 6f 67 63 68 69 6e 61 2e 63 6f 6d } //tcpip2005.blogchina.com  1
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_80_2  & 1)*1) >=12
 
}