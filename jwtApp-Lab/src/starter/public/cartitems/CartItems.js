import React, { useEffect, useState } from 'react'
import db from '../../../db'
import Table from 'react-bootstrap/Table';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
// import {Link} from "react-router-dom";
// import CartItem from './CartItem'

export default function CartItems() {

    const [cartItems, setCartItems] = useState([])
    const [id, setId] = useState(0)
    const [cartId, setCardId] = useState(0)
    const [diagnostic, setDiagnostic] = useState(0)
    const [result, setResult] = useState('')
    const [updated, setUpdated] = useState('')

    useEffect(() => (async () => setCartItems(await db.Cartitems.findAll()))(), [])

    const create = async () => {
        await db.Cartitems.create(setCartItems, {cartId, diagnostic, result, updated })
        setId(0)
        setCardId(0)
        setDiagnostic(0)
        setResult('')
        setUpdated('')
    }

    const remove = async (id) => await db.Cartitems.remove(setCartItems, id)

    const edit = async id => {
        const cartItem = await db.Cartitems.findOne(id)
        setId(cartItem.id)
        setCardId(cartItem.cardid)
        setDiagnostic(cartItem.diagnostic)
        setResult(cartItem.result)
        setUpdated(cartItem.updated)
    }

    // update is step 2
    const update = async () => {
        await db.Cartitems.update(setCartItems, { id, cartId, diagnostic, result, updated })
        setId(0)
        setCardId(0)
        setDiagnostic(0)
        setResult('')
        setUpdated('')
    }

    const [validCreate, setValidCreate] = useState(false)
    useEffect(() => setValidCreate(
        cartId > 0  &&
        diagnostic > 0
    ), [cartId, diagnostic])

    const [validUpdate, setValidUpdate] = useState(false)
    useEffect(() => (async () => setValidUpdate(
        cartId > 0   &&
        id > 0 &&
        diagnostic > 0 &&
        await db.Cartitems.findOne(id) !== undefined
    ))(), [id, cartId, diagnostic])

    return (
        <div>
            <h1>CartItems</h1>
            <Table>
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Cart Id</th>
                    <th>Diagnostic</th>
                    <th>Result</th>
                    <th>Updated</th>
                    <th>Options</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setId(1*event.target.value)} placeholder="id" value={id} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setCardId(1*event.target.value)} placeholder="Card Id" value={cartId} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setDiagnostic(1*event.target.value)} placeholder="Diagnostic" value={diagnostic} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="text" onChange={event => setResult(event.target.value)} placeholder="Result" value={result} />
                    </td>
                    <td>
                        <Form.Control size="sm" type="number" onChange={event => setUpdated(event.target.value)} placeholder="Update" value={updated} />
                    </td>

                    <td>
                        <Button size="sm" variant="light" onClick={create} disabled={!validCreate}>Create</Button>
                        <Button size="sm" variant="light" onClick={update} disabled={!validUpdate}>Update</Button>
                    </td>
                </tr>
                {
                    cartItems.map(cartItem =>
                        <tr key={cartItem.id}>
                            <td>{cartItem.id}</td>
                            <td>{cartItem.cartId}</td>
                            <td>{cartItem.diagnostic}</td>
                            <td>{cartItem.result}</td>
                            <td>{cartItem.updated}</td>
                            <td>
                                <Button size="sm" variant="light" onClick={() => remove(cartItem.id)} >X</Button>
                                <Button size="sm" variant="light" onClick={() => edit(cartItem.id)}>Edit</Button>
                                {/*<Button size="sm" variant="link" as={Link} to={`/cartItemdetail/${cartItem.id}`}>Details</Button>*/}
                            </td>
                        </tr>
                    )
                }
                </tbody>
            </Table>
        </div >
    );
}