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
    const [joueurs, setJoueurs] = useState([]);
    const [selected, setSelected] = useState('');
    const [place, setPlace] = useState('');

    const { id } = useParams();

    const handleChange = (event) => {
        setSelected(event.target.value);
    };


    const getJoueurById = async (idJ, idJ2, idR) => {
        let response = await axios.get("http://cpoa.noahblanchard.fr/api/joueurs/" + idJ);
        let data = await response.data;
        let response2 = await axios.get("http://cpoa.noahblanchard.fr/api/joueurs/" + idJ2);
        let data2 = await response2.data;

        const id = await {
            idR: idR,
            nom1: data.nom,
            nom2: data2.nom
        }

        return id;
    }

    const getMatchsPrincipal = async () => {
        try {
            let response = await axios.get("http://cpoa.noahblanchard.fr/api/courts/1");
            let lesMatchs = []

            for (let reserv of response.data.reservations) {








                lesMatchs.push(reserv);

                // let split = response2.data.idMatch.split("/");
                // response2.data.idCourt = parseInt(response2.data.idCourt[response2.data.idCourt.length - 1]);
                // response2.data.idMatch = parseInt(split[3]);
                // reservations.push(response2.data)

            }
            lesMatchs = lesMatchs.filter(p => {
                return p.jour == id;

            })
            let tab = []
            if (lesMatchs.length > 0) {
                for (let match of lesMatchs) {
                    let joueur1 = await axios.get("http://cpoa.noahblanchard.fr/api/joueurs/" + match.idMatch.idJoueur1);
                    let joueur2 = await axios.get("http://cpoa.noahblanchard.fr/api/joueurs/" + match.idMatch.idJoueur2);
                    console.log(match.idMatch.id);
                    tab.push({
                        idR: match.idMatch.id,
                        nom1: joueur1.data.nom,
                        nom2: joueur2.data.nom
                    });



                }

                console.log(tab);
                setJoueurs(tab);
            }
            setMatchs(lesMatchs);



        } catch {
        }


    }

    useEffect(() => {
        getMatchsPrincipal();


    }, [])



    return (
        <div className={styles.reservPage + " page"}>
            <form className={styles.form}>

                <Box sx={{ minWidth: 120 }}>
                    {matchs ?
                        <>
                            <h3>Choisir un match et une place du court central</h3>
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
                                        matchs.map((m) => {


                                            let j = joueurs.find(je => {
                                                return je.idR == m.idMatch.id;
                                            })
                                            console.log(j.idR);





                                            return <MenuItem key={m.idMatch.id} value={m.idMatch.id}>{m.idMatch.id} - {j.nom1} contre {j.nom2 != "-1" ? j.nom2 : "Non Déterminé"} - {m.heure}:{m.minute}0</MenuItem>
                                        })
                                    }
                                </Select>
                            </FormControl>
                            <FormControl fullWidth>
                                
                                <InputLabel id="demo-simple-select-label">Place</InputLabel>
                                <Select
                                    labelId="demo-simple-select-label"
                                    id="demo-simple-select"
                                    value={place}
                                    label="Place"
                                    onChange={handleChange}
                                    disabled={selected != "" ? false : true}
                                >
                                    <MenuItem value={1}>Place 1</MenuItem>
                                </Select>
                            </FormControl>
                            <h3>Entrez vos infos personnelles</h3>
                            <TextField
                                required
                                id="outlined-required"
                                label="Nom"
                                defaultValue=""
                                disabled={selected == '' ? true : false}
                            />
                            <TextField
                                required
                                id="outlined-required"
                                label="Prenom"
                                defaultValue=""
                                disabled={selected == '' ? true : false}
                            />
                            <TextField
                                required
                                id="outlined-required"
                                label="Email"
                                defaultValue=""
                                disabled={selected == '' ? true : false}
                            />
                            <TextField
                                required
                                id="outlined-required"
                                label="Code secret"
                                defaultValue=""
                                disabled={selected == '' ? true : false}
                            /></>
                        : <h1>Chargement</h1>}

                </Box>
            </form>
        </div>
    )
}

export default Reserver
