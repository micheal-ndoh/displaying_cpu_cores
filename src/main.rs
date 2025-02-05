mod pwd;
mod os;

use num_cpus;

fn main() {
    // Prints the current working directory
    pwd::Pwd::print_current_directory();

    // Creates an instance of Os and call the method
    let os_info = os::Os;
    os_info.print_os_name();

    // Prints the number of CPU cores
    let num_cores = num_cpus::get();
    println!("The Number of CPU cores in this machine is : {}", num_cores);
}