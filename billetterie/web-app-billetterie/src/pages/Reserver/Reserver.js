import React from 'react'
import styles from './Reserver.module.css'

import axios from 'axios'

import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';

import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';

const Reserver = () => {

    const [matchs, setMatchs] = useState([]);
    const [joueurs, setJoueurs] = useState([]);
    const [lesPlaces, setLesPlaces] = useState([]);

    const [selected, setSelected] = useState(-1);
    const [place, setPlace] = useState('');

    const [chargement, setChargement] = useState(true);

    const [tribune, setTribune] = useState('');

    const [nom, setNom] = useState('');
    const [prenom, setPrenom] = useState('');
    const [email, setEmail] = useState('');
    const [pass, setPass] = useState('');

    const { id } = useParams();

    const tribunes = ["Ouest", "Est", "Nord", "Sud"];

    const handleChange = (event) => {
        setSelected(event.target.value);
    };

    const handleChangePlace = (event) => {
        setPlace(event.target.value);
    }


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

                    tab.push({
                        idR: match.idMatch.id,
                        nom1: joueur1.data.nom,
                        nom2: joueur2.data.nom
                    });



                }


                setJoueurs(tab);
            }
            console.log(lesMatchs);
            setMatchs(lesMatchs);
            setChargement(false);



        } catch {
        }


    }

    const handleSubmit = (e) => {
        e.preventDefault();
        if (nom && prenom && email && pass) {
            newBillet();
        }
    }

    const newBillet = async () => {
        try {

            console.log(await axios.post("http://cpoa.noahblanchard.fr/api/billets", {
                jour: parseInt(id),
                prix: 25,
                rencontre: "api/rencontres/" + selected
            }))

            console.log("api/rencontres/" + selected);

            await axios.post("http://cpoa.noahblanchard.fr/api/clients", {
                nom: nom,
                telephone: prenom,
                email: email,
                licence: 1234,
                age: 18
            })


            console.log("C'est bon 1")
        } catch (ex) {
            console.log(ex)
        }
    }

    useEffect(() => {
        getMatchsPrincipal();


    }, [])



    return (
        <div className={styles.reservPage + " page"}>
            <form onSubmit={handleSubmit} className={styles.form}>

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
                                    <MenuItem key={-1} value={-1}>Ne pas réserver de place</MenuItem>
                                    {
                                        !chargement ?
                                            matchs.map((m) => {


                                                let j = joueurs.find(je => {
                                                    return je.idR == m.idMatch.id;
                                                })





                                                return <MenuItem key={m.idMatch.id} value={m.idMatch.id}>{m.idMatch.id} - {j.nom1} contre {j.nom2 != "-1" ? j.nom2 : "Non Déterminé"} - {m.heure}:{m.minute}0</MenuItem>

                                            })
                                            :
                                            <MenuItem key={0} value={0}>Chargement...</MenuItem>
                                    }
                                </Select>
                            </FormControl>
                            <FormControl fullWidth>

                                <InputLabel id="demo-simple-select-label">Tribune</InputLabel>
                                <Select
                                    labelId="demo-simple-select-label"
                                    id="demo-simple-select"
                                    value={tribune}
                                    label="Tribune"
                                    onChange={(e) => setTribune(e.target.value)}
                                    disabled={selected != "" && selected != -1 ? false : true}
                                >
                                    <MenuItem value={"Ouest"}>Tribune Ouest</MenuItem>
                                    <MenuItem value={"Ouest"}>Tribune Nord</MenuItem>
                                    <MenuItem value={"Ouest"}>Tribune Sud</MenuItem>
                                    <MenuItem value={"Ouest"}>Tribune Est</MenuItem>
                                </Select>


                            </FormControl>
                            <FormControl fullWidth>
                                <InputLabel id="demo-simple-select-label">Place</InputLabel>
                                <Select
                                    labelId="demo-simple-select-label"
                                    id="demo-simple-select"
                                    value={place}
                                    label="Place"
                                    onChange={handleChangePlace}
                                    disabled={selected != "" && selected != -1 ? false : true}
                                >
                                    

                                </Select>
                            </FormControl>
                            <h3>Entrez vos infos personnelles</h3>
                            <TextField
                                required
                                id="outlined-required"
                                label="Nom"
                                defaultValue=""
                                error={selected == '' || selected == -1 ? true : false}
                                disabled={selected == '' || selected == -1 ? true : false}
                                value={nom}
                                onChange={(e) => setNom(e.target.value)}
                            />
                            <TextField
                                required
                                id="outlined-required"
                                label="Prenom"
                                defaultValue=""
                                value={prenom}
                                onChange={(e) => setPrenom(e.target.value)}
                                error={selected == '' || selected == -1 ? true : false}

                                disabled={selected == '' || selected == -1 ? true : false}
                            />
                            <TextField
                                required
                                id="outlined-required"
                                label="Email"
                                type="email"
                                defaultValue=""
                                value={email}
                                onChange={(e) => setEmail(e.target.value)}
                                error={selected == '' || selected == -1 ? true : false}

                                disabled={selected == '' || selected == -1 ? true : false}
                            />
                            <TextField
                                required
                                id="outlined-required"
                                label="Code secret"
                                type="password"
                                defaultValue=""
                                value={pass}
                                onChange={(e) => setPass(e.target.value)}
                                error={selected == '' || selected == -1 ? true : false}

                                disabled={selected == '' || selected == -1 ? true : false}
                                helperText="Pour retrouver votre réservation"
                            /></>
                        : <h1>Chargement</h1>}

                    <div className={styles.inlineDiv}>
                        <Button variant="outlined">Précédent</Button>
                        <Button variant="contained" type="submit">Suivant</Button>
                    </div>

                </Box>
            </form>
        </div>
    )
}

export default Reserver
