
rule Trojan_BAT_Nanocore_ABV_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.ABV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_03_0 = {07 d8 b4 6f b0 ?? ?? 0a 00 2b 00 00 07 17 d6 0b 07 1f 0f 31 cc 02 74 0b ?? ?? 1b 06 6f b1 ?? ?? 0a 20 ff ?? ?? 00 28 a5 ?? ?? 06 00 2a 90 0a 45 00 06 16 6f b0 ?? ?? 0a 00 2b 19 00 06 07 19 32 07 20 ff ?? ?? 00 2b 03 03 } //6
		$a_01_1 = {4f 6c 65 44 62 43 6f 6d 6d 61 6e 64 } //1 OleDbCommand
		$a_01_2 = {47 65 74 52 65 73 6f 75 72 63 65 53 74 72 69 6e 67 } //1 GetResourceString
		$a_01_3 = {44 61 74 65 54 69 6d 65 50 69 63 6b 65 72 } //1 DateTimePicker
		$a_01_4 = {52 65 61 64 42 79 74 65 73 } //1 ReadBytes
	condition:
		((#a_03_0  & 1)*6+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=10
 
}