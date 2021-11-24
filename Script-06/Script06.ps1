function  Count-files {
        param(
                # Parameter help description
                [Parameter(Mandatory, ValueFromPipeline )]
                [string]
                $Path
        )
        Process {
        $files = Get-ChildItem -path $path -Recurse -ErrorAction Ignore
        $count = 1
        $files.foreach( { $count++} )

        $count }

}
$directory =  Get-ChildItem  -Path "C:\" -Directory |  % { $_.FullName }
$directory.ForEach({ $_ | Count-files ; $_ })
