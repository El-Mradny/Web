import React, {useEffect, useState} from "react";
import {useParams} from "react-router-dom";
import db from "../../../db";
import Table from "react-bootstrap/Table";

export default function CartDetail() {
    const { id: stringId } = useParams();
    const id = 1 * stringId

    const [cart, setCart] = useState(null)
    useEffect(() => (async () => setCart(await db.Carts.findOne(id)))(), [id])

    const [items , setItems ] = useState([])
    useEffect(() => (async () => setItems(await db.Cartitems.findByCartId(id)))(),[id])


    return (
        cart
        &&
        <>
            <h1>Cart</h1>
            <dl className="row">
                <dt className="col-sm-3">Id</dt>
                <dd className="col-sm-9">{cart.id}</dd>
                <dt className="col-sm-3">patient</dt>
                <dd className="col-sm-9">{cart.patient}</dd>
                <dt className="col-sm-3">physician</dt>
                <dd className="col-sm-9">{cart.physician}</dd>
                <dt className="col-sm-3">rep</dt>
                <dd className="col-sm-9">{cart.rep}</dd>
                <dt className="col-sm-3">total</dt>
                <dd className="col-sm-9">{cart.total}</dd>
                <dt className="col-sm-3">discount</dt>
                <dd className="col-sm-9">{cart.discount}</dd>
                <dt className="col-sm-3">status</dt>
                <dd className="col-sm-9">{cart.status}</dd>
                <dt className="col-sm-3">created</dt>
                <dd className="col-sm-9">{cart.created}</dd>
                <dt className="col-sm-3">updated</dt>
                <dd className="col-sm-9">{cart.updated}</dd>
            </dl>
            {
                items
                &&
                <Table>
                    <thead>

                        <tr>
                            <th>diagnostic</th>
                            <th>result</th>
                            <th>updated</th>
                            <th>Created</th>
                        </tr>
                    </thead>
                    <tbody>
                        {
                            items.map(item =>
                                <tr key={item.id}>
                                    <td>{item.diagnostic}</td>
                                    <td>{item.result}</td>
                                    <td>{item.updated}</td>
                                    <td>{item.created}</td>
                                </tr>
                            )
                        }
                    </tbody>
                </Table>
            }
        </>
    )
}