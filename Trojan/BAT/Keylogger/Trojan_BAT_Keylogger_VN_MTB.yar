
rule Trojan_BAT_Keylogger_VN_MTB{
	meta:
		description = "Trojan:BAT/Keylogger.VN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {01 25 16 7e ?? ?? ?? 04 a2 25 17 7e ?? ?? ?? 04 a2 25 18 72 ?? ?? ?? 70 a2 0c 08 6f ?? ?? ?? 0a 26 16 0d 2b } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}