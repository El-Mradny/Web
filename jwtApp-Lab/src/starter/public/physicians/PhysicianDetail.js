import React, {useEffect, useState} from "react";
import {useParams} from "react-router-dom";
import db from "../../../db";

export default function PhysicianDetail() {
    const {id: stringId} = useParams();
    const id = 1 * stringId

    const [physician, setPhysician] = useState(null)
    useEffect(() => (async () => setPhysician(await db.Diagnostics.findOne(id)))(), [id])

    return (
        physician
        &&
        <>
            <h1>Physician</h1>
            <dl className="row">
                <dt className="col-sm-3">Id</dt>
                <dd className="col-sm-9">{physician.id}</dd>
                <dt className="col-sm-3">Name</dt>
                <dd className="col-sm-9">{physician.name}</dd>
                <dt className="col-sm-3">speciality</dt>
                <dd className="col-sm-9">{physician.speciality}</dd>
                <dt className="col-sm-3">address</dt>
                <dd className="col-sm-9">{physician.address}</dd>
                <dt className="col-sm-3">note</dt>
                <dd className="col-sm-9">{physician.note}</dd>
            </dl>
        </>
    )
}