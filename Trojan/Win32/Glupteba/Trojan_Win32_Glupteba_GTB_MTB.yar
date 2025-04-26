
rule Trojan_Win32_Glupteba_GTB_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.GTB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 04 24 83 c4 04 89 f6 68 ?? ?? ?? ?? 8b 3c 24 83 c4 04 e8 ?? ?? ?? ?? 31 01 21 f7 41 01 f7 21 ff 39 d9 75 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}