#Requires -RunAsAdministrator
$installSoruce ="C:\KSC_Inst"
$ksc_EN = "https://aes.s.kaspersky-labs.com/administrationkit/ksc10/12.1.0.0/english-INT-5004280/3334333438317c44454c7c31/ksc_12.1.0.0_full_en.exe"
$unzip =" https://www.7-zip.org/a/7z1900-x64.exe"
$ssmssource = "https://download.microsoft.com/download/3/C/7/3C77BAD3-4E0F-4C6B-84DD-42796815AFF6/SSMS-Setup-ENU.exe"
$sql_Ex_dl = "www.jottacloud.com/opin/io/downloadPublic/jvo2zsmhv8qdida7zfvqh2gb/b8a10742fcbb459a9f6273f4f945e34f/@b8a10742fcbb459a9f6273f4f945e34f"
#C:\KSC_Inst\DBAConfigurationFile.ini


$KSC_EN_md5 = "05C2404242A393CEB1496ACFDF743080"
$SQL_EN_md5 = "97957C331AB43EDF42E1F3575B5E4B45"
$cLogFile ="C:\KSC_Inst\log.txt"


$SQLinsts =
@'
/ConfigurationFile=C:\KSC_Inst\DBAConfigurationFile.ini /IACCEPTSQLSERVERLICENSETERMS /PID="11111-00000-00000-00000-00000" 
'@



$SQLparams = @'

;SQL Server 2019 Configuration File
[OPTIONS]

; By specifying this parameter and accepting Microsoft Python Open and Microsoft Python Server terms, you acknowledge that you have read and understood the terms of use. 

IACCEPTPYTHONLICENSETERMS="False"

; Specifies a Setup work flow, like INSTALL, UNINSTALL, or UPGRADE. This is a required parameter. 

ACTION="Install"

; By specifying this parameter and accepting Microsoft R Open and Microsoft R Server terms, you acknowledge that you have read and understood the terms of use. 

IACCEPTROPENLICENSETERMS="False"

; Specifies that SQL Server Setup should not display the privacy statement when ran from the command line. 

SUPPRESSPRIVACYSTATEMENTNOTICE="False"

; Use the /ENU parameter to install the English version of SQL Server on your localized Windows operating system. 

ENU="True"

; Setup will not display any user interface. 

QUIET="True"

; Setup will display progress only, without any user interaction. 

QUIETSIMPLE="False"

; Parameter that controls the user interface behavior. Valid values are Normal for the full UI,AutoAdvance for a simplied UI, and EnableUIOnServerCore for bypassing Server Core setup GUI block. 

; UIMODE="AutoAdvance"

; Specify whether SQL Server Setup should discover and include product updates. The valid values are True and False or 1 and 0. By default SQL Server Setup will include updates that are found. 

UpdateEnabled="True"

; If this parameter is provided, then this computer will use Microsoft Update to check for updates. 

USEMICROSOFTUPDATE="False"

; Specifies that SQL Server Setup should not display the paid edition notice when ran from the command line. 

SUPPRESSPAIDEDITIONNOTICE="False"

; Specify the location where SQL Server Setup will obtain product updates. The valid values are "MU" to search Microsoft Update, a valid folder path, a relative path such as .\MyUpdates or a UNC share. By default SQL Server Setup will search Microsoft Update or a Windows Update service through the Window Server Update Services. 

UpdateSource="MU"

; Specifies features to install, uninstall, or upgrade. The list of top-level features include SQL, AS, IS, MDS, and Tools. The SQL feature will install the Database Engine, Replication, Full-Text, and Data Quality Services (DQS) server. The Tools feature will install shared components. 

FEATURES=SQLENGINE

; Displays the command line parameters usage. 

HELP="False"

; Specifies that the detailed Setup log should be piped to the console. 

INDICATEPROGRESS="False"

; Specifies that Setup should install into WOW64. This command line argument is not supported on an IA64 or a 32-bit system. 

X86="False"

; Specify a default or named instance. MSSQLSERVER is the default instance for non-Express editions and SQLExpress for Express editions. This parameter is required when installing the SQL Server Database Engine (SQL), or Analysis Services (AS). 

INSTANCENAME="KASPERSKY_KSC"

; Specify the root installation directory for shared components.  This directory remains unchanged after shared components are already installed. 

INSTALLSHAREDDIR="C:\Program Files\Microsoft SQL Server"

