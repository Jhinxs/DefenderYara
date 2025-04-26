
rule Backdoor_BAT_AsyncRAT_AB_MTB{
	meta:
		description = "Backdoor:BAT/AsyncRAT.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_01_0 = {58 00 47 00 35 00 31 00 55 00 6c 00 78 00 75 00 62 00 32 00 6c 00 7a 00 63 00 6d 00 56 00 57 00 64 00 47 00 35 00 6c 00 63 00 6e 00 4a 00 31 00 51 00 31 00 78 00 7a 00 64 00 32 00 39 00 6b 00 62 00 6d 00 6c 00 58 00 58 00 48 00 52 00 6d 00 62 00 33 00 4e 00 76 00 63 00 6d 00 4e 00 70 00 54 00 56 00 78 00 6c 00 63 00 6d 00 46 00 33 00 64 00 47 00 5a 00 76 00 55 00 77 00 } //2 XG51Ulxub2lzcmVWdG5lcnJ1Q1xzd29kbmlXXHRmb3NvcmNpTVxlcmF3dGZvUw
		$a_01_1 = {55 00 47 00 46 00 6a 00 61 00 32 00 56 00 30 00 } //2 UGFja2V0
		$a_01_2 = {55 00 47 00 6c 00 75 00 5a 00 77 00 } //2 UGluZw
		$a_01_3 = {54 00 57 00 56 00 7a 00 63 00 32 00 46 00 6e 00 5a 00 51 00 } //2 TWVzc2FnZQ
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=8
 
}