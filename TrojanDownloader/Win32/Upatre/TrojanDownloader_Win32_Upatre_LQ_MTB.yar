
rule TrojanDownloader_Win32_Upatre_LQ_MTB{
	meta:
		description = "TrojanDownloader:Win32/Upatre.LQ!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 00 70 00 70 00 6c 00 65 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //1 Apple Update Service
		$a_01_1 = {50 00 6f 00 77 00 65 00 72 00 53 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2d 00 6e 00 6f 00 70 00 20 00 2d 00 63 00 } //1 PowerShell.exe -nop -c
		$a_01_2 = {5c 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 44 00 61 00 74 00 61 00 5c 00 63 00 6f 00 6e 00 74 00 61 00 73 00 6b 00 2e 00 65 00 78 00 65 00 } //1 \Application Data\contask.exe
		$a_01_3 = {5c 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 44 00 61 00 74 00 61 00 5c 00 63 00 6f 00 6e 00 69 00 6d 00 65 00 2e 00 65 00 78 00 65 00 } //1 \Application Data\conime.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}