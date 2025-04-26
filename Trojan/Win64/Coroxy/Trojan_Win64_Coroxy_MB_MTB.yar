
rule Trojan_Win64_Coroxy_MB_MTB{
	meta:
		description = "Trojan:Win64/Coroxy.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_03_0 = {48 89 85 e0 fe ff ff 48 8b bd e0 fe ff ff 48 c7 07 00 01 00 00 48 83 ec 20 48 c7 c1 02 00 00 00 48 8d 57 52 4c 8b c7 ff 15 ?? ?? ?? ?? 48 83 c4 20 48 83 7d 10 00 0f 85 } //5
		$a_01_1 = {8d 6c 56 61 06 2a 15 0d 2a 01 97 e3 02 51 56 fc f3 9d d9 e0 cf ba 8f cf 8d b7 d2 05 c6 6b 49 1a } //3
		$a_01_2 = {72 75 6e 64 6c 6c } //2 rundll
		$a_01_3 = {73 6f 63 6b 73 36 34 2e 64 6c 6c } //2 socks64.dll
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=12
 
}