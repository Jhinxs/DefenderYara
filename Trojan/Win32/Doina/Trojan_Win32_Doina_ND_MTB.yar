
rule Trojan_Win32_Doina_ND_MTB{
	meta:
		description = "Trojan:Win32/Doina.ND!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {e8 be 02 00 00 32 db 88 5d e7 83 65 fc ?? e8 d5 f9 ff ff 88 45 dc a1 } //5
		$a_01_1 = {6e 4a 30 4d 7a 49 75 5a 47 78 73 } //1 nJ0MzIuZGxs
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}