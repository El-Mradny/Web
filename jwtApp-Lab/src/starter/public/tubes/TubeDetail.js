import React, {useEffect, useState} from "react";
import {useParams} from "react-router-dom";
import db from "../../../db";

export default function TubeDetail() {
    const { id: stringId } = useParams();
    const id = 1 * stringId


    const [tube, setTube] = useState(null)
    useEffect(() => (async () => setTube(await db.Tubes.findOne(id)))(), [id])

    return (
        tube
        &&
        <>
            <h1>Tube</h1>
            <dl className="row">
                <dt className="col-sm-3">Id</dt>
                <dd className="col-sm-9">{tube.id}</dd>
                <dt className="col-sm-3">Name</dt>
                <dd className="col-sm-9">{tube.name}</dd>
                <dt className="col-sm-3">Image</dt>
                <dd className="col-sm-9"><img src={tube.image} alt={tube.name} width={100} height={100} /> </dd>
            </dl>
        </>
    )
}