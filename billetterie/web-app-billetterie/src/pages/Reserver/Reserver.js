import React from 'react'
import styles from './Reserver.module.css'

import axios from 'axios'

import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';

const Reserver = () => {

    const [matchs, setMatchs] = useState([]);

    const getMatchsPrincipal = async () => {
        let response = await axios.get()
    }

    useEffect(() => {



    }, [])

    const {id} = useParams();



    return (
        <div className={styles.reservPage + " page"}>
            <form>

            </form>
        </div>
    )
}

export default Reserver
