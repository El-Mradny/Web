import React from 'react'
import Button from 'react-bootstrap/Button';
import { Link } from "react-router-dom";

export default function Patient({ patient , edit, remove }) {

    return (
        patient &&
        <tr>
            <td>{patient.id}</td>
            <td>{patient.name}</td>
            <td>{patient.email}</td>
            <td>{patient.gender}</td>
            <td>{patient.age}</td>
            <td>{patient.phone}</td>
            <td>{patient.note}</td>

            <td>
                <Button size="sm" variant="light" onClick={() => remove(patient.id)} >X</Button>
                <Button size="sm" variant="light" onClick={() => edit(patient.id)}>Edit</Button>
                <Button size="sm" variant="link" as={Link} to={`/patientdetail/${patient.id}`}>Details</Button>
            </td>
        </tr>
    )
}