

async function getDATA_klient(){
 await fetch("http://localhost:3000/klient")
    
}


async function getDATA(){
    const data = await fetch("http://localhost:3000/kandydat")
    const json = await data.json()


    document.getElementById("kandydaci").innerHTML = ""
    for(i=0;i<=json.length-1;i++){
    //przyciski do glosu
    const button = document.createElement("button")
    button.innerHTML = json[i].Kandydaci
    button.setAttribute("class", "kandy")
    document.getElementById("kandydaci").appendChild(button)
    document.getElementById("h1_podajp").innerHTML = "Zagłosuj!!!"
}
}
async function d_pesel(){
    const input = parseInt(document.getElementById("pesel").value)
    await fetch(`http://localhost:3000/get/${input}`)
    getDATA_klient()
    console.log(input)
    getDATA()
}
async function klik(){
    
}