; Specify the root installation directory for the WOW64 shared components.  This directory remains unchanged after WOW64 shared components are already installed. 

INSTALLSHAREDWOWDIR="C:\Program Files (x86)\Microsoft SQL Server"

; Specify the Instance ID for the SQL Server features you have specified. SQL Server directory structure, registry structure, and service names will incorporate the instance ID of the SQL Server instance. 

INSTANCEID="KASPERSKY_KSC"

; Account for SQL Server CEIP service: Domain\User or system account. 

SQLTELSVCACCT="NT Service\SQLTELEMETRY$KASPERSKY_KSC"

; Startup type for the SQL Server CEIP service. 

SQLTELSVCSTARTUPTYPE="Automatic"

; Specify the installation directory. 

INSTANCEDIR="C:\Program Files\Microsoft SQL Server"

; Agent account name 

AGTSVCACCOUNT="NT AUTHORITY\NETWORK SERVICE"

; Auto-start service after installation.  

AGTSVCSTARTUPTYPE="Disabled"

; CM brick TCP communication port 

COMMFABRICPORT="0"

; How matrix will use private networks 

COMMFABRICNETWORKLEVEL="0"

; How inter brick communication will be protected 

COMMFABRICENCRYPTION="0"

; TCP port used by the CM brick 

MATRIXCMBRICKCOMMPORT="0"

; Startup type for the SQL Server service. 

SQLSVCSTARTUPTYPE="Automatic"

; Level to enable FILESTREAM feature at (0, 1, 2 or 3). 

FILESTREAMLEVEL="0"

; The max degree of parallelism (MAXDOP) server configuration option. 

SQLMAXDOP="0"

; Set to "1" to enable RANU for SQL Server Express. 

ENABLERANU="True"

; Specifies a Windows collation or an SQL collation to use for the Database Engine. 

SQLCOLLATION="SQL_Latin1_General_CP1_CI_AS"

; Account for SQL Server service: Domain\User or system account. 

SQLSVCACCOUNT="NT Service\MSSQL$KASPERSKY_KSC"

; Set to "True" to enable instant file initialization for SQL Server service. If enabled, Setup will grant Perform Volume Maintenance Task privilege to the Database Engine Service SID. This may lead to information disclosure as it could allow deleted content to be accessed by an unauthorized principal. 

SQLSVCINSTANTFILEINIT="False"

; Windows account(s) to provision as SQL Server system administrators. 

SQLSYSADMINACCOUNTS="BUILTIN\Administrators"

; The number of Database Engine TempDB files. 

SQLTEMPDBFILECOUNT="1"

; Specifies the initial size of a Database Engine TempDB data file in MB. 

SQLTEMPDBFILESIZE="8"

; Specifies the automatic growth increment of each Database Engine TempDB data file in MB. 

SQLTEMPDBFILEGROWTH="64"

; Specifies the initial size of the Database Engine TempDB log file in MB. 

SQLTEMPDBLOGFILESIZE="8"

; Specifies the automatic growth increment of the Database Engine TempDB log file in MB. 

SQLTEMPDBLOGFILEGROWTH="64"

; Provision current user as a Database Engine system administrator for SQL Server 2019 Express. 

ADDCURRENTUSERASSQLADMIN="False"

; Specify 0 to disable or 1 to enable the TCP/IP protocol. 

TCPENABLED="0"

; Specify 0 to disable or 1 to enable the Named Pipes protocol. 

NPENABLED="0"

; Startup type for Browser Service. 

BROWSERSVCSTARTUPTYPE="Disabled"

; Use SQLMAXMEMORY to minimize the risk of the OS experiencing detrimental memory pressure. 

SQLMAXMEMORY="2147483647"

; Use SQLMINMEMORY to reserve a minimum amount of memory available to the SQL Server Memory Manager. 

SQLMINMEMORY="0"

'@ 



#check if install dir exist
if (!(Test-Path $installSoruce -PathType Container))
{
    New-Item -ItemType Directory -Force -Path $installSoruce
    Add-Content -Path $cLogFile -Value "!! OK § $installSoruce Created"
}
else
{
   Add-Content -Path $cLogFile -Value "!! OK § $installSoruce allready exist"
}

