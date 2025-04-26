
rule Ransom_MSIL_Filecoder_AVA_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.AVA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {0b 16 0c 2b 16 07 08 9a 28 ?? ?? ?? 06 2c 08 07 08 9a 28 ?? ?? ?? 0a 08 17 58 0c 08 07 8e 69 32 e4 } //2
		$a_01_1 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //1 GetFolderPath
		$a_01_2 = {2e 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 } //1 .locked
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}