$key = 'x/y/z'
$object = '{"x":{"y":{"z":"a"}}}'

Function PrintValue($key, $object)
{
    
    if ($x.GetType().name -eq "String")
    {
        $output = $x
        Write-Host $output
    }
}

# Convert JSON to custom PSCustomObject object
$x = $object | ConvertFrom-Json

# Verify whether the key exists
$key.split('/') | ForEach-Object {
    if($x.$_)
    {
        $x = $x.$_
        PrintValue
    }
    else
    {
        Write-Error "Key not found"
    }
}
