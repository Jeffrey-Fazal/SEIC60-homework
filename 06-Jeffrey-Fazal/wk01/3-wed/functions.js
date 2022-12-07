// calculate

const calculate = function (num1, num2, operation) {
    if (operation === 'add') {
        console.log(num1 + num2)
    } else if (opperation === 'sub') {
        console.log(num1 - num2)
    } else if (opperation === 'multi') {
        console.log(num1 * num2)
    } else if (opperation === 'div') {
        console.log(num1 / num2)
    } else if (opperation === 'exp') {
        console.log(num1 ^ num2)
    }
}

// helloIn
const helloEng = 'Hello'
const helloGerman = 'Hallo'
const helloPortuguese = 'Ola'
const helloFrench = 'Bonjour'
const helloDog = 'Woof'

const helloIn = function (language) {
    if (language === 'English')
        console.log(helloEng)
    else if (language === 'German') {
        console.log(helloGerman)
    } else if (language === 'Portuguese') {
        console.log(helloPortuguese)
    } else if (language === 'French') {
        console.log(helloFrench)
    }
    else if (language === 'Dog') {
        console.log(helloDog)
    }
    else {
        console.log(` Sorry, I don't speak ${language}`)
    }
}

helloIn('English')    // -> "Hello"
helloIn('German')     // -> "Hallo"
helloIn('Portuguese') // -> "Olá"
helloIn('French')     // -> "Bonjour"
helloIn('Dog')        // -> "Woof"

// leapYears 