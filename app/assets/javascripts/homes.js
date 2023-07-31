// const splashScreen = document.querySelector('.splash');

// window.addEventListener('onload',()=>{
//     const splashScreen = document.querySelector('.splash');
//     splashScreen.addEventListener('click',()=>{
//         splashScreen.style.opacity = 0;
//         setTimeout(()=>{
//             splashScreen.classList.add('.hidden')
//         },610)
//     })
// })

console.log("hello Splash");

function spl(){
   //   var spashScreen = document.querySelector('.splash');
    // const splashScreen=document.getElementsByClassName("splash"); 
    const splashScreen=document.getElementById("splash"); 
    splashScreen.style.opacity = 0;
    splashScreen.style.transition= 20;
    // splashScreen.style.display = 0;
    setTimeout(()=>{
        splashScreen.classList.add('hidden')
        },610)
}

// window.addEventListener('onload',()=>{
//     const sp = document.getElementById("splash");
//     sp.addEventListener('click',()=>{
//         spl();
//     })
// })

// window.addEventListener("onload",()=>{
//     function spl(){
//         // var spashScreen = document.querySelector('.splash');
//         const splashScreen=document.getElementsByClassName("splash"); 
//         splashScreen.style.opacity = 0;
//         splashScreen.classList.add('hidden');
//     }
// })


// spl();

// window.addEventListener("load",(event)=>{
//     console.log("Page is loaded successfully");
//     spl();
// })

// window.onload() = (event) =>{
//     console.log("Page is fully loaded");
//     spl();
// };

console.log("splash done");