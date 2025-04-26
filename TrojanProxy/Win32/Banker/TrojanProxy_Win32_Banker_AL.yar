
rule TrojanProxy_Win32_Banker_AL{
	meta:
		description = "TrojanProxy:Win32/Banker.AL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {2e 70 61 63 [0-0f] 41 75 74 6f 43 6f 6e 66 69 67 55 52 4c } //1
		$a_01_1 = {64 65 73 74 69 6e 61 74 61 72 69 6f 3d } //1 destinatario=
		$a_01_2 = {61 73 73 75 6e 74 6f 3d 49 6e 66 65 63 74 } //1 assunto=Infect
		$a_01_3 = {72 65 6d 65 74 65 6e 74 65 3d } //1 remetente=
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}