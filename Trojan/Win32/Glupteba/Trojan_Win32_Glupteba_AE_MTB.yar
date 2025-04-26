
rule Trojan_Win32_Glupteba_AE_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.AE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {31 13 09 fe 81 c3 04 00 00 00 56 59 56 5f 39 c3 75 e9 } //2
		$a_03_1 = {31 11 81 e8 [0-04] 21 db 81 c1 04 00 00 00 43 39 f1 75 e6 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2) >=2
 
}