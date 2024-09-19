
//Question 1 :  Write a Rust Program on printing the values assigned to
// different variables belongs to different data types.

fn main() {
   
     let num_variable=12;

     let  string_variable=String::from("hello world");

     let bool_variable =true;

     let float_variable=23.00;

     //struct data type 
     
     #[derive(Debug)]
     struct StructData{

        x:String
     }

     //enum 
     #[derive(Debug)]
     enum EnumData{

        SUCCESS
     }
    
     

    println!("num variable : {}",num_variable );
    println!("string variable : {}",string_variable );
    println!("float variable : {}",float_variable );
    println!("struct variable : {:?}",StructData{x:String::from("string value")} );
    println!("enum variable : {:?}",EnumData::SUCCESS);
    println!("bool variable : {:?}",bool_variable);
}
