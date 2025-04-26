
rule TrojanDownloader_BAT_Ader_ABIT_MTB{
	meta:
		description = "TrojanDownloader:BAT/Ader.ABIT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 0c 16 0d 08 12 03 28 ?? ?? ?? 0a 06 07 02 07 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a de 0a 09 2c 06 08 28 ?? ?? ?? 0a dc 07 18 58 0b 07 02 6f ?? ?? ?? 0a 32 c5 06 6f ?? ?? ?? 0a 28 ?? ?? ?? 2b 2a } //3
		$a_01_1 = {55 00 77 00 7a 00 6f 00 73 00 65 00 66 00 6a 00 6b 00 70 00 63 00 76 00 74 00 6f 00 77 00 6b 00 6b 00 } //1 Uwzosefjkpcvtowkk
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1) >=4
 
}