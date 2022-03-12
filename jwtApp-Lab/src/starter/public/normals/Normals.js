import React, {useEffect, useState} from "react";
import db from "../../../db";

import Button from "react-bootstrap/Button";
import Table from "react-bootstrap/Table";
import Form from "react-bootstrap/Form";


export default function Normals() {
    const [normals, setNormals] = useState([]);

    useEffect(() => (async () => setNormals(await db.Normals.findAll()))(), []);


    const [id, setId] = useState(0);
    const [diagnosticId, setDiagnosticId] = useState(0);
    const [age, setAge] = useState(0);
    const [range, setRange] = useState('');


    const create = async () => {
        await db.Normals.create(setNormals, {diagnosticId, age, range})
        setId(0)
        setDiagnosticId(0)
        setAge(0)
        setRange('')
    }

    const remove = async id => await db.Normals.remove(setNormals, id)

    const edit = async id => {
        const Normal = await db.Normals.findOne(id)
        setId(Normal.id)
        setDiagnosticId(Normal.diagnosticId)
        setAge(Normal.age)
        setRange(Normal.range)
    }

    // update is step 2
    const update = async () => {
        await db.Normals.update(setNormals, {id, diagnosticId, age, range})
        setId(0)
        setDiagnosticId(0)
        setAge(0)
        setRange('')
    }

    const [validCreate, setValidCreate] = useState(false)
    useEffect(() => setValidCreate(
        diagnosticId > 0 &&
        age > 0
    ), [diagnosticId, age])

    const [validUpdate, setValidUpdate] = useState(false)
    useEffect(() => (async () => setValidUpdate(
        diagnosticId > 0 &&
        id > 0 &&
        age > 0 &&
        await db.Normals.findOne(id) !== undefined
    ))(), [id, diagnosticId, age])


    // const [validRemove, setValidRemove] = useState(false)
    // useEffect(() => (async () => setValidRemove(
    //     (await db.Diagnostics.findOne(normal.diagnosticId)).length === 0
    // ))(), [normal])
    return (
        <>
            <h1>Normals</h1>
            <Table>
                <thead>
                <tr>
                    <th>id</th>
                    <th>Diagnostic</th>
                    <th>Age</th>
                    <th>Range</th>
                    <th>Options</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setId(1 * event.target.value)}
                                      placeholder="Name" value={id}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setDiagnosticId(event.target.value)}
                                      placeholder="Name" value={diagnosticId}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setAge(event.target.value)}
                                      placeholder="Image" value={age}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setRange(event.target.value)}
                                      placeholder="Image" value={range}/>
                    </td>
                    <td>
                        <Button size="sm" variant="light" onClick={create} disabled={!validCreate}>Create</Button>
                        <Button size="sm" variant="light" onClick={update} disabled={!validUpdate}>Update</Button>
                    </td>
                </tr>
                {
                    normals.map(normal =>
                        <tr key={normal.id}>
                            <td>{normal.id}</td>
                            <td>{normal.diagnosticId}</td>
                            <td>{normal.age}</td>
                            <td>{normal.range}</td>
                            <td>
                                <Button size="sm" variant="light" onClick={() => remove(normal.id)} >X</Button>
                                <Button size="sm" variant="light" onClick={() => edit(normal.id)}>Edit</Button>
                            </td>
                        </tr>
                    )
                }
                </tbody>
            </Table>
        </>
    )
}