
rule Trojan_Win32_Shakblades_BE_MTB{
	meta:
		description = "Trojan:Win32/Shakblades.BE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {35 38 31 42 43 34 36 43 30 30 34 44 45 33 39 31 39 32 44 37 30 39 45 41 41 41 37 43 31 3c 2f 65 78 } //2 581BC46C004DE39192D709EAAA7C1</ex
		$a_01_1 = {46 33 37 38 44 35 30 45 30 31 31 41 34 37 32 46 42 44 34 30 38 34 38 35 34 43 31 3c 2f 73 } //2 F378D50E011A472FBD4084854C1</s
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}