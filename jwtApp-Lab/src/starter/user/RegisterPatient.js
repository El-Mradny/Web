import React, {useEffect, useState} from "react";
import db from "../../db";
import Form from "react-bootstrap/Form";
import Button from "react-bootstrap/Button";


export default function RegisterPatient() {
    const [patients, setPatients] = useState([])


    const [id, setId] = useState(0);
    const [name, setName] = useState('');
    const [age, setAge] = useState(0);
    const [email, setEmail] = useState('');
    const [gender, setGender] = useState('');
    const [phone, setPhone] = useState('');
    const [note, setNote] = useState('');
    const [created, setCreated] = useState('');

    useEffect(() => (async () => setPatients(await db.Patients.findAll()))(), [])

    const create = async () => {
        await db.Patients.create(setPatients, {name, age, email, gender, phone, note, created})
        setId(0)
        setName("")
        setAge(0)
        setEmail('')
        setGender('')
        setPhone('')
        setNote('')
        setCreated('')
    }

    const [validCreate, setValidCreate] = useState(false)
    useEffect(() => setValidCreate(
        name !== "" &&
        gender !== "" &&
        phone !== "" &&
        age > 0
    ), [name, age, gender, phone])


    return (
        <>
            <Form.Group className="mb-3">
                <Form.Label htmlFor="id">Id</Form.Label>
                <Form.Control id='id' type="number" onChange={event => setId(1 * event.target.value)} placeholder="Id"
                              value={id}/>
            </Form.Group>

            <Form.Group className="mb-3">
                <Form.Label htmlFor="name">Name</Form.Label>
                <Form.Control id="name" type="text" onChange={event => setName(event.target.value)} placeholder="Name"
                              value={name}/>
            </Form.Group>
            <Form.Group className="mb-3">
                <Form.Label htmlFor="email">Email</Form.Label>
                <Form.Control id="email" type="text" onChange={event => setEmail(event.target.value)} placeholder="email"
                              value={email}/>
            </Form.Group>
            <Form.Group className="mb-3">
                <Form.Label htmlFor="gender">Gender</Form.Label>
                <Form.Check type="radio" value="Male" name='gender' label='Male' check={event => setGender(event.target.value)} />
                <Form.Check type="radio" value="Female" name='gender' label='Female' check={event => setGender(event.target.value)} />
                <Form.Check type="radio" value="Child" name='gender' label='Child' check={event => setGender(event.target.value)}/>
                <Form.Control id="gender" type="text" onChange={event => setGender(event.target.value)}
                              placeholder="gender"
                              value={gender}/>
            </Form.Group>
            <Form.Group className="mb-3">
                <Form.Label htmlFor="age">Age</Form.Label>
                <Form.Control id="age" type="number" onChange={event => setAge(1 * event.target.value)}
                              placeholder="age"
                              value={age}/>
            </Form.Group>
            <Form.Group className="mb-3">
                <Form.Label htmlFor="phone">Phone</Form.Label>
                <Form.Control id="phone" type="text" onChange={event => setPhone(event.target.value)} placeholder="phone"
                              value={phone}/>
            </Form.Group>
            <Form.Group className="mb-3">
                <Form.Label htmlFor="note">Note</Form.Label>
                <Form.Control id="note" type="text" onChange={event => setNote(event.target.value)} placeholder="note"
                              value={note}/>
            </Form.Group>

            <Button onClick={create} disabled={!validCreate}>Add</Button>

        </>
    )


}