package main

import (
	"demo/gen"
	"encoding/json"
	"fmt"
	"io/ioutil"
)

func loader(file string) ([]map[string]interface{}, error) {
	if bytes, err := ioutil.ReadFile("../GenerateDatas/json/" + file + ".json"); err != nil {
		return nil, err
	} else {
		jsonData := make([]map[string]interface{}, 0)
		if err = json.Unmarshal(bytes, &jsonData); err != nil {
			return nil, err
		}
		return jsonData, nil
	}
}

func main() {
	cfg.ItemTbItemLoader = ItemTbItemLoader
	cfg.ItemTbItemPostLoader = ItemTbItemPostLoader
	if tables, err := cfg.NewTables(loader); err != nil {
		println(err.Error())
	} else {
		fmt.Printf("%v", tables.TbItem.GetDataList()[0])
	}

}

func ItemTbItemLoader(data *cfg.ItemItem) {
	fmt.Println("item", data.Id, "loaded")
}

func ItemTbItemPostLoader(datas []*cfg.ItemItem) {
	fmt.Println(len(datas), "items loaded")
}
