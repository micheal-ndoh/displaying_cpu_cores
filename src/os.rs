use std::env;

pub struct Os;

impl Os {
    pub fn print_os_name(&self) {
        println!("Operating System name: {}", env::consts::OS);
    }
}