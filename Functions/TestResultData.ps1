function Create-TestResultData()
{
    return New-Module {

        $description_data = @{}

        function AddDescription($description) {
            $description_data[$description] = @{}
        }

        function GetDescriptions() {
            return [array] $description_data.keys
        }

        Export-ModuleMember -Variable * -Function *
    } -asCustomObject
}

