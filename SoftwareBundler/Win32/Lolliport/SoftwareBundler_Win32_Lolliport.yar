
rule SoftwareBundler_Win32_Lolliport{
	meta:
		description = "SoftwareBundler:Win32/Lolliport,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {75 73 65 72 33 32 3a 3a 4c 6f 61 64 49 6d 61 67 65 28 69 20 30 2c 20 74 73 2c 20 69 20 30 2c 20 69 30 2c 20 69 30 2c 20 69 30 78 30 30 31 30 29 20 69 2e 72 30 } //1 user32::LoadImage(i 0, ts, i 0, i0, i0, i0x0010) i.r0
		$a_01_1 = {6c 6f 6c 6c 69 70 6f 70 2d 6e 65 74 77 6f 72 6b 2e 63 6f 6d 2f 65 75 6c 61 2e 70 68 70 3f 6c 67 3d } //1 lollipop-network.com/eula.php?lg=
		$a_01_2 = {6f 70 65 6e 20 68 74 74 70 3a 2f 2f 77 77 77 2e 6c 6f 6c 6c 69 70 6f 70 2d 6e 65 74 77 6f 72 6b 2e 63 6f 6d 2f 70 72 69 76 61 63 79 2e 70 68 70 3f 6c 67 3d } //1 open http://www.lollipop-network.com/privacy.php?lg=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}