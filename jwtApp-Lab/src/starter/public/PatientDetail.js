import React, { useEffect, useState } from 'react'
import db from '../../db'
import {
  useParams
} from "react-router-dom";

export default function PatientDetail() {

  const { id: stringId } = useParams();
  const id = 1 * stringId

  const [patient, setPatient] = useState(null)
  useEffect(() => (async () => setPatient(await db.Patients.findOne(id)))(), [id])


  const [cart, setCart] = useState(null);
  useEffect(() => (async () => setCart(await db.Carts.findByPatientid(id)))(), [id])

  const [cartid, setCartid] = useState(0);
  useEffect(() => (async () => setCartid( await cart[0].id)), [cart])


  const cartOpen = async()=> await cart[0].id


  const [items, setItems] = useState([]);
  useEffect(() => (async () => setItems(await db.Cartitems.findByCartid(cart[0].id)))(), [cart])

  console.log(cartid)
  console.log(items)
  console.log(cartOpen)

  return (
    patient &&cart && items &&
    <>
      <h1>Patient {patient.id} </h1>
      <dl className="row">
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
        cart &&
          items.map(item => item.cartid !== cartOpen())

      }
    </>
  )
}