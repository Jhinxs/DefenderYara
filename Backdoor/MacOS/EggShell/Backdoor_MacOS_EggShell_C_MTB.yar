
rule Backdoor_MacOS_EggShell_C_MTB{
	meta:
		description = "Backdoor:MacOS/EggShell.C!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {49 89 d6 4c 8d 3d ?? ?? ?? ?? 4c 89 ff e8 ?? ?? ?? ?? 48 85 db 7e 24 48 89 c1 be 01 00 00 00 31 ff 48 8d 04 1f 48 99 48 f7 f9 42 8a 04 3a 41 30 04 3e 89 f7 ff c6 48 39 df 7c e6 48 83 c4 08 } //2
		$a_00_1 = {44 89 e0 4c 69 f8 4f ec c4 4e 49 c1 ef 23 43 8d 04 bf 8d 04 80 44 01 f8 f7 d8 45 8d 44 04 61 48 8b 75 ?? 48 8d 15 } //1
		$a_00_2 = {2f 2e 75 70 64 61 74 65 } //1 /.update
		$a_00_3 = {6f 62 66 75 73 63 61 74 65 42 61 73 68 53 68 65 6c 6c 3a } //1 obfuscateBashShell:
		$a_00_4 = {4b 65 79 6c 6f 67 54 68 72 65 61 64 } //1 KeylogThread
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}