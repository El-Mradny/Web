import React from 'react'
import Button from 'react-bootstrap/Button';
import { Link } from "react-router-dom";

export default function Patient({ patient }) {

  return (
    <tr>
      <td>{patient.name}</td>
      <td>{patient.age}</td>
      <td>
        <Button size="sm" variant="link" as={Link} to={`/patientdetail/${patient.id}`}>Details</Button>
      </td>
    </tr>
  )
}