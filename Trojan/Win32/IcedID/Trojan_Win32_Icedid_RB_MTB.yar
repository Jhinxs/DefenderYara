
rule Trojan_Win32_Icedid_RB_MTB{
	meta:
		description = "Trojan:Win32/Icedid.RB!MTB,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 6c 69 7a 69 6c 69 6e 6e 6f 2e 74 6f 70 } //10 slizilinno.top
		$a_01_1 = {70 6f 72 74 69 76 69 74 74 6f 2e 74 6f 70 } //10 portivitto.top
		$a_01_2 = {2f 69 6d 61 67 65 2f 3f 69 64 3d 25 30 2e 32 58 25 30 2e 38 58 25 30 2e 38 58 25 73 } //1 /image/?id=%0.2X%0.8X%0.8X%s
		$a_01_3 = {2e 70 6e 67 } //1 .png
		$a_01_4 = {5c 4a 6f 68 6e 44 6f 65 5c 41 70 70 6c 69 63 61 74 69 6f 6e 20 44 61 74 61 5c 4a 6f 68 6e 44 6f 65 } //1 \JohnDoe\Application Data\JohnDoe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=10
 
}