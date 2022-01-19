/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ThreadLocalRandom;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;
import models.DAOBillet;
import models.DAOJoueur;
import models.DAOMatchs;
import models.DAOPlanning;
import models.DAORamasseurs;
import models.DAOReservCourt;
import models.DAOReservPlace;
import models.Joueur;
import models.Match;
import models.Planning;
import models.ReservCourt;

/**
 *
 * @author matan
 */
public class PlanningController {

    public static void getAll() {

        ReservCourt.getReservations().clear();

        try {
            ResultSet plannings = DAOPlanning.getPlannings();
            while (plannings.next()) {
                Planning p = new Planning(plannings.getInt("id"), plannings.getInt(2), plannings.getInt(3), plannings.getInt(4), plannings.getString(5));
                getMatchByPlanning(p);
                System.out.println(p);
            }
            DAOReservCourt.getReservations();
        } catch (SQLException ex) {
            Logger.getLogger(JoueurController.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public static void getMatchByPlanning(Planning p) {
        try {
            ResultSet matchs = DAOPlanning.getMatchs(p);
            while (matchs.next()) {
                Match m = new Match(matchs.getInt(1), matchs.getInt(2), matchs.getString("etape"),
                        matchs.getInt("id_vainqueur"), matchs.getInt("id_perdant"), matchs.getString("score"), matchs.getByte("est_double"),
                        matchs.getInt("id_joueur1"), matchs.getInt("id_joueur2"), matchs.getInt("id_equipe1"), matchs.getInt("id_equipe2"), matchs.getInt("id_equipe_ramasseurs"), matchs.getInt("id_equipe_ramasseurs2"), matchs.getInt("reservations"));

                p.getMatchs().add(m);
            }

        } catch (SQLException ex) {
            Logger.getLogger(JoueurController.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public static Planning genererPlanningSimplePremierTour() {
        if (Joueur.getInstances().isEmpty()) {
            JoueurController.getJoueurs();
        }
        if (Planning.getPlannings().isEmpty()) {
            getAll();
        }
        Planning p = Planning.getPlannings().get(0);
        p.getNewMatchs().clear();
        ArrayList<Joueur> j = Joueur.getjSimple();
        Collections.shuffle(j);
        ArrayList<Integer> equipesRamasseurs = DAORamasseurs.getEquipesRamasseurs();

        int n = 0;
        int jour = 2;
        int heure = 14;
        int minute = 0;
        int court = 1;
        int c = 0;
        for (int i = 0; i < 16; ++i) {

            int matchId1 = ThreadLocalRandom.current().nextInt(1, 9999 + 1);
            int rId1 = ThreadLocalRandom.current().nextInt(1, 9999 + 1);
            int idJoueur = j.get(n++).getId();
            int j2 = -1;
            if (n < 24) {
                j2 = j.get(n++).getId();
            }

            if (c == 10) {
                c = 0;
            }

            Match m = new Match(matchId1, 1, "Seizième", -1, -1, "", (byte) 0, idJoueur, (j2 > -1 ? j2 : -1), -1, -1, equipesRamasseurs.get(c++), equipesRamasseurs.get(c++), rId1);
            ReservCourt reserv = new ReservCourt(rId1, court, matchId1, -1, heure, minute, jour);

            p.addNewMatch(m);

            if (jour > 2 && heure > 12) {
                court++;
            } else {
                int randPlus = ThreadLocalRandom.current().nextInt(1, 3 + 1);
                court += randPlus;
            }

            if (heure == 16) {
                jour++;
                heure = 10;
            }
            if (court > 4) {
                court = 1;
                heure += 2;
            }

        }

        return p;

    }

    public static void addTableRows(DefaultTableModel planningSimple) {
        planningSimple.setRowCount(0);
        Planning p = genererPlanningSimplePremierTour();
        ArrayList<Match> matchs = p.getNewMatchs();

        for (Match m : matchs) {
            Joueur j1 = Joueur.findById(m.getIdJoueur1());
            Joueur j2 = null;
            if (m.getIdJoueur2() != -1) {
                j2 = Joueur.findById(m.getIdJoueur2());

            }

            String date = "";

            ReservCourt reserv = ReservCourt.findReserv(m.getIdMatch());

            switch (reserv.getJour()) {
                case (1):
                    date = "14/05";
                    break;
                case (2):
                    date = "15/05";
                    break;
                case (3):
                    date = "16/05";
                    break;
                case (4):
                    date = "17/05";
                    break;
                case (5):
                    date = "18/05";
                    break;
                case (6):
                    date = "19/05";
                    break;
                case (7):
                    date = "20/05";
                    break;
                case (8):
                    date = "21/05";
                    break;
            }

            Object[] row = {m.getIdMatch(), reserv.getIdCourt(), reserv.getHeure() + ":" + reserv.getMinute(), j1.getNom(), (j2 != null) ? j2.getNom() : "TBD", date, m.getEtape(), m.getIdEquipeRamasseurs() + " et " + m.getIdEquipeRamasseurs2()};
            planningSimple.addRow(row);
        }
    }

    public static int checkExistSimple() {
        if (Planning.getPlannings().isEmpty()) {
            getAll();
        }

        System.out.println(Planning.getPlannings().get(0).getMatchs());

        if (!(Planning.getPlannings().get(0).getMatchs().isEmpty())) {
            return 1;
        } else {
            return 0;
        }

    }

    public static void confirmPlanningSimple() {
        Planning p = Planning.getPlannings().get(0);
        DAOReservCourt.clearReservation(1);
        DAOBillet.clearPlaceFromBillet();
        DAOReservPlace.clearReservPlace();
        DAOMatchs.clearMatchs(1);
        System.out.println(p.getNewMatchs());
        DAOMatchs.putMatchList(p.getNewMatchs());
        for (Match m : p.getNewMatchs()) {
            ReservCourt r = ReservCourt.findReserv(m.getIdMatch());

            DAOReservCourt.addReservation(r);
        }
    }

    public static void addTableRowsVisual(DefaultTableModel tableModel, int planning) {

        tableModel.setRowCount(0);

        if (Joueur.getInstances().isEmpty()) {
            JoueurController.getJoueurs();
        }

        Planning p = Planning.getPlannings().get(0);
        p.getMatchs().clear();
        getMatchByPlanning(p);

        System.out.println(ReservCourt.getReservations());

        for (ReservCourt r : ReservCourt.getReservations()) {
            if (r.getIdMatch() > 0) {
                Match m = Match.findMatchById(r.getIdMatch());

                Joueur j1 = Joueur.findById(m.getIdJoueur1());
                Joueur j2 = null;
                if (m.getIdJoueur2() != -1) {
                    j2 = Joueur.findById(m.getIdJoueur2());

                }

                System.out.println(m);

                String date = "";

                ReservCourt reserv = ReservCourt.findReserv(m.getIdMatch());

                switch (reserv.getJour()) {
                    case (1):
                        date = "14/05";
                        break;
                    case (2):
                        date = "15/05";
                        break;
                    case (3):
                        date = "16/05";
                        break;
                    case (4):
                        date = "17/05";
                        break;
                    case (5):
                        date = "18/05";
                        break;
                    case (6):
                        date = "19/05";
                        break;
                    case (7):
                        date = "20/05";
                        break;
                    case (8):
                        date = "21/05";
                        break;
                }

                Joueur vainqueur = null;

                if (m.getIdVainqueur() != -1) {
                    vainqueur = Joueur.findById(m.getIdVainqueur());
                }


                /*System.out.println(m.getIdMatch());
            System.out.println(reserv.getIdCourt());
            System.out.println(reserv.getHeure() + " : " + reserv.getMinute());
            System.out.println(j1.getNom());
            System.out.println(m.getIdMatch());
            System.out.println(m.getIdMatch());
            System.out.println(m.getIdMatch());*/
                Object[] row = {m.getIdMatch(), reserv.getIdCourt(), reserv.getHeure() + ":" + reserv.getMinute(), j1.getNom(), (j2 != null) ? j2.getNom() : "TBD", m.getIdVainqueur() == -1 ? "TBD" : vainqueur.getNom(), m.getScore(), date, m.getEtape(), m.getIdEquipeRamasseurs() + " et " + m.getIdEquipeRamasseurs2()};
                System.out.println(row);
                tableModel.addRow(row);
            }
        }

    }
}
