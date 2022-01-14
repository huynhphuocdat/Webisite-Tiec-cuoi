/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function addToCart(id, name, price){
    event.preventDefault()
    fetch("/Wedding/api/cart",{
        method: 'post',
        body: JSON.stringify({
            "productId": id,
            "productName": name,
            "price": price,
            "quantity": 1
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function(res){
        return res.json()
    }).then(function(data){
        let counter = document.getElementById("cartCounter")
        counter.innerText = data
    })
}

function updateCart(obj, productId){
    fetch("/Wedding/api/cart", {
        method: 'put',
        body: JSON.stringify({
            "productId": productId,
            "productName": "",
            "price": 0,
            "quantity": obj.value
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function(res){
            return res.json()
    }).then(function(data){
            let counter = document.getElementById("cartCounter")
            counter.innerText = data.counter
            let amount = document.getElementById("amountCart")
            amount.innerText = data.amount
    })
}
    


function deleteCart(productId) {
    if (confirm("Bạn chắc chắn xóa mặt hàng này không?") == true) {
        fetch(`/Wedding/api/cart/${productId}`, {
            method: 'delete'
        }).then(function(res) {
            return res.json()
        }).then(function(data) {
            let counter = document.getElementById("cartCounter")
            counter.innerText = data.counter
            let amount = document.getElementById("amountCart")
            amount.innerText = data.amount
            location.reload()
        }) 
    }
}