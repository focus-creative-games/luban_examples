package main

import (
	"bright/serialization"
	"cfg"
	"fmt"
	"io/ioutil"
)

func loader(file string) (*serialization.ByteBuf, error) {
	if bytes, err := ioutil.ReadFile("./config_data/" + file) ; err != nil {
		return nil, err
	} else {
		return serialization.WrapByteBuf(bytes), nil
	}
}

func main() {
	if tables , err := cfg.NewTables(loader) ; err != nil {
		println(err.Error())
	} else {
		fmt.Printf("%v", tables.TbItemExtra)
	}


}
