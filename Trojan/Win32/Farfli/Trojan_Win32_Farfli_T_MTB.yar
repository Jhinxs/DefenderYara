
rule Trojan_Win32_Farfli_T_MTB{
	meta:
		description = "Trojan:Win32/Farfli.T!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {3a f7 af 53 43 82 e2 ?? 27 ce 53 80 43 } //2
		$a_01_1 = {8d 3b fa ed 28 20 c9 27 96 11 98 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}