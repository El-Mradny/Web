import React, {useEffect, useState} from "react";
import db from "../../../db";
import Table from "react-bootstrap/Table";
import Form from "react-bootstrap/Form";
import Button from "react-bootstrap/Button";
import {Link} from "react-router-dom";

export default function Discounts() {

    const [discounts, setDiscounts] = useState([]);

    useEffect(() => (async () => setDiscounts(await db.Discounts.findAll()))(), []);


    const [id, setId] = useState(0);
    const [value, setValue] = useState(0);
    const [start, setStart] = useState('');
    const [end, setEnd] = useState('');
    const [publish, setPublish] = useState('');
    const [description, setDescription] = useState('');
    const [code, setCode] = useState('');


    const create = async () => {
        await db.Discounts.create(setDiscounts, {value, start, end, publish, description, code})
        setId(0)
        setValue(0)
        setStart('')
        setEnd('')
        setPublish('')
        setDescription('')
        setCode('')
    }

    const remove = async id => await db.Discounts.remove(setDiscounts, id)

    const edit = async id => {
        const Discount = await db.Discounts.findOne(id)
        setId(Discount.id)
        setValue(Discount.value)
        setStart(Discount.start)
        setEnd(Discount.end)
        setPublish(Discount.publish)
        setDescription(Discount.description)
        setCode(Discount.code)
    }

    // update is step 2
    const update = async () => {
        await db.Discounts.update(setDiscounts, {id, value, start, end, publish, description, code})
        setId(0)
        setValue(0)
        setStart('')
        setEnd('')
        setPublish('')
        setDescription('')
        setCode('')
    }

    const [validCreate, setValidCreate] = useState(false)
    useEffect(() => setValidCreate(
        value > 0 &&
        start > 0
    ), [value, start])

    const [validUpdate, setValidUpdate] = useState(false)
    useEffect(() => (async () => setValidUpdate(
        value > 0 &&
        id > 0 &&
        start > 0 &&
        await db.Discounts.findOne(id) !== undefined
    ))(), [id, value, start])
    return(
        <>
            <h1>Discounts</h1>
            <Table>
                <thead>
                <tr>
                    <th>id</th>
                    <th>Value</th>
                    <th>Start</th>
                    <th>End</th>
                    <th>Publish</th>
                    <th>Description</th>
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
                        <Form.Control size="sm" type="text" onChange={event => setValue(event.target.value)}
                                      placeholder="Value" value={value}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setStart(event.target.value)}
                                      placeholder="Start" value={start}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setEnd(event.target.value)}
                                      placeholder="end" value={end}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setPublish(event.target.value)}
                                      placeholder="publish" value={publish}/>
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setDescription(event.target.value)}
                                      placeholder="description" value={description}/>
                    </td>
                    <td>
                        <Button size="sm" variant="light" onClick={create} disabled={!validCreate}>Create</Button>
                        <Button size="sm" variant="light" onClick={update} disabled={!validUpdate}>Update</Button>
                    </td>
                </tr>
                {
                    discounts.map(discount =>
                        <tr key={discount.id}>
                            <td>{discount.id}</td>
                            <td>{discount.value}</td>
                            <td>{discount.start}</td>
                            <td>{discount.end}</td>
                            <td>{discount.publish}</td>
                            <td>{discount.description}</td>
                            <td>
                                <Button size="sm" variant="light" onClick={() => remove(discount.id)} >X</Button>
                                <Button size="sm" variant="light" onClick={() => edit(discount.id)}>Edit</Button>
                                <Button size="sm" variant="link" as={Link} to={`/discountdetail/${discount.id}`}>Details</Button>
                            </td>
                        </tr>
                    )
                }
                </tbody>
            </Table>
        </>
    )
}