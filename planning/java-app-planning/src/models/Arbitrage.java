/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author matan
 */
public class Arbitrage {

    private int idMatch;
    private int idArbitre;
    private byte chaise;

    public Arbitrage(int idMatch_, int idArbitre_, byte chaise_) {
        this.idMatch = idMatch_;
        this.idArbitre = idArbitre_;
        this.chaise = chaise_;
    }
}
