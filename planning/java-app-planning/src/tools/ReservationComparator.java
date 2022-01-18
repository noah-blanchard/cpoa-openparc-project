/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import java.util.Comparator;
import models.ReservCourt;

/**
 *
 * @author matan
 */
public class ReservationComparator implements Comparator<ReservCourt> {
    @Override
    public int compare(ReservCourt r1, ReservCourt r2) {
        int compareJour = r1.getJour() - r2.getJour();
        return compareJour == 0 ? r1.getHeure() - r2.getHeure() : compareJour;
    }
}