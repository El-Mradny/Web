import React, {useEffect, useState} from "react";
import {useParams} from "react-router-dom";
import db from "../../../db";

export default function DiagnosticDetail() {

    const {id: stringId} = useParams();
    const id = 1 * stringId

    const [diagnostic, setDiagnostic] = useState(null)
    useEffect(() => (async () => setDiagnostic(await db.Diagnostics.findOne(id)))(), [id])

    return (

        diagnostic
        &&
        <>
            <h1>Diagnostic</h1>
            <dl className="row">
                <dt className="col-sm-3">Id</dt>
                <dd className="col-sm-9">{diagnostic.id}</dd>
                <dt className="col-sm-3">Name</dt>
                <dd className="col-sm-9">{diagnostic.name}</dd>
                <dt className="col-sm-3">Category</dt>
                <dd className="col-sm-9">{diagnostic.category}</dd>
                <dt className="col-sm-3">Requisite</dt>
                <dd className="col-sm-9">{diagnostic.requisite}</dd>
                <dt className="col-sm-3">Tube Id</dt>
                <dd className="col-sm-9">{diagnostic.tubeId}</dd>
                <dt className="col-sm-3">Price</dt>
                <dd className="col-sm-9">{diagnostic.price}</dd>
            </dl>
        </>

    )
}