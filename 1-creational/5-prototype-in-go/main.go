package main

import "fmt"

func main() {
	file1 := &File{name: "File1"}
	file2 := &File{name: "File2"}
	file3 := &File{name: "File3"}

	folder1 := &Folder{
		children: []Inode{file1},
		name:     "Folder1",
	}

	folder2 := &Folder{
		children: []Inode{folder1, file2, file3},
		name:     "Folder2",
	}
	fmt.Println("\nPrinting hierarchy for Folder1")
	folder1.print("  ")
	fmt.Println("\nPrinting hierarchy for Folder2")
	folder2.print("  ")

	fmt.Println("--------------------------------")
	cloneFolder1 := folder1.clone()
	fmt.Println("\nPrinting hierarchy for clone Folder1")
	cloneFolder1.print("  ")

	cloneFolder2 := folder2.clone()
	fmt.Println("\nPrinting hierarchy for clone Folder2")
	cloneFolder2.print("  ")
}
