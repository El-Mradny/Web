const calculateAge = birthdate =>
    Math.floor((new Date().getTime() - birthdate.getTime()) / (1000 * 60 * 60 * 24 * 365.25));



const getJwtUser = () => sessionStorage.getItem("jwtUser") ? JSON.parse(sessionStorage.getItem("jwtUser")) : null
const setJwtUser = user => user ? sessionStorage.setItem("jwtUser", JSON.stringify(user)) : sessionStorage.removeItem("jwtUser")

const authFetch = (url, options) => {
    const jwtUser = getJwtUser()
    if (jwtUser) {
        options = options || {}
        options.headers = options.headers || {}
        options.headers.Authorization = `Bearer ${jwtUser.token}`
    }
    return fetch(url, options)
}

const uploadImage = async (imageFile, name) => {
    console.log('imageFile object', imageFile)
    const body = new FormData()
    body.append('file', imageFile, name)
    const result = await authFetch('/images', {
        method: 'POST',
        body
    })
    console.log('uploadImage result', result)
    return result
}

const email = async (to, subject, text) => {
    const result = await fetch('/email', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ to, subject, text })
    })
    console.log('email result', result)
    return result
}

class DB {

    constructor(data) {
        this.id = 1
        this.data = []
        if (data) {
            data.map(item => this.create(() => { }, item))
        }
    }

    create(set, item) {
        // all data is auto-increment id
        item.id = this.id
        this.id++
        this.data = [...this.data, item]
        set(this.data)
    }

    remove(set, id) {
        this.data = this.data.filter(item => item.id !== id)
        set(this.data)
    }

    update(set, newItem) {
        this.data = this.data.map(item => item.id === newItem.id ? newItem : item)
        set(this.data)
    }

    findAll() {
        return this.data
    }

    findOne(id) {
        return this.data.find(item => item.id === id)
    }
}

// subclass Persons is like DB but much more specific
class Patients extends DB {

    // constructor(data) {
    //     super(data)
    // }

    findByName(name) {
        return this.data.filter(item => item.name.includes(name))
    }

    findByAgeMinMax(min, max) {
        return this.data.filter(item => calculateAge(item.birthdate) >= min && calculateAge(item.birthdate) <= max)
    }
}

// subclass Pets is like DB but much more specific
// class Pets extends DB {
//
//     // constructor(data) {
//     //     super(data)
//     // }
//
//     findByPersonId(personId) {
//         return this.data.filter(item => item.personId === personId)
//     }
//
//     findByType(type) {
//         return this.data.filter(item => item.type === type)
//     }
//
//     findDistinctTypes() {
//         return [...new Set(this.data.map(item => item.type))]
//     }
// }

class Physicians extends DB {

    // constructor(data) {
    //     super(data)
    // }

    findByName(name) {
        return this.data.filter(item => item.name.includes(name))
    }


}

class Carts extends DB {

    // constructor(data) {
    //     super(data)
    // }

    findByName(name) {
        return this.data.filter(item => item.name.includes(name))
    }

    findByPatient(patient) {
        console.log(patient)
        return this.data.filter(item => item.patient === patient)
    }


}

class Cartitems extends DB {

    // constructor(data) {
    //     super(data)
    // }

    findByName(name) {
        return this.data.filter(item => item.name.includes(name))
    }

    findByCartId(cart) {
        return this.data.filter(item => item.cartId === cart)
    }


}

class Diagnostics extends DB {

    // constructor(data) {
    //     super(data)
    // }

    findByName(name) {
        return this.data.filter(item => item.name.includes(name))
    }


}

class Discounts extends DB {

    // constructor(data) {
    //     super(data)
    // }

    findByName(name) {
        return this.data.filter(item => item.name.includes(name))
    }


}

class Normals extends DB {

    // constructor(data) {
    //     super(data)
    // }

    findByName(name) {
        return this.data.filter(item => item.name.includes(name))
    }


}

class Representatives extends DB {

    // constructor(data) {
    //     super(data)
    // }

    findByName(name) {
        return this.data.filter(item => item.name.includes(name))
    }


}

class Tubes extends DB {

    // constructor(data) {
    //     super(data)
    // }

    findByName(name) {
        return this.data.filter(item => item.name.includes(name))
    }


}

