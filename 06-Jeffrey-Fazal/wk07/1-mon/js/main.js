// Example API URL: https://www.googleapis.com/books/v1/volumes?q=title:Jaws
const baseURL = "https://www.googleapis.com/books/v1/volumes?q=title:"
// let search = `${baseURL}?q=title:${searchQuery}`

const fetchCover = function () {
    const xhr = new XMLHttpRequest ()
    searchQuery = document.getElementById('userinput')
    console.log('user searches')
    console.log(`https://www.googleapis.com/books/v1/volumes?q=title:${searchQuery}`)
    xhr.open ('GET', `baseURL + ${searchQuery}`)
    xhr.send ()
    xhr.onreadystatechange = function () {
        if (xhr.readyState !== 4){
            return
        }
        const data = JSON.parse(xhr.responseText)
        imgUrl = data.items[0].volumeInfo.imageLinks.thumbnail
        console.log(imgUrl) 

        const img = document.createElement('img');
        img.src = imgUrl
        document.getElementById('cover').appendChild(img);
    }
}
fetchCover();
a = document.getElementById('searchbutton').addEventListener('click', fetchCover);
