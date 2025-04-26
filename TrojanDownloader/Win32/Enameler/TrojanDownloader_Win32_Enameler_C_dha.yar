
rule TrojanDownloader_Win32_Enameler_C_dha{
	meta:
		description = "TrojanDownloader:Win32/Enameler.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {45 4e 41 4d 45 4c 49 42 30 30 31 2e 64 6c 6c } //1 ENAMELIB001.dll
		$a_01_1 = {67 65 74 6c 6f 67 } //1 getlog
		$a_01_2 = {38 64 75 37 68 76 37 36 29 28 2a 48 55 59 25 5e 54 52 24 45 70 57 3c 3a 3e 48 55 69 6a 6b 73 6f } //1 8du7hv76)(*HUY%^TR$EpW<:>HUijkso
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}