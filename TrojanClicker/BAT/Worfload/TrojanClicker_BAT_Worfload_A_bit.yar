
rule TrojanClicker_BAT_Worfload_A_bit{
	meta:
		description = "TrojanClicker:BAT/Worfload.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_1 = {62 00 69 00 67 00 70 00 69 00 63 00 74 00 75 00 72 00 65 00 70 00 6f 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 64 00 69 00 72 00 65 00 63 00 74 00 2f 00 } //1 bigpicturepop.com/redirect/
		$a_01_2 = {54 00 61 00 73 00 6b 00 6d 00 67 00 72 00 } //1 Taskmgr
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}