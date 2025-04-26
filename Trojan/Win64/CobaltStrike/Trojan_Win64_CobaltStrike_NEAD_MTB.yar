
rule Trojan_Win64_CobaltStrike_NEAD_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.NEAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 0f b6 04 10 88 02 48 ff c2 8b 43 54 48 8b ca 49 2b ce 48 3b c8 72 e8 } //10
		$a_01_1 = {4d 65 74 65 72 70 72 65 74 65 72 4c 6f 61 64 65 64 } //2 MeterpreterLoaded
		$a_01_2 = {43 79 6d 75 6c 61 74 65 53 74 61 67 65 6c 65 73 73 4d 65 74 65 72 70 72 65 74 65 72 44 6c 6c 2e 64 6c 6c } //2 CymulateStagelessMeterpreterDll.dll
		$a_01_3 = {5c 43 79 6d 75 6c 61 74 65 5c 41 67 65 6e 74 5c 41 74 74 61 63 6b 73 4c 6f 67 73 5c 65 64 72 } //2 \Cymulate\Agent\AttacksLogs\edr
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=16
 
}