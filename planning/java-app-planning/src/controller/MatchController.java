/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import models.DAOMatchs;
import models.Match;

/**
 *
 * @author matan
 */
public class MatchController {
    public static boolean updateMatch(Match m){
        return DAOMatchs.updateMatch(m);
    }
}
