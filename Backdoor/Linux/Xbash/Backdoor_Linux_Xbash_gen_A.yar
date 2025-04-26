
rule Backdoor_Linux_Xbash_gen_A{
	meta:
		description = "Backdoor:Linux/Xbash.gen!A!!Xbash.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,10 00 10 00 04 00 00 "
		
	strings :
		$a_80_0 = {44 52 4f 50 20 44 41 54 41 42 41 53 45 } //DROP DATABASE  10
		$a_80_1 = {42 69 74 63 6f 69 6e } //Bitcoin  5
		$a_80_2 = {42 54 43 20 } //BTC   5
		$a_80_3 = {50 4c 45 41 53 45 5f 52 45 41 44 5f 4d 45 5f 58 59 5a } //PLEASE_READ_ME_XYZ  1
	condition:
		((#a_80_0  & 1)*10+(#a_80_1  & 1)*5+(#a_80_2  & 1)*5+(#a_80_3  & 1)*1) >=16
 
}