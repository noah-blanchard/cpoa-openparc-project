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
     * @ORM\JoinColumn(nullable=false)
     */
    private $idCourt;

    /**
     * @ORM\ManyToOne(targetEntity=Matchs::class)
     */
    private $idMatch;

    /**
     * @ORM\ManyToOne(targetEntity=Joueur::class, inversedBy="reservations")
     */
    private $idJoueur;

    /**
     * @ORM\Column(type="integer")
     */
    private $heure;

    /**
     * @ORM\Column(type="integer")
     */
    private $minute;

    /**
     * @ORM\Column(type="integer")
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

    public function getIdMatch(): ?Matchs
    {
        return $this->idMatch;
    }

    public function setIdMatch(?Matchs $idMatch): self
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

    public function setHeure(int $heure): self
    {
        $this->heure = $heure;

        return $this;
    }

    public function getMinute(): ?int
    {
        return $this->minute;
    }

    public function setMinute(int $minute): self
    {
        $this->minute = $minute;

        return $this;
    }

    public function getJour(): ?int
    {
        return $this->jour;
    }

    public function setJour(int $jour): self
    {
        $this->jour = $jour;

        return $this;
    }
}
