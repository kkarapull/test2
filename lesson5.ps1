# git init C:\Users\user\lesson5_git
# cd C:\Users\user\lesson5_git
# git git@github.com:kkarapull/test2.git
# git clone https://github.com/kkarapull/test2.git 

# cd C:\Users\user\mygit  #мой репо был слит сюда заранее

$tag=git describe
Write-Output 'Current Tag is:', $tag

$index = [int][string]$tag[4]  
Write-Output 'Current Release index is:', $index

if ($tag.Length -gt 5) { 
    $index++
    $tag=$tag.Remove(4)+$index  
        
    # git push -u origin $tag  
    
        Write-Output 'new commits were done in Master, new Release index to be:', $index, 'new tag ', $tag, 'was pushed'

} else {
    Write-Output 'no changes were done'
}

#git rm C:\Users\user\lesson5_git