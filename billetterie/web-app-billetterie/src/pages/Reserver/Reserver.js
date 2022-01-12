import React from 'react'
import styles from './Reserver.module.css'

import axios from 'axios'

import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import TextField from '@mui/material/TextField';

import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';

const Reserver = () => {

    const [matchs, setMatchs] = useState([]);

    const [selected, setSelected] = useState('');

    const { id } = useParams();

    const handleChange = (event) => {
        setSelected(event.target.value);
    };

    const getMatchsPrincipal = async () => {
        try {
            let response = await axios.get("http://cpoa.noahblanchard.fr/api/rencontres");
            let datas = response.data["hydra:member"]
            let reservations = []
            for (let match of datas) {
                let request = match.reservations[0]
                let response2 = await axios.get("http://cpoa.noahblanchard.fr" + match.reservations[0]);
                let split = response2.data.idMatch.split("/");
                response2.data.idCourt = parseInt(response2.data.idCourt[response2.data.idCourt.length - 1]);
                response2.data.idMatch = parseInt(split[3]);
                reservations.push(response2.data)
            }
            reservations = reservations.filter(r => {
                return r.idCourt == 1 && r.jour == id;
            });

            datas = datas.filter(d => reservations.find(i => {
                return i.idMatch == d.id;
            }));

            setMatchs(datas);
        } catch {
        }


    }

    useEffect(() => {
        getMatchsPrincipal();


    }, [])



    return (
        <div className={styles.reservPage + " page"}>
            <form className={styles.form}>
                <h3>Sur quel match réserver une place ?</h3>
                <Box sx={{ minWidth: 120 }}>
                    <FormControl fullWidth>
                        <InputLabel id="demo-simple-select-label">Match</InputLabel>
                        <Select
                            labelId="demo-simple-select-label"
                            id="demo-simple-select"
                            value={selected}
                            label="Match"
                            onChange={handleChange}
                        >
                            {
                                matchs.map(m => {
                                    return <MenuItem key={m.id} value={m.id}>{m.id}</MenuItem>
                                })
                            }
                        </Select>
                    </FormControl>
                    <TextField
                        required
                        id="outlined-required"
                        label="Nom"
                        defaultValue=""
                    />
                </Box>
            </form>
        </div>
    )
}

export default Reserver
