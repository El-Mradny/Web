import React, { useEffect, useState } from 'react'
import db from '../../../db'
import Table from 'react-bootstrap/Table';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import {Link} from "react-router-dom";
// import Tube from './Tube'

export default function Tubes() {

    const [tubes, setTubes] = useState([])
    const [id, setId] = useState(0)
    const [name, setName] = useState("")
    const [image, setImage] = useState('')

    useEffect(() => (async () => setTubes(await db.Tubes.findAll()))(), [])

    const create = async () => {
        await db.Tubes.create(setTubes, { name, image })
        setId(0)
        setName("")
        setImage('')
    }

    const remove = async id => await db.Tubes.remove(setTubes, id)

    const edit = async id => {
        const tube = await db.Tubes.findOne(id)
        setId(tube.id)
        setName(tube.name)
        setImage(tube.image)
    }

    // update is step 2
    const update = async () => {
        await db.Tubes.update(setTubes, { id, name, image })
        setId(0)
        setName("")
        setImage('')
    }

    const [validCreate, setValidCreate] = useState(false)
    useEffect(() => setValidCreate(
        name !== "" &&
        image !== ""
    ), [name, image])

    const [validUpdate, setValidUpdate] = useState(false)
    useEffect(() => (async () => setValidUpdate(
        name !== "" &&
        id > 0 &&
        image !== "" &&
        await db.Tubes.findOne(id) !== undefined
    ))(), [id, name, image])

    return (
        <div>
            <h1>Tubes</h1>
            <Table>
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Image</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setName(event.target.value)} placeholder="Name" value={name} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setImage(event.target.value)} placeholder="Image" value={image} />
                    </td>
                    <td>
                        <Button size="sm" variant="light" onClick={create} disabled={!validCreate}>Create</Button>
                        <Button size="sm" variant="light" onClick={update} disabled={!validUpdate}>Update</Button>
                    </td>
                </tr>
                {
                    tubes.map(tube =>
                        <tr key={tube.id}>
                        <td>{tube.name}</td>
                        <td><img src={tube.image} width={100} height={100} alt='Test tube'/></td>
                        <td>
                        <Button size="sm" variant="light" onClick={() => remove(tube.id)} >X</Button>
                        <Button size="sm" variant="light" onClick={() => edit(tube.id)}>Edit</Button>
                        <Button size="sm" variant="link" as={Link} to={`/tubedetail/${tube.id}`}>Details</Button>
                        </td>
                        </tr>
                    )
                }
                </tbody>
            </Table>
        </div >
    );
}