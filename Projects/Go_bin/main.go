package main

import (
	"fmt"
	"io/ioutil"
	"luban_examples/go_bin/bright/serialization"
	"luban_examples/go_bin/gen/cfg"
)

func loader(file string) (*serialization.ByteBuf, error) {
	if bytes, err := ioutil.ReadFile("../GenerateDatas/bin/" + file + ".bytes"); err != nil {
		return nil, err
	} else {
		return serialization.WrapByteBuf(bytes), nil
	}
}

func main() {
	if tables, err := cfg.NewTables(loader); err != nil {
		println(err.Error())
	} else {
		fmt.Printf("%v", tables.TbItemExtra)
	}

}
