import React, {useEffect, useState} from "react";
import db from "../../../db";
import Table from "react-bootstrap/Table";
import Form from "react-bootstrap/Form";
import Button from "react-bootstrap/Button";
import {Link} from "react-router-dom";

export default function Diagnostics() {
    const [diagnostics, setDiagnostics] = useState([]);

    useEffect(() => (async () => setDiagnostics(await db.Diagnostics.findAll()))(), []);


    const [id, setId] = useState(0);
    const [name, setName] = useState('');
    const [category, setCategory] = useState('');
    const [requisite, setRequisite] = useState('');
    const [tubeId, setTubeId] = useState(0);
    const [price, setPrice] = useState(0);


    const create = async () => {
        await db.Diagnostics.create(setDiagnostics, {name, category, requisite, tubeId, price})
        setId(0)
        setName('')
        setCategory('')
        setRequisite('')
        setTubeId(0)
        setPrice(0)
    }

    const remove = async id => await db.Diagnostics.remove(setDiagnostics, id)

    const edit = async id => {
        const Diagnostic = await db.Diagnostics.findOne(id)
        setId(Diagnostic.id)
        setName(Diagnostic.name)
        setCategory(Diagnostic.category)
        setRequisite(Diagnostic.requisite)
        setTubeId(Diagnostic.tubeId)
        setPrice(Diagnostic.price)
    }

    // update is step 2
    const update = async () => {
        await db.Diagnostics.update(setDiagnostics, {id, name, category, requisite})
        setId(0)
        setName('')
        setCategory('')
        setRequisite('')
        setTubeId(0)
        setPrice(0)
    }

    const [validCreate, setValidCreate] = useState(false)
    useEffect(() => setValidCreate(
        name > 0 &&
        category > 0
    ), [name, category])

    const [validUpdate, setValidUpdate] = useState(false)
    useEffect(() => (async () => setValidUpdate(
        name > 0 &&
        id > 0 &&
        category > 0 &&
        await db.Diagnostics.findOne(id) !== undefined
    ))(), [id, name, category])


    // const [validRemove, setValidRemove] = useState(false)
    // useEffect(() => (async () => setValidRemove(
    //     (await db.Diagnostics.findOne(diagnostic.name)).length === 0
    // ))(), [diagnostic])
    return(
        <>
            <h1>Diagnostics</h1>
            <Table>
                <thead>
                <tr>
                    <th>id</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Requisite</th>
                    <th>Tube Id</th>
                    <th>Price</th>
                    <th>Options</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setId(1 * event.target.value)}
                                      placeholder="id" value={id}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setName(event.target.value)}
                                      placeholder="Name" value={name}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setCategory(event.target.value)}
                                      placeholder="Category" value={category}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setRequisite(event.target.value)}
                                      placeholder="requisite" value={requisite}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setTubeId(event.target.value)}
                                      placeholder="Tube Id" value={tubeId}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setPrice(event.target.value)}
                                      placeholder="price" value={price}/>
                    </td>
                    <td>
                        <Button size="sm" variant="light" onClick={create} disabled={!validCreate}>Create</Button>
                        <Button size="sm" variant="light" onClick={update} disabled={!validUpdate}>Update</Button>
                    </td>
                </tr>
                {
                    diagnostics.map(diagnostic =>
                        <tr key={diagnostic.id}>
                            <td>{diagnostic.id}</td>
                            <td>{diagnostic.name}</td>
                            <td>{diagnostic.category}</td>
                            <td>{diagnostic.requisite}</td>
                            <td>{diagnostic.tubeId}</td>
                            <td>{diagnostic.price}</td>
                            <td>
                                <Button size="sm" variant="light" onClick={() => remove(diagnostic.id)} >X</Button>
                                <Button size="sm" variant="light" onClick={() => edit(diagnostic.id)}>Edit</Button>
                                <Button size="sm" variant="link" as={Link} to={`/diagnosticdetail/${diagnostic.id}`}>Details</Button>
                            </td>
                        </tr>
                    )
                }
                </tbody>
            </Table>
        </>
    )
}