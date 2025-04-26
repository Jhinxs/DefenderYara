
rule Trojan_Win32_Killav_CO{
	meta:
		description = "Trojan:Win32/Killav.CO,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {4a 3a 5c 67 62 7a 69 6e 68 6f 5c 6f 62 6a 66 72 65 5c 69 33 38 36 5c 44 72 69 76 65 72 2e 70 64 62 } //1 J:\gbzinho\objfre\i386\Driver.pdb
		$a_01_1 = {5a 77 44 65 6c 65 74 65 46 69 6c 65 } //1 ZwDeleteFile
		$a_01_2 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 48 00 61 00 72 00 64 00 64 00 69 00 73 00 6b 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 31 00 5c 00 } //1 \Device\HarddiskVolume1\
		$a_01_3 = {5c 00 65 00 6b 00 72 00 6e 00 55 00 70 00 64 00 61 00 74 00 65 00 2e 00 64 00 6c 00 6c 00 } //1 \ekrnUpdate.dll
		$a_01_4 = {5c 00 61 00 76 00 67 00 75 00 70 00 64 00 2e 00 65 00 78 00 65 00 } //1 \avgupd.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}