#check if ksc file is present Start
if (!(Test-Path $installSoruce\setup.zip))
{
    Invoke-WebRequest -Uri $ksc_EN -OutFile "$installSoruce\setup.zip"
    $1hashSrc = Get-FileHash "$installSoruce\setup.zip" -Algorithm "MD5"
    If ($1hashSrc.Hash -ne $KSC_EN_md5)
    { Add-Content -Path $cLogFile -Value "!!Error § Source File Hash: $1hashSrc does not equal expected File Hash: $KSC_EN_md5 --> the file is not valid. !! SETUP EXIT !!"
    Exit 1
    }
}

else
{
$1hashSrc = Get-FileHash "$installSoruce\setup.zip" -Algorithm "MD5"
If ($1hashSrc.Hash -ne $KSC_EN_md5)
{
  Add-Content -Path $cLogFile -Value "!!Error § Source File Hash: $1hashSrc does not equal expected File Hash: $KSC_EN_md5 --> the file is not valid."
  Exit 1
}
  Add-Content -Path $cLogFile -Value "!! OK § Source File Hash: $1hashSrc equal expected File Hash: $KSC_EN_md5 --> the file is valid."
}
#check if ksc file is present End


#check if SQL files are present start
if (!(Test-Path $installSoruce\SQLServer2019-x64-ENU.zip))
{
    Invoke-WebRequest -Uri $sql_Ex_dl -OutFile "$installSoruce\SQLServer2019-x64-ENU.zip"
    $hashSrc3 = Get-FileHash "$installSoruce\SQLServer2019-x64-ENU.zip" -Algorithm "MD5"
    If ($hashSrc3.Hash -ne $SQL_EN_md5)
    { Add-Content -Path $cLogFile -Value "!!Error § Source File Hash: $hashSrc3 does not equal expected File Hash: $SQL_EN_md5 --> the file is not valid. !! SETUP EXIT !!"
    Exit 1
    }
}

else
{
$hashSrc2 = Get-FileHash "$installSoruce\SQLServer2019-x64-ENU.zip" -Algorithm "MD5"
If ($hashSrc2.Hash -ne $SQL_EN_md5)
{
  Add-Content -Path $cLogFile -Value "!!Error § Source File Hash: $hashSrc2 does not equal expected File Hash: $SQL_EN_md5 --> the file is not valid."
  Exit 1
}
  Add-Content -Path $cLogFile -Value "!! OK § Source File Hash: $hashSrc2 equal expected File Hash: $SQL_EN_md5 --> the file is valid."
}
#check if SQL files are present end

#Extract SQL Server
if (!(Test-Path $installSoruce\SQLServer2019-x64-ENU -PathType Container))
{
    Expand-Archive $installSoruce\SQLServer2019-x64-ENU.zip -DestinationPath $installSoruce\
    Add-Content -Path $cLogFile -Value "!! OK § Sql Install files Created"
}
else
{
   Add-Content -Path $cLogFile -Value "!! OK § Sql Install files allready exist"
}



if ( !(Test-Path 'HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server'))
    {

    #Add-Content -Path $installSoruce\DBAConfigurationFile.ini -Value $SQLparams


    if (!(Test-Path $installSoruce\DBAConfigurationFile.ini))
    {
        Add-Content -Path $installSoruce\DBAConfigurationFile.ini -Value $SQLparams
        Add-Content -Path $cLogFile -Value "!! OK § Sql INI files Created"
        
    }
    else
    {
       Add-Content -Path $cLogFile -Value "!! OK § Sql INI files allready exist"
    }


    #Set-Location to where your SQL Setup.exe is located, then run:


    Start-process C:\KSC_Inst\SQLServer2019-x64-ENU\setup.exe $SQLinsts -wait
    $SQLinstRes = (Get-Content "C:\Program Files\Microsoft SQL Server\150\Setup Bootstrap\Log\Summary.txt" -TotalCount 6)

    Add-Content -Path $cLogFile -Value "!! OK § Sql Setup Finished"
    Add-Content -Path $cLogFile -Value "!! RESULT: $SQLinstRes "
}
else
{

if ((Get-ItemPropertyValue -Path "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\" -Name "InstalledInstances") -ne "KASPERSKY_KSC" )
{
$Err_SQLSRV = (Get-ItemPropertyValue -Path "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\" -Name "InstalledInstances")
Add-Content -Path $cLogFile -Value "!! Error § Wrong Sql ($Err_SQLSRV) SERVER exist"
exit 1
} 
else
{Add-Content -Path $cLogFile -Value "!! Warning § Sql KASPERSKY_KSC exist"
}
}




