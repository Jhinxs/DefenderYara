
rule Trojan_Win32_Dafterdod_E{
	meta:
		description = "Trojan:Win32/Dafterdod.E,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 "
		
	strings :
		$a_00_0 = {51 c7 44 24 0c 10 00 00 00 } //2
		$a_00_1 = {38 5c 08 01 75 0d 80 7c 08 02 0d } //2
		$a_00_2 = {48 45 4c 4c 4f } //1 HELLO
		$a_00_3 = {62 61 64 70 61 73 73 } //1 badpass
		$a_01_4 = {2f 73 74 61 74 3f 75 70 74 69 6d 65 3d 25 64 26 64 6f 77 6e 6c 69 6e 6b 3d 25 64 26 75 70 6c 69 6e 6b 3d 25 64 26 69 64 3d 25 73 26 73 74 61 74 70 61 73 73 3d 25 73 } //2 /stat?uptime=%d&downlink=%d&uplink=%d&id=%s&statpass=%s
		$a_01_5 = {26 67 75 69 64 3d 25 73 26 63 6f 6d 6d 65 6e 74 3d 25 73 26 70 3d 25 64 26 73 3d 25 73 } //2 &guid=%s&comment=%s&p=%d&s=%s
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=10
 
}