use std::path::PathBuf;
use lazy_static::lazy_static;
use serde_json::Value;
use cfg::prelude::*;

lazy_static!(
        pub static ref TABLES: Tables = {
            let tables = Tables::new(|name| {
                let path = PathBuf::from(format!("../GenerateDatas/json/{}.json", name));
                match serde_json::from_str::<Value>(std::fs::read_to_string(path).unwrap().as_str()){
                    Ok(t) => Ok(t),
                    Err(e) => Err(LubanError::Loader(format!("{}", e))),
                }
            });
            tables.expect("REASON")
        };
    );