
rule TrojanDownloader_Win32_Aecofil_A{
	meta:
		description = "TrojanDownloader:Win32/Aecofil.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 00 74 00 61 00 74 00 2e 00 61 00 73 00 68 00 78 00 3f 00 71 00 3d 00 7b 00 40 00 49 00 44 00 7d 00 3b 00 7b 00 40 00 4d 00 41 00 43 00 7d 00 3b 00 7b 00 40 00 4e 00 45 00 54 00 7d 00 3b 00 7b 00 40 00 43 00 4e 00 41 00 4d 00 45 00 7d 00 3b 00 7b 00 40 00 54 00 49 00 4d 00 45 00 7d 00 26 00 52 00 65 00 71 00 75 00 65 00 73 00 74 00 3d 00 45 00 78 00 65 00 46 00 69 00 6c 00 65 00 } //1 Stat.ashx?q={@ID};{@MAC};{@NET};{@CNAME};{@TIME}&Request=ExeFile
		$a_01_1 = {30 00 30 00 30 00 63 00 63 00 2e 00 63 00 6f 00 6d 00 } //1 000cc.com
		$a_01_2 = {2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 74 00 78 00 74 00 } //1 /update.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}