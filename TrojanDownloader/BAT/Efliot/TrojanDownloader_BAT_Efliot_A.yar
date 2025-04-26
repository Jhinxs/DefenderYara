
rule TrojanDownloader_BAT_Efliot_A{
	meta:
		description = "TrojanDownloader:BAT/Efliot.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 09 00 00 "
		
	strings :
		$a_01_0 = {3a 00 2f 00 2f 00 66 00 2d 00 73 00 30 00 63 00 69 00 65 00 74 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 } //8 ://f-s0ciety.com/
		$a_01_1 = {2f 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 2f 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 73 00 65 00 72 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //4 /Control/Downloads/server.exe
		$a_01_2 = {42 00 6f 00 74 00 6e 00 65 00 74 00 2f 00 64 00 65 00 6c 00 65 00 74 00 65 00 6d 00 65 00 2e 00 70 00 68 00 70 00 } //2 Botnet/deleteme.php
		$a_01_3 = {5c 00 6d 00 2e 00 65 00 78 00 65 00 } //2 \m.exe
		$a_01_4 = {50 75 74 4d 79 42 6f 74 6e 65 74 6f 66 66 6c 69 6e 65 } //2 PutMyBotnetoffline
		$a_01_5 = {42 6f 74 4e 65 74 49 73 4f 70 65 6e } //2 BotNetIsOpen
		$a_01_6 = {42 75 69 6c 64 42 6f 74 4e 65 74 } //2 BuildBotNet
		$a_01_7 = {52 65 4f 70 65 6e 42 6f 74 4e 65 74 } //2 ReOpenBotNet
		$a_01_8 = {48 69 64 65 4d 65 } //1 HideMe
	condition:
		((#a_01_0  & 1)*8+(#a_01_1  & 1)*4+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*1) >=10
 
}