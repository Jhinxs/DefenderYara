
rule Trojan_Win32_CryptInject_DU_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.DU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {89 d8 83 e0 1f 8a 80 [0-04] 30 04 1e c7 44 24 0c 00 00 00 00 c7 44 24 08 00 00 00 00 c7 44 24 04 00 00 00 00 c7 04 24 00 00 00 00 e8 [0-04] 83 ec 10 e8 [0-04] 30 04 1e } //2
		$a_01_1 = {44 73 6c 33 32 2e 74 78 74 } //2 Dsl32.txt
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}