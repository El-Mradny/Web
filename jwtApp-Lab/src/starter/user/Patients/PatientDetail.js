import React, {useEffect, useState} from 'react'
import db from '../../../db'
import {
    useParams
} from "react-router-dom";
import Table from "react-bootstrap/Table";

export default function PatientDetail() {

    const QRCode = require('qrcode.react');
    const {id: stringId} = useParams();
    const id = 1 * stringId;

    const [patient, setPatient] = useState(null);
    useEffect(() => (async () => setPatient(await db.Patients.findOne(id)))(), [id]);


    const [carts, setCarts] = useState([])
    useEffect(() => (async () => setCarts(await db.Carts.findByPatient(id)))(), [id])

    console.log('cart = ', carts)


    return (
        patient
        &&
        <>
            <h1>Patient</h1>
            <dl className="row">
                <dt className="col-sm-3">Id</dt>
                <dd className="col-sm-9">{patient.id}</dd>
                <dt className="col-sm-3">Name</dt>
                <dd className="col-sm-9">{patient.name}</dd>
                <dt className="col-sm-3">age</dt>
                <dd className="col-sm-9">{patient.age}</dd>
                <dt className="col-sm-3">Email</dt>
                <dd className="col-sm-9">{patient.email}</dd>
                <dt className="col-sm-3">Gender</dt>
                <dd className="col-sm-9">{patient.gender}</dd>
                <dt className="col-sm-3">Phone</dt>
                <dd className="col-sm-9">{patient.phone}</dd>
                <dt className="col-sm-3">Note</dt>
                <dd className="col-sm-9">{patient.note}</dd>
            </dl>
            {
                carts
                &&
                <Table>
                    <thead>
                        <tr>
                            <th>Cart</th>
                            <th>Cart Status</th>
                            <th>Total</th>
                            <th>Created</th>
                        </tr>
                    </thead>
                    <tbody>


                        {
                            carts.map(cart =>
                                <tr key={cart.id}>
                                    <td><a href={`/cartdetail/${cart.id}`}>{cart.id}</a></td>
                                    <td>{cart.status}</td>
                                    <td>{cart.total}</td>
                                    <td>{cart.created}</td>
                                </tr>
                            )
                        }
                    </tbody>
                </Table>
            }

            <QRCode value="https://facebook.github.io/react/"  renderAs='svg' size={50} bgColor={'#ff4547'} fgColor={'#005554'} level={'L'} />
        </>
    )
}