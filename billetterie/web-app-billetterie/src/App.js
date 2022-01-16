import TicketCard from './components/TicketCard/TicketCard';
import { BrowserRouter as Router, Route, Routes, Link, useNavigate } from 'react-router-dom';
import Landing from './pages/Landing/Landing';
import Reserver from './pages/Reserver/Reserver';
import Confirmation from './pages/Confirmation/Confirmation';

import Button from '@mui/material/Button';

import styles from './App.module.css';

function App() {

  const navigate = useNavigate();

  return (
    <div className='App'>


      <nav className={styles.navBar}>
        <ul>
          <li><Button onClick={() => navigate("/")} variant="contained">Effectuer une réservation</Button></li>
          <li><Button onClick={() => navigate("/consulter")} variant="contained">Consulter une réservation</Button></li>
        </ul>
      </nav>

      <Routes>
        <Route exact path="/" element={<Landing />} />
        <Route exact path="/reserver/:id" element={<Reserver />} />
        <Route exact path="/confirmation/:id" element={<Confirmation />} />
      </Routes>

    </div>
  );
}

export default App;
