
rule Trojan_WinNT_Waltrodock_C{
	meta:
		description = "Trojan:WinNT/Waltrodock.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {c6 45 d4 63 c6 45 d5 00 c6 45 d6 61 c6 45 d7 00 c6 45 d8 72 c6 45 d9 00 c6 45 da 64 c6 45 db 00 c6 45 dc 63 c6 45 dd 00 c6 45 de 74 c6 45 df 00 c6 45 e0 72 c6 45 e1 00 c6 45 e2 6c } //1
		$a_01_1 = {4d 00 73 00 55 00 73 00 62 00 49 00 6f 00 } //1 MsUsbIo
		$a_01_2 = {75 00 73 00 62 00 69 00 6e 00 63 00 6b 00 65 00 79 00 2e 00 73 00 79 00 73 00 } //1 usbinckey.sys
		$a_03_3 = {53 50 59 44 4f 57 7e 31 5c [0-16] 5c 6f 62 6a 63 68 6b 5c 69 33 38 36 5c 52 6b 74 50 72 6f 74 65 63 74 2e 70 64 62 } //1
		$a_01_4 = {63 00 61 00 72 00 64 00 63 00 74 00 72 00 6c 00 2e 00 65 00 78 00 65 00 } //1 cardctrl.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}