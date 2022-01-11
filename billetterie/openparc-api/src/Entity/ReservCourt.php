<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\ReservCourtRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass=ReservCourtRepository::class)
 */
class ReservCourt
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=Court::class)
     */
    private $idCourt;

    /**
     * @ORM\OneToOne(targetEntity=Rencontre::class, cascade={"persist", "remove"})
     */
    private $idMatch;

    /**
     * @ORM\OneToOne(targetEntity=Joueur::class, cascade={"persist", "remove"})
     */
    private $idJoueur;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $heure;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $minute;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $jour;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdCourt(): ?Court
    {
        return $this->idCourt;
    }

    public function setIdCourt(?Court $idCourt): self
    {
        $this->idCourt = $idCourt;

        return $this;
    }

    public function getIdMatch(): ?Rencontre
    {
        return $this->idMatch;
    }

    public function setIdMatch(?Rencontre $idMatch): self
    {
        $this->idMatch = $idMatch;

        return $this;
    }

    public function getIdJoueur(): ?Joueur
    {
        return $this->idJoueur;
    }

    public function setIdJoueur(?Joueur $idJoueur): self
    {
        $this->idJoueur = $idJoueur;

        return $this;
    }

    public function getHeure(): ?int
    {
        return $this->heure;
    }

    public function setHeure(?int $heure): self
    {
        $this->heure = $heure;

        return $this;
    }

    public function getMinute(): ?int
    {
        return $this->minute;
    }

    public function setMinute(?int $minute): self
    {
        $this->minute = $minute;

        return $this;
    }

    public function getJour(): ?int
    {
        return $this->jour;
    }

    public function setJour(?int $jour): self
    {
        $this->jour = $jour;

        return $this;
    }
}
