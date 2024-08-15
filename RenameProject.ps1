$ProjectName = Read-Host "Enter Project Name"
$TemplateName = "DotNetTestTemplate"

Rename-Item -Path "$TemplateName.sln" -NewName "$ProjectName.sln"
Rename-Item -Path ".\$TemplateName\$TemplateName.csproj" -NewName "$ProjectName.csproj"
Rename-Item -Path "$TemplateName" -NewName "$ProjectName"
(Get-Content "$ProjectName.sln").Replace("$TemplateName", "$ProjectName") | Set-Content "$ProjectName.sln"