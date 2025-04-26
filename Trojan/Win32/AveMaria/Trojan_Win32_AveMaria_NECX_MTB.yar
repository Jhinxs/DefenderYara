
rule Trojan_Win32_AveMaria_NECX_MTB{
	meta:
		description = "Trojan:Win32/AveMaria.NECX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 "
		
	strings :
		$a_01_0 = {0f a4 f9 08 99 c1 e7 08 0b ca 0b f8 0f a4 f9 08 0f be 43 01 99 c1 e7 08 0b ca 0b f8 0f be 03 0f a4 f9 08 99 c1 e7 08 56 0b f8 } //10
		$a_01_1 = {47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5c 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //2 Google\Chrome\User Data\Default\Login Data
		$a_01_2 = {41 00 76 00 65 00 5f 00 4d 00 61 00 72 00 69 00 61 00 20 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 } //2 Ave_Maria Stealer
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 46 6f 6c 64 65 72 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //2 Software\Classes\Folder\shell\open\command
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=16
 
}