import React, {useEffect, useState} from "react";
import {useParams} from "react-router-dom";
import db from "../../../db";

export default function DiscountDetail() {
    const { id: stringId } = useParams();
    const id = 1 * stringId

    const [discount, setDiscount] = useState(null)
    useEffect(() => (async () => setDiscount(await db.Discounts.findOne(id)))(), [id])

    return(
        discount
        &&
        <>
            <h1>Discount</h1>
            <dl className="row">
                <dt className="col-sm-3">Id</dt>
                <dd className="col-sm-9">{discount.id}</dd>
                <dt className="col-sm-3">value</dt>
                <dd className="col-sm-9">{discount.value}</dd>
                <dt className="col-sm-3">start</dt>
                <dd className="col-sm-9">{discount.start}</dd>
                <dt className="col-sm-3">end</dt>
                <dd className="col-sm-9">{discount.end}</dd>
                <dt className="col-sm-3">publish</dt>
                <dd className="col-sm-9">{discount.publish}</dd>
                <dt className="col-sm-3">description</dt>
                <dd className="col-sm-9">{discount.description}</dd>
            </dl>
        </>
    )
}