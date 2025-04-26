
rule Trojan_Win32_Fragtor_KAE_MTB{
	meta:
		description = "Trojan:Win32/Fragtor.KAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 0b 81 c0 ?? ?? ?? ?? 29 d7 81 e1 ?? ?? ?? ?? 81 ef ?? ?? ?? ?? f7 d2 31 0e f7 d2 29 fa 46 47 4f 43 29 c2 89 c7 81 fe } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Fragtor_KAE_MTB_2{
	meta:
		description = "Trojan:Win32/Fragtor.KAE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {57 65 6c 63 6f 6d 65 20 74 6f 20 42 61 72 74 65 6e 64 65 72 20 53 69 6d 75 6c 61 74 6f 72 21 } //1 Welcome to Bartender Simulator!
		$a_01_1 = {67 63 72 79 5f 73 65 78 70 5f 62 75 69 6c 64 5f 61 72 72 61 79 } //1 gcry_sexp_build_array
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}