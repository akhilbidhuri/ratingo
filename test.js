let a = (a, b) => {
    return new Promise(
        (resolve, reject)=>{
            setTimeout(resolve(true), 2000);
        }
    );
}


let r = await a();
console.log(r);