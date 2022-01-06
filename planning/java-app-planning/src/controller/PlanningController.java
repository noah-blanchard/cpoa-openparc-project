/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.concurrent.ThreadLocalRandom;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;
import models.DAOJoueur;
import models.DAOPlanning;
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

        try {
            ResultSet plannings = DAOPlanning.getPlannings();
            while (plannings.next()) {
                Planning p = new Planning(plannings.getInt("idPlanning"), plannings.getInt("nombreMatchs"), plannings.getInt("nombreJoueurs"), plannings.getInt("nombreQualifiés"), plannings.getString("nomPlanning"));
                getMatchByPlanning(p);
                System.out.println(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(JoueurController.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public static void getMatchByPlanning(Planning p) {
        try {
            ResultSet matchs = DAOPlanning.getMatchs(p);
            while (matchs.next()) {
                Match m = new Match(matchs.getInt(1), matchs.getInt(2), matchs.getString(3),
                        matchs.getInt(4), matchs.getInt(5), matchs.getString(6), matchs.getByte(7),
                        matchs.getInt(8), matchs.getInt(9), matchs.getInt(10), matchs.getInt(11),
                        matchs.getInt(12), matchs.getInt(13));

                p.getMatchs().add(m);
            }
        } catch (SQLException ex) {
            Logger.getLogger(JoueurController.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    public static Planning genererPlanningSimplePremierTour() {
        if (Planning.getPlannings().isEmpty()) {
            getAll();
        }
        if (Joueur.getInstances().isEmpty()) {
            JoueurController.getJoueurs();
        }
        if (Planning.getPlannings().get(0).getMatchs().isEmpty()) {

            Planning p = Planning.getPlannings().get(0);
            ArrayList<Joueur> j = Joueur.getjSimple();

            int n = 0;
            int jour = 2;
            int heure = 14;
            int minute = 0;
            int court = 1;
            for (int i = 0; i < 16; ++i) {

                int matchId1 = ThreadLocalRandom.current().nextInt(1, 9999 + 1);
                int rId1 = ThreadLocalRandom.current().nextInt(1, 9999 + 1);
                int idJoueur = j.get(n++).getId();
                int j2 = -1;
                if (n < 24) {
                    j2 = j.get(n++).getId();
                }
                Match m = new Match(matchId1, 0, "Seizième", -1, -1, "", (byte) 0, -1, -1, idJoueur, (j2 > -1 ? j2 : -1), -1, -1);
                ReservCourt reserv = new ReservCourt(rId1, court, matchId1, -1, heure, minute, jour);
                System.out.println(reserv);

                p.addMatch(m);

                if (jour > 2 && heure > 14) {
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

        } else {
            return Planning.getPlannings().get(0);
        }

    }

    public static void addTableRows(DefaultTableModel planningSimple) {
        planningSimple.setRowCount(0);
        Planning p = genererPlanningSimplePremierTour();
        ArrayList<Match> matchs = p.getMatchs();

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

            Object[] row = {m.getIdMatch(), reserv.getIdCourt(), reserv.getHeure() + ":" + reserv.getMinute(), j1.getNom(), (j2 != null) ? j2.getNom() : "TBD", date, m.getEtape()};
            planningSimple.addRow(row);
        }
    }
}
