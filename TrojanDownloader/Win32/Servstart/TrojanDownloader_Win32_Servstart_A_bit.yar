
rule TrojanDownloader_Win32_Servstart_A_bit{
	meta:
		description = "TrojanDownloader:Win32/Servstart.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {7a 69 66 75 63 68 75 61 6e 64 75 6c 69 } //1 zifuchuanduli
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 43 61 63 72 6b 5c } //1 C:\Program Files\Cacrk\
		$a_03_2 = {57 ff d6 8b 45 ?? 03 c3 59 8a 08 80 c1 7a 80 f1 59 43 3b 5d ?? 88 08 7c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}