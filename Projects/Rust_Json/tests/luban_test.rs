use Rust_json::TABLES;
use cfg::prelude::*;

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

#[test]
pub fn test_flags() {
    println!("{:?}", TABLES.TbDefineFromExcel2);
    let e = &TABLES.TbDefineFromExcel2.data_list[0].x13_2;
    assert!(e.is_empty());
    let e = &TABLES.TbDefineFromExcel2.data_list[1].x13_2;
    assert!(e.eq(&DemoFlag::from(DemoFlag::A | DemoFlag::B)));
}

#[test]
pub fn test_polymorphic() {
    let row = TABLES.TbFullTypes.get(&30).unwrap().clone();
    println!("{:?}", row);
    assert!(row.x14.is::<DemoD2>());
    let item: &dyn TDemoDynamic = row.x14.get_base().unwrap();
    assert_eq!(*item.get_x1(), 1);
}

#[test]
pub fn test_array(){
    let row = TABLES.TbFullTypes.data_list[0].clone();
    println!("{:?}", row.k1)
}