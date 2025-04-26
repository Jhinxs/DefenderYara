
rule Trojan_Win32_Hajian_A_MTB{
	meta:
		description = "Trojan:Win32/Hajian.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {c7 85 10 fd ff ff 01 00 00 00 c7 85 08 fd ff ff 02 00 00 00 c7 85 88 fc ff ff 11 60 00 00 ff 15 3c 10 40 00 8d 95 f8 fc ff ff 8d 85 18 fd ff ff 52 50 ff 15 ?? 10 40 00 50 ff 15 ?? 10 40 00 8d 8d e8 fc ff ff 8d 95 d8 fc ff ff 51 52 88 85 f0 fc ff ff c7 85 e8 fc ff ff 11 00 00 00 ff 15 ?? 11 40 00 8b 85 60 fd ff ff 8d 8d 58 fc ff ff 89 85 50 fc ff ff 6a 02 8d 95 d8 fc ff ff 51 8d 85 c8 fc ff ff 52 50 89 9d 48 fc ff ff c7 85 60 fc ff ff ?? ?? ?? 00 89 9d 58 fc ff ff ff d7 8d 8d b8 fc ff ff 50 51 ff 15 ?? 11 40 00 8d 95 48 fc ff ff 8d 85 b8 fc ff ff 52 8d 8d a8 fc ff ff 50 51 c7 85 40 fc ff ff ?? ?? ?? 00 89 9d 38 fc ff ff ff d7 50 8d 95 38 fc ff ff 8d 85 98 fc ff ff 52 50 ff d7 50 ff 15 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}