const db = {

    getJwtUser,
    setJwtUser,
    uploadImage,
    email,
    Patients: new Patients([
        { id: 1, name: "Joe", email: 'joe@joe.com', age: 24 },
        { id: 2, name: "Ann", email:'ann@ann.com', age: 34 },
        { id: 3, name: "Fred", email:'fred@fred.com', age: 25 },
        { id: 4, name: "Mezo", email:'mezo@mezo.com', age: 37 }
    ]),
    Physicians: new Physicians([
        { id: 1, name: "Fido", speciality: "ENT", address:'Cairo', note: 'some special notes' },
        { id: 2, name: "Kojo", speciality: "GYN", address:'Tanta', note: 'some alue but never used' },
        { id: 3, name: "dogo", speciality: "HE", address:'Alex', note: 'some special notes' },
        { id: 4, name: "teso", speciality: "ENT", address:'cairo', note: 'some special notes' }
    ]),
    Representatives: new Representatives([
        { id: 1, name: "Fido", speciality: "ENT", address:'Cairo', note: 'some special notes' },
        { id: 2, name: "Kojo", speciality: "GYN", address:'Tanta', note: 'some alue but never used' },
        { id: 3, name: "dogo", speciality: "HE", address:'Alex', note: 'some special notes' },
        { id: 4, name: "teso", speciality: "ENT", address:'cairo', note: 'some special notes' }
    ]),
    Tubes: new Tubes([
        { id: 1, name: "ESR", image:'https://www.hinotek.com/wp-content/uploads/087b5f76-a458-48bb-a01d-3a62f9e57dd0.jpg' },
        { id: 2, name: "EDTA", image:'https://www.toggar.com/uploads/original_images/1566972230_747084.jpg' },
        { id: 3, name: "GEL", image:'https://sc04.alicdn.com/kf/Hb3d71cafb5444988918b9b15f8b6887f1.jpg' },
        { id: 4, name: "teso", image:'https://previews.123rf.com/images/karich/karich1712/karich171200029/92167256-provetta-con-campione-di-sangue-isolato-su-bianco-.jpg' }
    ]),
    Diagnostics: new Diagnostics([
        { id: 1, name: "Fido", category: "ENT", requisite:'Cairo', tubeId: 1, price: 90},
        { id: 2, name: "Kojo", category: "GYN", requisite:'Tanta', tubeId: 1, price: 80 },
        { id: 3, name: "dogo", category: "HE", requisite:'Alex', tubeId: 1, price: 60 },
        { id: 4, name: "teso", category: "ENT", requisite:'cairo', tubeId: 1, price: 70 }
    ]),
    Carts: new Carts([
        { id: 1, patient: 1, physician: 1, rep: 1, total: 250, discount: '', status:'open', created:'', updated: '' },
        { id: 2, patient: 2, physician: 2, rep: 2, total: 400, discount: '', status:'open', created:'', updated: '' },
        { id: 3, patient: 3, physician: 3, rep: 3, total: 550, discount: '', status:'open', created:'', updated: '' },
        { id: 4, patient: 4, physician: 4, rep: 4, total: 320, discount: '', status:'open', created:'', updated: '' }
    ]),
    Cartitems: new Cartitems([
        { id: 1, cartId: 1, diagnostic: 1, result:'Cairo', updated: 'some special notes' },
        { id: 2, cartId: 1, diagnostic: 2, result:'Tanta', updated: 'some alue but never used' },
        { id: 3, cartId: 1, diagnostic: 3, result:'Alex', updated: 'some special notes' },
        { id: 4, cartId: 1, diagnostic: 4, result:'cairo', updated: 'some special notes' },
        { id: 5, cartId: 2, diagnostic: 1, result:'Cairo', updated: 'some special notes' },
        { id: 6, cartId: 2, diagnostic: 2, result:'Tanta', updated: 'some alue but never used' },
        { id: 7, cartId: 3, diagnostic: 3, result:'Alex', updated: 'some special notes' },
        { id: 8, cartId: 3, diagnostic: 4, result:'cairo', updated: 'some special notes' },
        { id: 10, cartId: 3, diagnostic: 1, result:'Cairo', updated: 'some special notes' },
        { id: 11, cartId: 4, diagnostic: 2, result:'Tanta', updated: 'some alue but never used' },
        { id: 12, cartId: 4, diagnostic: 3, result:'Alex', updated: 'some special notes' },
        { id: 13, cartId: 4, diagnostic: 4, result:'cairo', updated: 'some special notes' },
    ]),
    Discounts: new Discounts([
        { id: 1, value: "Fido", start: "ENT", end:'Cairo', tube: 1 ,description : 'some special notes' },
        { id: 2, value: "Kojo", start: "GYN", end:'Tanta', tube: 1 ,description : 'some alue but never used' },
        { id: 3, value: "dogo", start: "HE", end:'Alex', tube: 1 ,description : 'some special notes' },
        { id: 4, value: "teso", start: "ENT", end:'cairo', tube: 1 ,description : 'some special notes' }
    ]),
    Normals: new Normals([
        { id: 1, diagnosticId: 1, age: 1, range:'Cairo' },
        { id: 2, diagnosticId: 1, age: 7, range:'Cairo' },
        { id: 3, diagnosticId: 1, age: 15, range:'Cairo' },
        { id: 4, diagnosticId: 2, age: null, range:'36-54ul' },

    ])
}

export default db