do {
    $startingNbr = Read-Host -Prompt 'Please enter starting number'
    $startingNbr = $startingNbr -as [Double]
    $ok = $startingNbr -ne $NULL
    if ( -not $ok ) { Write-Host "You must enter a numeric value." }
}
until ( $ok )

if (-Not (Test-Path -Path src)) {
    $pathNotFoundError = "SRC folder not found. Please navigate to the root folder of the project."
    Throw $pathNotFoundError
}
else {
    Set-Location src
}

if (Test-Path -Path .\codeunit) {
    Write-Host "Renaming codeunits.."
    Set-Location .\codeunit

    $nbr = $startingNbr

    Get-ChildItem  -Filter *.al |
        ForEach-Object {
        $oldBaseName = $_.BaseName
        $noPrefixName = $oldBaseName.Split('.')[1]
        $newBaseName = "Cod" + $nbr + "." + $noPrefixName

        Write-Host($newBaseName)

        Rename-Item -Path $_.FullName -NewName "$($_.DirectoryName)\$($newBaseName)$($_.Extension)"
        $nbr++
    }
    Set-Location ..

}
else {
    Write-Host "Codeunit folder not found. Skipping"
}

if (Test-Path -Path .\page) {
    Write-Host "`nRenaming pages.."
    Set-Location .\page

    $nbr = $startingNbr

    Get-ChildItem  -Filter *.al |
        ForEach-Object {
        $oldBaseName = $_.BaseName
        $noPrefixName = $oldBaseName.Split('.')[1]
        $newBaseName = "Pag" + $nbr + "." + $noPrefixName

        Write-Host($newBaseName)

        Rename-Item -Path $_.FullName -NewName "$($_.DirectoryName)\$($newBaseName)$($_.Extension)"
        $nbr++
    }
    Set-Location ..

}
else {
    Write-Host "Pages folder not found. Skipping"
}

if (Test-Path -Path .\pageextension) {
    Write-Host "`nRenaming page-extensions.."
    Set-Location .\pageextension

    $nbr = $startingNbr

    Get-ChildItem  -Filter *.al |
        ForEach-Object {
        $oldBaseName = $_.BaseName
        $noPrefixName = $oldBaseName.Split('.')[1]
        $newBaseName = "Pag-Ext" + $nbr + "." + $noPrefixName

        Write-Host($newBaseName)

        Rename-Item -Path $_.FullName -NewName "$($_.DirectoryName)\$($newBaseName)$($_.Extension)"
        $nbr++
    }
    Set-Location ..

}
else {
    Write-Host "Page-extensions folder not found. Skipping"
}

if (Test-Path -Path .\table) {
    Write-Host "`nRenaming tables.."
    Set-Location .\table

    $nbr = $startingNbr

    Get-ChildItem  -Filter *.al |
        ForEach-Object {
        $oldBaseName = $_.BaseName
        $noPrefixName = $oldBaseName.Split('.')[1]
        $newBaseName = "Tab" + $nbr + "." + $noPrefixName

        Write-Host($newBaseName)

        Rename-Item -Path $_.FullName -NewName "$($_.DirectoryName)\$($newBaseName)$($_.Extension)"
        $nbr++
    }
    Set-Location ..

}
else {
    Write-Host "Tables folder not found. Skipping"
}

if (Test-Path -Path .\tableextension) {
    Write-Host "`nRenaming table-extensions.."
    Set-Location .\tableextension

    $nbr = $startingNbr

    Get-ChildItem  -Filter *.al |
        ForEach-Object {
        $oldBaseName = $_.BaseName
        $noPrefixName = $oldBaseName.Split('.')[1]
        $newBaseName = "Tab-Ext" + $nbr + "." + $noPrefixName

        Write-Host($newBaseName)

        Rename-Item -Path $_.FullName -NewName "$($_.DirectoryName)\$($newBaseName)$($_.Extension)"
        $nbr++
    }
    Set-Location ..

}
else {
    Write-Host "Query folder not found. Skipping"
}

if (Test-Path -Path .\query) {
    Write-Host "`nRenaming queries.."
    Set-Location .\query

    $nbr = $startingNbr

    Get-ChildItem  -Filter *.al |
        ForEach-Object {
        $oldBaseName = $_.BaseName
        $noPrefixName = $oldBaseName.Split('.')[1]
        $newBaseName = "Que" + $nbr + "." + $noPrefixName

        Write-Host($newBaseName)

        Rename-Item -Path $_.FullName -NewName "$($_.DirectoryName)\$($newBaseName)$($_.Extension)"
        $nbr++
    }
    Set-Location ..

}
else {
    Write-Host "Query folder not found. Skipping"
}

if (Test-Path -Path .\report) {
    Write-Host "`nRenaming reports.."
    Set-Location .\report

    $nbr = $startingNbr

    Get-ChildItem  -Filter *.al |
        ForEach-Object {
        $oldBaseName = $_.BaseName
        $noPrefixName = $oldBaseName.Split('.')[1]
        $newBaseName = "Rep" + $nbr + "." + $noPrefixName

        Write-Host($newBaseName)

        Rename-Item -Path $_.FullName -NewName "$($_.DirectoryName)\$($newBaseName)$($_.Extension)"
        $nbr++
    }
    Set-Location ..

}
else {
    Write-Host "Report folder not found. Skipping"
}

Set-Location ..