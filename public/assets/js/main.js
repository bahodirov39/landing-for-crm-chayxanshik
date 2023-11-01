




// HAMBURGER BTN 
let btn_for_menu = document.querySelector(".btn__for_menu"),
    hamburger = document.querySelector(".hamburger"),
    navbar__nav = document.querySelector(".navbar__nav"),
    links = document.querySelectorAll(".navbar__nav a");

btn_for_menu.onclick=()=>{
    hamburger.classList.toggle("ate_hamburger")
    navbar__nav.classList.toggle("links_in_menu")
}
links.forEach(ele =>{
    ele.onclick = ()=>{
        setTimeout(()=>{
            hamburger.classList.remove("ate_hamburger")
            navbar__nav.classList.remove("links_in_menu")
        }, 500)
    }
})

// LOCATION FUNCTION 
/*
const wrapper = document.querySelector(".wrapper"),
      selectBtn = wrapper.querySelector(".select_btn"),
      searchInp = wrapper.querySelector("input"),
      options = wrapper.querySelector(".options");

let loc_in_Tashkent = [
    "Chayxanshik Чиланзар",
    "Chayxanshik Чиланзар1",
    "Chayxanshik Чиланзар2",
    "Chayxanshik Чиланзар3",
    "Chayxanshik Чиланзар4",
    "Chayxanshik Чиланзар5",
];

function addCountry(select_in) {
    options.innerHTML = "";
    loc_in_Tashkent.forEach(in_T => {
        let isSelected = in_T == select_in ? "selected" : "";
        let li = `<li onclick="updateName(this)" class="${isSelected}">${in_T}</li>`;
        options.insertAdjacentHTML("beforeend", li);
    });
}
addCountry();

function updateName(selectedLi) {
    searchInp.value = "";
    addCountry(selectedLi.innerText);
    wrapper.classList.remove("active");
    selectBtn.firstElementChild.innerText = selectedLi.innerText;
}

searchInp.addEventListener("keyup", () => {
    let arr = [];
    let searchWord = searchInp.value.toLowerCase();
    arr = loc_in_Tashkent.filter(data => {
        return data.toLowerCase().startsWith(searchWord);
    }).map(data => {
        let isSelected = data == selectBtn.firstElementChild.innerText ? "selected" : "";
        return `<li onclick="updateName(this)" class="${isSelected}">${data}</li>`;
    }).join("");
    options.innerHTML = arr ? arr : `<p style="margin-top: 10px;">Topilmadi!</p>`;
});

selectBtn.addEventListener("click", () => wrapper.classList.toggle("active"));
*/