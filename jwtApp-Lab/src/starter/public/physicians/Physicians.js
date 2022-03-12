import React, {useEffect, useState} from "react";
import db from "../../../db";
import Button from "react-bootstrap/Button";
import Table from "react-bootstrap/Table";
import Form from "react-bootstrap/Form";
import {Link} from "react-router-dom";

export default function Physicians() {
    const [physicians, setPhysicians] = useState([]);

    useEffect(() => (async () => setPhysicians(await db.Physicians.findAll()))(), []);




    const [id, setId] = useState(0);
    const [name, setName] = useState('');
    const [speciality, setSpeciality] = useState('');
    const [address, setAddress] = useState('');
    const [note, setNote] = useState('');

    const create = async () => {
        await db.Physicians.create(setPhysicians, {name, speciality, address, note})
        setId(0)
        setName('')
        setSpeciality('')
        setAddress('')
        setNote('')
    }

    const remove = async id => await db.Physicians.remove(setPhysicians, id)

    const edit = async id => {
        const Physician = await db.Physicians.findOne(id)
        setId(Physician.id)
        setName(Physician.name)
        setSpeciality(Physician.speciality)
        setAddress(Physician.address)
        setNote(Physician.note)
    }

    // update is step 2
    const update = async () => {
        await db.Physicians.update(setPhysicians, {id, name, speciality, address, note})
        setId(0)
        setName('')
        setSpeciality('')
        setAddress('')
        setNote('')
    }

    const [validCreate, setValidCreate] = useState(false)
    useEffect(() => setValidCreate(
        name !== "" &&
        speciality !== ''
    ), [name, speciality])

    const [validUpdate, setValidUpdate] = useState(false)
    useEffect(() => (async () => setValidUpdate(
        name !== "" &&
        id > 0 &&
        speciality !== '' &&
        await db.Physicians.findOne(id) !== undefined
    ))(), [id, name, speciality])


    // const [validRemove, setValidRemove] = useState(false)
    // useEffect(() => (async () => setValidRemove(
    //     (await db.Carts.findByPhysicianid(physician.id)).length === 0
    // ))(), [physician])

    return (
        <>
            <h1>Physicians</h1>
            <Table>
                <thead>
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>speciality</th>
                    <th>address</th>
                    <th>note</th>
                    <th>Options</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setId(1 * event.target.value)} placeholder="Name" value={id} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setName(event.target.value)} placeholder="Name" value={name} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setSpeciality(event.target.value)} placeholder="Image" value={speciality} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setAddress(event.target.value)} placeholder="Image" value={address} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setNote(event.target.value)} placeholder="Image" value={note} />
                    </td>
                    <td>
                        <Button size="sm" variant="light" onClick={create} disabled={!validCreate}>Create</Button>
                        <Button size="sm" variant="light" onClick={update} disabled={!validUpdate}>Update</Button>
                    </td>
                </tr>
                {
                    physicians.map(physician =>
                        <tr key={physician.id}>
                            <td>{physician.id}</td>
                            <td>{physician.name}</td>
                            <td>{physician.speciality}</td>
                            <td>{physician.address}</td>
                            <td>{physician.note}</td>
                            <td>
                                {/*<Button size="sm" variant="light" onClick={() => remove(physician.id)} disabled={!validRemove}>X</Button>*/}
                                <Button size="sm" variant="light" onClick={() => remove(physician.id)} >X</Button>
                                <Button size="sm" variant="light" onClick={() => edit(physician.id)}>Edit</Button>
                                <Button size="sm" variant="link" as={Link} to={`/physiciandetail/${physician.id}`}>Details</Button>

                            </td>
                        </tr>
                    )
                }
                </tbody>
            </Table>
        </>
    )
}