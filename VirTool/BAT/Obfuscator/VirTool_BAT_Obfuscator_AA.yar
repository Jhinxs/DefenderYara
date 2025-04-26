
rule VirTool_BAT_Obfuscator_AA{
	meta:
		description = "VirTool:BAT/Obfuscator.AA,SIGNATURE_TYPE_PEHSTR_EXT,64 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {fe 01 16 fe 01 fe 0e ?? 01 fe 0c ?? 01 2d ?? 00 14 } //1
		$a_01_1 = {02 11 05 02 11 04 17 59 91 9c 20 } //1
		$a_01_2 = {02 11 06 02 11 05 17 59 91 9c 20 } //1
		$a_01_3 = {02 11 07 02 11 06 17 59 91 9c 20 } //1
		$a_01_4 = {04 1f 19 64 04 1d 62 60 10 02 } //1 ἄ搙ᴄ恢Ȑ
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}