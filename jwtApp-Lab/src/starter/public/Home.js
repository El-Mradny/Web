import React, { useEffect, useState } from 'react'
import db from '../../db'
import Table from 'react-bootstrap/Table';
import Patient from './Patient'

export default function Home() {

  const [patients, setPatients] = useState([])

  useEffect(() => (async () => setPatients(await db.Patients.findAll()))(), [])

  return (
    <>
      <h1>Products</h1>
      <Table striped bordered hover variant="dark" size="sm">
        <thead>
          <tr>
            <th>Name</th>
            <th>Age</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          {
            patients.map(patient => <Patient key={patient.id} patient={patient} />)
          }
        </tbody>
      </Table>
    </>
  )
}