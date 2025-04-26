
rule Trojan_Win32_Conycspa_C{
	meta:
		description = "Trojan:Win32/Conycspa.C,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0c 00 0e 00 00 "
		
	strings :
		$a_01_0 = {2f 61 66 66 2d 6c 69 67 68 74 2f 61 66 66 63 67 69 2f 69 6e 73 74 61 6c 6c 65 64 2e 66 63 67 69 3f 75 73 65 72 69 64 3d 32 30 30 30 31 } //1 /aff-light/affcgi/installed.fcgi?userid=20001
		$a_01_1 = {2f 61 66 66 2d 6c 69 67 68 74 2f 61 66 66 63 67 69 2f 69 6e 73 74 61 6c 6c 2e 70 68 70 3f 75 73 65 72 69 64 3d 32 30 30 30 31 } //1 /aff-light/affcgi/install.php?userid=20001
		$a_01_2 = {5c 53 65 72 76 69 63 65 50 61 63 6b 46 69 6c 65 73 5c 69 33 38 36 5c 6d 73 77 73 6f 63 6b 2e 64 6c 6c } //1 \ServicePackFiles\i386\mswsock.dll
		$a_01_3 = {68 74 74 70 3a 2f 2f 6c 69 74 6c 65 6d 6f 75 73 65 2e 69 6e 66 6f 2f 61 2f 34 39 2e 64 61 74 } //1 http://litlemouse.info/a/49.dat
		$a_00_4 = {2f 63 67 69 2d 73 63 72 69 70 74 2f 72 65 70 65 61 74 65 72 6d 33 2e 66 63 67 69 3f 76 35 } //1 /cgi-script/repeaterm3.fcgi?v5
		$a_01_5 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 69 6d 61 67 65 2f 78 2d 67 69 66 } //1 Content-Type: image/x-gif
		$a_01_6 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 69 6d 61 67 65 2f 67 69 66 } //1 Content-Type: image/gif
		$a_01_7 = {5c 64 6c 6c 63 61 63 68 65 5c 6d 73 77 73 6f 63 6b 2e 64 6c 6c } //1 \dllcache\mswsock.dll
		$a_00_8 = {49 6e 74 65 72 6e 65 74 43 72 61 63 6b 55 72 6c 41 } //1 InternetCrackUrlA
		$a_01_9 = {5c 6d 73 77 73 6f 63 6b 68 68 2e 64 6c 6c } //1 \mswsockhh.dll
		$a_01_10 = {67 69 66 2f 63 68 67 69 66 2e 65 78 65 } //1 gif/chgif.exe
		$a_01_11 = {5c 6d 73 77 73 6f 63 6b 2e 62 61 6b } //1 \mswsock.bak
		$a_00_12 = {70 6e 67 2f 70 6e 67 2e 65 78 65 } //1 png/png.exe
		$a_00_13 = {6a 70 67 2f 6a 70 67 2e 65 78 65 } //1 jpg/jpg.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1) >=12
 
}