
rule Worm_Win32_Tophos_C{
	meta:
		description = "Worm:Win32/Tophos.C,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {b8 80 4a 5d 05 e8 ?? ?? ?? ?? 05 00 e1 f5 05 } //1
		$a_01_1 = {3a 00 5c 00 50 00 68 00 6f 00 74 00 6f 00 5c 00 50 00 68 00 6f 00 74 00 6f 00 2e 00 65 00 78 00 65 00 } //4 :\Photo\Photo.exe
		$a_01_2 = {2f 00 67 00 65 00 74 00 2e 00 70 00 68 00 70 00 3f 00 73 00 65 00 61 00 72 00 63 00 68 00 3d 00 } //4 /get.php?search=
		$a_01_3 = {2c 00 70 00 6f 00 72 00 6e 00 2c 00 } //2 ,porn,
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*4+(#a_01_2  & 1)*4+(#a_01_3  & 1)*2) >=8
 
}