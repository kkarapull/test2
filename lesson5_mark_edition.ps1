# git clone repo dir
# cd dir 

$tag = git describe

if ($tag.Length -gt 5) { 
    $new_ver = [int][String]$tag[4] + 1
    git tag -a "1.0.$new_ver" -m "comment"
    git push origin "1.0.$new_ver"
} else {
    "No changes"
}
# cd ../
# rm -rf dir
