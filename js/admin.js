/**
 * 
 */
// allow password to visible 
function showPassword(){
   
    var password = document.getElementById("password");
    var rePassword = document.getElementById("re_password");

    if ((password.type === "password") || (rePassword === "password")){

        password.type = "text";
        rePassword.type = "text";
    }
    else {

        password.type = "password";
        rePassword.type = "password";
    }
}



function validatePasswords() {
    const password = document.getElementById("password").value;
    const rePassword = document.getElementById("re_password").value;
    
    if (password != rePassword) {
        alert("Passwords do not match. Please try again!");
        return false; // Prevent form submission
    }
    return true; // Allow form submission
 }	

 function confirmDelete() {
         return confirm("Do you want to delete this supplier?");
 }
