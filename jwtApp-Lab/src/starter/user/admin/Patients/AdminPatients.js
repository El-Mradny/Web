import React, {useEffect, useState} from "react";
import db from "../../../../db";

export default function AdminPatients() {
    const [patients, setPatients] = useState([])

    const [id, setId] =useState(0);
    const [name, setName] = useState('');
    const [age, setAge] = useState(0);
    const [email, setEmail] = useState('');
    const [gender, setGender] = useState('');
    const [phone, setPhone] = useState('');
    const [note, setNote] = useState('');
    const [created, setCreated] = useState('');
    useEffect(() => (async () => setPatients(await db.Patients.findAll()))(), [])




    return(
        <>
            <h1>Welcome to Admin Patients</h1>
        </>
    )
}