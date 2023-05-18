// const test1 = function () {
//     return "test"
// }
// const test2 = function (f) {
//     return "test2"
// }
//
// function test3 () {
//     return "test3"
// }
//
// const a = 'str'
// const b = 1

let name = "hello"
let num = 2
name += " world"
num += 1
const arr = ['hello', 'world', 1, 2, 3]
console.log('arr', arr)
arr.push('push')
console.log('arr', arr)
arr.unshift('unshift')
console.log('arr str', arr)
arr.splice(2, 1,'rep')
console.log('arr str2', arr.join(','))
arr.splice(2, 1)
console.log('arr str3', arr.join(','))
console.log('arr str4', arr.slice(1, 3))
arr.reverse()
console.log('arr str5', arr)
const concatArr = arr.concat([111, 222])
console.log('arr str6', concatArr)

const newArr = arr.map(item => {
    return item + '3'
})
console.log('newArr', newArr)

arr.forEach(item => {
    console.log('forEach', item)
})

const arr2 = arr.filter(v => v !== 'hello')
console.log('filter', arr2)
console.log('includes', arr.includes('hello'))
console.log('indexOf', arr.indexOf('hello'))

arr.fill('h', 0, 1)
console.log('fill', arr)

const findIndex = arr.findIndex(item => item === 'hello')
console.log('findIndex', arr[findIndex])

const find = arr.find(item => item === 'hello')
console.log('find', find)

const shift = arr.shift()
console.log('shift', shift)

const pop = arr.pop()
console.log('pop', pop)

console.log('arr', arr)

console.log('every', arr.every(function (item) {
    return item === 'hello'
}))

console.log('arr', arr)
console.log('at0', arr.at(0))
console.log('at-1', arr.at(-2))

console.log('indexOf', arr.lastIndexOf('2', 3))

const cn = "cn3"
const obj = {
    "1": 3,
    "hh": '3',
    cn: 32,
    [cn]: [1,2,3,4],
}
console.log('obj', obj)
console.log('obj', obj[cn])
console.log('obj', obj['cn'])

//
// class Test {
//     constructor(number) {
//         this.number = number
//         this.str = 'hello'
//     }
//
//     inc () {
//         this.number++
//     }
//
//     dec () {
//         this.number--
//     }
//
//     destroy () {
//     }
//
//     get hello () {
//         return this.str
//     }
//
//     set hello (val) {
//         this.str += val
//     }
// }
//
// const test = new Test(1)
// const test2 = new Test(1)
// console.log('test', test.hello)
// console.log('test2', test2.hello)
// test.hello = 'World'
// test.dec()
// test2.inc()
// console.log('test', test.hello)
// console.log('test2', test2.hello)
// console.log('number1', test.number)
// console.log('number2', test2.number)
