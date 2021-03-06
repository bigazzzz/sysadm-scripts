# �� ������ � ������������ OrganizationUnit
# $Users = Get-ADUser -Filter {SamAccountName -eq 'ashatunov'} -SearchBase "OU=SAD,OU=SBSUsers,OU=Users,OU=MyBusiness,DC=ad,DC=local"
# ��� ������������
# $Users = Get-ADUser -Filter * 
# ��� ������������ � ������������ OrganizationUnit
$Users = Get-ADUser -Filter * -SearchBase "OU=SAD,OU=SBSUsers,OU=Users,OU=MyBusiness,DC=ad,DC=local"
foreach ($User in $Users)
{
	# ��� ������������� ������� ����� "������������ �� ����� ������ ������" � "������ ������� �� ����������"
	Set-ADUser -Identity $User -CannotChangePassword $False -PasswordNeverExpires $False
}