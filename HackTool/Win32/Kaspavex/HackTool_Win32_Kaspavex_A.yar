
rule HackTool_Win32_Kaspavex_A{
	meta:
		description = "HackTool:Win32/Kaspavex.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {61 74 74 72 69 62 20 2b 72 20 2b 68 20 2b 73 20 22 43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4b 61 73 70 65 72 73 6b 79 20 4c 61 62 5c } //1 attrib +r +h +s "C:\Program Files\Kaspersky Lab\
		$a_00_1 = {72 65 67 20 64 65 6c 65 74 65 20 22 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 5c 53 4f 46 54 57 41 52 45 5c 4b 61 73 70 65 72 73 6b 79 4c 61 62 5c 4c 69 63 53 74 6f 72 61 67 65 22 20 2f 66 } //1 reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\LicStorage" /f
		$a_00_2 = {72 65 67 20 64 65 6c 65 74 65 20 22 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 43 72 79 70 74 6f 67 72 61 70 68 79 5c 52 4e 47 22 20 2f 66 } //1 reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography\RNG" /f
		$a_00_3 = {72 65 67 20 64 65 6c 65 74 65 20 22 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 53 79 73 74 65 6d 43 65 72 74 69 66 69 63 61 74 65 73 5c 53 50 43 5c 43 65 72 74 69 66 69 63 61 74 65 73 22 20 2f 66 } //1 reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\SPC\Certificates" /f
		$a_03_4 = {68 ff 00 00 00 ff 15 ?? ?? 40 00 6a 32 68 ?? ?? 40 00 68 ?? ?? 40 00 ff 15 ?? ?? 40 00 68 ?? ?? 40 00 6a 00 68 ?? ?? 40 00 68 ?? ?? 40 00 ff 15 ?? ?? 40 00 68 ?? ?? 40 00 ff 15 ?? ?? 40 00 e8 02 00 00 00 20 00 68 ?? ?? 40 00 ff 15 ?? ?? 40 00 6a 32 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_03_4  & 1)*2) >=4
 
}