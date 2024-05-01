
mod cfg;

fn main() {    

    let tables = match cfg::Tables::new(|x:&str| {
        let full_path = "../GenerateDatas/json/".to_string() + x + ".json";
        println!("{}", full_path);
        json::parse(&match std::fs::read_to_string(&full_path) {
        Ok(content) => content,
        Err(_) => return Err(cfg::LoadError{}),
    }).or_else(|__e| {Err(cfg::LoadError{})})}) {
        Ok(t) => t,
        Err(_) => return
    };
    
    println!("Hello, world!, {}", tables.tbglobalconfig.get_data().bag_capacity);
    println!("item.{}", tables.tbitem.get(&1).unwrap().desc);
    println!("behavior:{}", tables.tbblackboard.get(&"attack_or_patrol".to_string()).unwrap().desc);
}
