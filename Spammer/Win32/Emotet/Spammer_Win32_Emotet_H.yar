
rule Spammer_Win32_Emotet_H{
	meta:
		description = "Spammer:Win32/Emotet.H,SIGNATURE_TYPE_PEHSTR,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {62 6f 74 5f 69 64 3d 25 73 5f 6e 61 6d 65 5f 70 61 74 68 3d 25 73 } //1 bot_id=%s_name_path=%s
		$a_01_1 = {2f 69 6e 70 75 74 2f 69 6e 2f 67 6f 2e 70 68 70 } //1 /input/in/go.php
		$a_01_2 = {7b 5c 2a 5c 68 74 6d 6c 74 61 67 00 } //1 屻尪瑨汭慴g
		$a_01_3 = {3c 65 6d 61 69 6c 3e 3c 21 5b 43 44 41 54 41 5b 00 } //1
		$a_01_4 = {3c 00 49 00 6e 00 63 00 6f 00 6d 00 69 00 6e 00 67 00 53 00 65 00 72 00 76 00 65 00 72 00 3e 00 3c 00 21 00 5b 00 43 00 44 00 41 00 54 00 41 00 5b 00 25 00 73 00 5d 00 5d 00 3e 00 3c 00 2f 00 49 00 } //1 <IncomingServer><![CDATA[%s]]></I
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}