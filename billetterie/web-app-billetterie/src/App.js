import TicketCard from './components/TicketCard/TicketCard';
import {BrowserRouter as Router, Route, Routes} from 'react-router-dom';
import Landing from './pages/Landing/Landing';
import Reserver from './pages/Reserver/Reserver';

function App() {

  return (
    <div className='App'>
      <Router>
        <Routes>
          <Route exact path="/" element={<Landing />} />
          <Route exact path="/reserver/:id" element={<Reserver />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
