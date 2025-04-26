
rule HackTool_Win32_CCProxy{
	meta:
		description = "HackTool:Win32/CCProxy,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_00_0 = {53 65 72 76 65 72 3a 20 43 43 50 72 6f 78 79 } //2 Server: CCProxy
		$a_00_1 = {66 75 6e 63 74 69 6f 6e 20 46 69 6e 64 50 72 6f 78 79 46 6f 72 55 52 4c 28 75 72 6c 2c 20 68 6f 73 74 29 } //2 function FindProxyForURL(url, host)
		$a_02_2 = {50 72 6f 78 79 2d 61 67 65 6e 74 3a 20 (77 6f 72 6b 73 6e 74|43 43 50 72 6f 78 79) } //2
		$a_00_3 = {57 6f 72 6b 73 4e 54 20 53 74 6f 70 20 53 74 61 72 74 } //1 WorksNT Stop Start
		$a_00_4 = {59 6f 75 6e 67 7a 73 6f 66 74 20 47 61 6d 65 20 50 72 6f 78 79 } //1 Youngzsoft Game Proxy
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_02_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=7
 
}