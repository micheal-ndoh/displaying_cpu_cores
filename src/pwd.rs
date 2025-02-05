use std::env;

pub struct Pwd;

impl Pwd {
    pub fn print_current_directory() {
        let path = env::current_dir().unwrap();
        println!("current working directory is : {}", path.display());
    }
}