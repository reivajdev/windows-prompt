function prompt {
    # Establecer el color del prompt en amarillo
    [Console]::ForegroundColor = "Yellow"

    # Obtener la fecha y hora actual
    $dateTime = Get-Date -Format "dd/MM/yyyy HH:mm"
    # Obtener el nombre del usuario y el nombre del equipo
    $user = $env:USERNAME
    $computer = $env:COMPUTERNAME
    # Obtener el directorio actual
    $cwd = (Get-Location).Path

    # Intentar obtener la rama actual de Git
    $gitBranch = ''
    if (Test-Path .git) {
        try {
            $branch = git branch --show-current 2>$null
            if ($branch) {
                $gitBranch = " (git:$branch$)"
            }
        } catch {
            # Si ocurre un error, no mostrar información de Git
        }
    }

    # Personalizar el prompt
    "┌($dateTime - $user@$computer) - [$cwd]$gitBranch`n└> "
}
clear
