use std::path::PathBuf;
use cfg::prelude::*;
use lazy_static::lazy_static;

lazy_static!(
        static ref TABLES: Tables = {
            let tables = Tables::new(|name| {
                let path = PathBuf::from(format!("../GenerateDatas/json/{}.json", name));
                serde_json::from_str(std::fs::read_to_string(path).unwrap().as_str()).unwrap()
            });
            tables
        };
    );

#[test]
pub fn test_tables() {
    println!("{:?}", TABLES.TbItem.data_list[0].name)
}

#[test]
pub fn test_one_table() {
    println!("{:?}", TABLES.TbSingleton.data)
}

#[test]
pub fn test_list_table() {
    println!("{:?}", TABLES.TbNotIndexList.data_list);
    assert_eq!(TABLES.TbNotIndexList.data_list.len(), 5);
    let item = TABLES.TbNotIndexList.data_list[0].clone();
    assert_eq!(item.x, 1);
    assert_eq!(item.y, 2);
}

#[test]
pub fn test_union_key_table() {
    println!("{:?}", TABLES.TbMultiUnionIndexList);
    assert_eq!(TABLES.TbMultiUnionIndexList.data_list.len(), 11);
    let item = TABLES.TbMultiUnionIndexList.get(&(1, 1, "ab1".to_string())).unwrap();
    assert_eq!(item.num, 1);
    assert_eq!(item.desc, "desc1".to_string());
}

#[test]
pub fn test_multi_key_table() {
    println!("{:?}", TABLES.TbMultiIndexList);
    assert_eq!(TABLES.TbMultiIndexList.data_list.len(), 11);
    let item = TABLES.TbMultiIndexList.get_by_id1(&1).unwrap();
    assert_eq!(item.num, 1);
    assert_eq!(item.desc, "desc1".to_string());
}