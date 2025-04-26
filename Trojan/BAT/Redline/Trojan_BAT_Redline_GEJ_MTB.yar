
rule Trojan_BAT_Redline_GEJ_MTB{
	meta:
		description = "Trojan:BAT/Redline.GEJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_03_0 = {06 07 1d 2d 49 26 26 26 7e ?? ?? ?? ?? 06 18 28 ?? ?? ?? 06 7e ?? ?? ?? ?? 06 28 ?? ?? ?? 06 0d 7e ?? ?? ?? ?? 09 03 16 03 8e 69 28 ?? ?? ?? 06 2a } //10
		$a_01_1 = {6e 68 66 66 73 6b 64 73 66 6b 64 66 64 68 64 61 66 72 66 66 64 64 68 67 66 73 63 66 66 64 66 } //1 nhffskdsfkdfdhdafrffddhgfscffdf
		$a_01_2 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //1 RijndaelManaged
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=13
 
}