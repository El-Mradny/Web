import React, { useEffect, useState } from 'react'
import db from '../../../db'
import Table from 'react-bootstrap/Table';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import Patient from './Patient';


export default function Patients() {

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

    const create = async () => {
        await db.Patients.create(setPatients, { name, age, email, gender,phone,note,created })
        setId(0)
        setName("")
        setAge(0)
        setEmail('')
        setGender('')
        setPhone('')
        setNote('')
        setCreated('')
    }

    const remove = async id => await db.Patients.remove(setPatients, id)

    const edit = async id => {
        const patient = await db.Patients.findOne(id)
        setId(patient.id)
        setName(patient.name)
        setAge(patient.age)
        setEmail(patient.email)
        setGender(patient.gender)
        setPhone(patient.phone)
        setNote(patient.note)
        setCreated(patient.created)
    }

    // update is step 2
    const update = async () => {
        await db.Patients.update(setPatients, { id, name, age, email, gender,phone,note,created })
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

    const [validUpdate, setValidUpdate] = useState(false)
    useEffect(() => (async () => setValidUpdate(
        name !== "" &&
        id > 0 &&
        gender !== "" &&
        phone !== "" &&
        age > 0 &&
    await db.Patients.findOne(id) !== undefined
    ))(), [id, name, gender, phone, age])

    return (
        <div>
            <h1>Patients</h1>
            <Table>
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Phone</th>
                    <th>note</th>
                    <th>options</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setId(event.target.value)} placeholder="Name" value={id} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setName(event.target.value)} placeholder="Name" value={name} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setEmail(event.target.value)} placeholder="email" value={email} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setGender(event.target.value)} placeholder="gender" value={gender} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setAge(1 * event.target.value)} placeholder="age" value={age} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setPhone(event.target.value)} placeholder="phone" value={phone} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setNote(event.target.value)} placeholder="note" value={note} />
                    </td>

                    <td>
                        <Button size="sm" variant="light" onClick={create} disabled={!validCreate}>Create</Button>
                        <Button size="sm" variant="light" onClick={update} disabled={!validUpdate}>Update</Button>
                    </td>
                </tr>
                {
                    patients.map(patient =>
                        <Patient key={patient.id} patient={patient} edit={edit} remove={remove} />
                    )
                }
                </tbody>
            </Table>
        </div >
    );
}