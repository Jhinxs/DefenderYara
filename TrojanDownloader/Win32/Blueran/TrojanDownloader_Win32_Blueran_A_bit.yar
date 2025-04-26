
rule TrojanDownloader_Win32_Blueran_A_bit{
	meta:
		description = "TrojanDownloader:Win32/Blueran.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {41 3b c8 7c f4 90 09 07 00 80 b1 } //1
		$a_03_1 = {59 3b f0 72 e6 90 09 15 00 80 b4 ?? ?? ?? ?? ?? ?? 8d 85 ?? ?? ff ff } //1
		$a_01_2 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 } //1 \svchost.exe
		$a_01_3 = {25 48 4f 4d 45 44 52 49 56 45 25 25 48 4f 4d 45 50 41 54 48 25 5c 4c 6f 63 61 6c 20 53 65 74 74 69 6e 67 73 5c 54 65 6d 70 5c } //1 %HOMEDRIVE%%HOMEPATH%\Local Settings\Temp\
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}