
rule TrojanDownloader_Win32_Pipsek_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Pipsek.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {73 79 73 74 65 6d 64 65 62 75 67 2e 65 78 65 } //1 systemdebug.exe
		$a_01_1 = {75 73 70 31 30 2e 64 6c 6c } //1 usp10.dll
		$a_01_2 = {6c 71 63 79 63 35 32 2e 63 79 63 } //1 lqcyc52.cyc
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}