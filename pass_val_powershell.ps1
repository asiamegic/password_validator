$password = $args[0]
$len = $password.Length

$t = $host.ui.RawUI.ForegroundColor


if ($len -ge 10){
    if($password -match "[0-9]"){
        if($password -match "[A-Z]"){
            if($password -match "[a-z]"){
                $host.ui.RawUI.ForegroundColor = “Green”
                Write-Output("Password is strong")
                $host.ui.RawUI.ForegroundColor = $t
            }
            else{
                $host.ui.RawUI.ForegroundColor = “Red”
                Write-Output("weak password include lower case char")
                $host.ui.RawUI.ForegroundColor = $t
            }
        }
        else{
            $host.ui.RawUI.ForegroundColor = “Red”
            Write-Output("weak password include capital char")
            $host.ui.RawUI.ForegroundColor = $t
        }
    }
    else{
        $host.ui.RawUI.ForegroundColor = “Red”
        Write-Output("please include the numbers in password it is weak password")
        $host.ui.RawUI.ForegroundColor = $t
    }
}
else{
    $host.ui.RawUI.ForegroundColor = “Red”
    Write-Output("password lenght should be greater than or equal 10")
    $host.ui.RawUI.ForegroundColor = $t
}