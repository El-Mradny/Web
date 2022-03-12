import React, { useEffect, useState } from 'react'
import db from '../../../db'
import Table from 'react-bootstrap/Table';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import {Link} from "react-router-dom";
// import Cart from './Cart'

export default function Carts() {

    const [carts, setCarts] = useState([])

    const [id, setId] = useState(0)
    const [patient, setPatient] = useState(0)
    const [physician, setPhysician] = useState(0)
    const [rep, setRep] = useState(0)
    const [total, setTotal] = useState(0)
    const [discount, setDiscount] = useState(0)
    const [status, setStatus] = useState('')
    const [created, setCreated] = useState('')
    const [updated, setUpdated] = useState('')


    useEffect(() => (async () => setCarts(await db.Carts.findAll()))(), [])

    const create = async () => {
        await db.Carts.create(setCarts, { patient, physician, rep, total, discount, status, created, updated })
        setId(0)
        setPatient(0)
        setPhysician(0)
        setRep(0)
        setTotal(0)
        setDiscount(0)
        setStatus('')
        setCreated('')
        setUpdated('')
    }

    const remove = async id => await db.Carts.remove(setCarts, id)

    const edit = async id => {
        const cart = await db.Carts.findOne(id)
        setId(cart.id)
        setPatient(cart.patient)
        setPhysician(cart.physician)
        setRep(cart.rep)
        setTotal(cart.total)
        setDiscount(cart.discount)
        setStatus(cart.status)
        setCreated(cart.created)
        setUpdated(cart.updated)
    }

    // update is step 2
    const update = async () => {
        await db.Carts.update(setCarts, { id, patient, physician, rep, total, discount, status, created, updated })
        setId(0)
        setPatient(0)
        setPhysician(0)
        setRep(0)
        setTotal(0)
        setDiscount(0)
        setStatus('')
        setCreated('')
        setUpdated('')
    }

    const [validCreate, setValidCreate] = useState(false)
    useEffect(() => setValidCreate(
        patient > 0 &&
        status !== ""
    ), [patient, status])

    const [validUpdate, setValidUpdate] = useState(false)
    useEffect(() => (async () => setValidUpdate(
        patient > 0 &&
        id > 0 &&
        status !== "" &&
        await db.Carts.findOne(id) !== undefined
    ))(), [id, patient, status])

    return (
        <div>
            <h1>Carts</h1>
            <Table>
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Patient</th>
                    <th>Physician</th>
                    <th>Rep</th>
                    <th>Total</th>
                    <th>Discount</th>
                    <th>Status</th>
                    <th>Options</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setId(1*event.target.value)} placeholder="id" value={id} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setPatient(1*event.target.value)} placeholder="patient" value={patient} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setPhysician(1*event.target.value)} placeholder="physician" value={physician} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setRep(1*event.target.value)} placeholder="Rep" value={rep} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setTotal(1*event.target.value)} placeholder="Total" value={total} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setDiscount(1*event.target.value)} placeholder="discount" value={discount} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setStatus(event.target.value)} placeholder="Status" value={status} />
                    </td>
                    <td>
                        <Button size="sm" variant="light" onClick={create} disabled={!validCreate}>Create</Button>
                        <Button size="sm" variant="light" onClick={update} disabled={!validUpdate}>Update</Button>
                    </td>
                </tr>
                {
                    carts.map(cart =>
                        <tr key={cart.id}>
                            <td>{cart.id}</td>
                            <td><a href={`/patientdetail/${cart.patient}`}>{cart.patient}</a></td>
                            <td><a href={`/physiciandetail/${cart.physician}`}>{cart.physician}</a></td>
                            <td><a href={`/repdetail/${cart.rep}`}>{cart.rep}</a></td>
                            <td>{cart.total}</td>
                            <td>{cart.discount}</td>
                            <td>{cart.status}</td>

                            <td>
                                <Button size="sm" variant="light" onClick={() => remove(cart.id)} >X</Button>
                                <Button size="sm" variant="light" onClick={() => edit(cart.id)}>Edit</Button>
                                <Button size="sm" variant="link" as={Link} to={`/cartdetail/${cart.id}`}>Details</Button>
                            </td>
                        </tr>
                    )
                }
                </tbody>
            </Table>
        </div >
    );
}