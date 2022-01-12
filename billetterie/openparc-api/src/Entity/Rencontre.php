<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\RencontreRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass=RencontreRepository::class)
 */
class Rencontre
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=Planning::class, inversedBy="matchs")
     */
    private $idPlanning;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $etape;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $idVainqueur;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $idPerdant;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $score;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     */
    private $estDouble;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $idJoueur1;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $idJoueur2;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $idEquipe1;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $idEquipe2;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $idEquipeRamasseurs;

    /**
     * @ORM\ManyToMany(targetEntity=Arbitre::class, inversedBy="rencontresArbitrees")
     */
    private $arbitres;

    /**
     * @ORM\ManyToOne(targetEntity=Arbitre::class)
     */
    private $arbitreChaise;

    /**
     * @ORM\OneToMany(targetEntity=Reservation::class, mappedBy="idMatch")
     */
    private $reservations;

  

    public function __construct()
    {
        $this->arbitres = new ArrayCollection();
        $this->reservations = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdPlanning(): ?Planning
    {
        return $this->idPlanning;
    }

    public function setIdPlanning(?Planning $idPlanning): self
    {
        $this->idPlanning = $idPlanning;

        return $this;
    }

    public function getEtape(): ?string
    {
        return $this->etape;
    }

    public function setEtape(string $etape): self
    {
        $this->etape = $etape;

        return $this;
    }

    public function getIdVainqueur(): ?int
    {
        return $this->idVainqueur;
    }

    public function setIdVainqueur(?int $idVainqueur): self
    {
        $this->idVainqueur = $idVainqueur;

        return $this;
    }

    public function getIdPerdant(): ?int
    {
        return $this->idPerdant;
    }

    public function setIdPerdant(?int $idPerdant): self
    {
        $this->idPerdant = $idPerdant;

        return $this;
    }

    public function getScore(): ?string
    {
        return $this->score;
    }

    public function setScore(?string $score): self
    {
        $this->score = $score;

        return $this;
    }

    public function getEstDouble(): ?bool
    {
        return $this->estDouble;
    }

    public function setEstDouble(?bool $estDouble): self
    {
        $this->estDouble = $estDouble;

        return $this;
    }

    public function getIdJoueur1(): ?int
    {
        return $this->idJoueur1;
    }

    public function setIdJoueur1(?int $idJoueur1): self
    {
        $this->idJoueur1 = $idJoueur1;

        return $this;
    }

    public function getIdJoueur2(): ?int
    {
        return $this->idJoueur2;
    }

    public function setIdJoueur2(?int $idJoueur2): self
    {
        $this->idJoueur2 = $idJoueur2;

        return $this;
    }

    public function getIdEquipe1(): ?int
    {
        return $this->idEquipe1;
    }

    public function setIdEquipe1(?int $idEquipe1): self
    {
        $this->idEquipe1 = $idEquipe1;

        return $this;
    }

    public function getIdEquipe2(): ?int
    {
        return $this->idEquipe2;
    }

    public function setIdEquipe2(?int $idEquipe2): self
    {
        $this->idEquipe2 = $idEquipe2;

        return $this;
    }

    public function getIdEquipeRamasseurs(): ?int
    {
        return $this->idEquipeRamasseurs;
    }

    public function setIdEquipeRamasseurs(?int $idEquipeRamasseurs): self
    {
        $this->idEquipeRamasseurs = $idEquipeRamasseurs;

        return $this;
    }

    /**
     * @return Collection|Arbitre[]
     */
    public function getArbitres(): Collection
    {
        return $this->arbitres;
    }

    public function addArbitre(Arbitre $arbitre): self
    {
        if (!$this->arbitres->contains($arbitre)) {
            $this->arbitres[] = $arbitre;
        }

        return $this;
    }

    public function removeArbitre(Arbitre $arbitre): self
    {
        $this->arbitres->removeElement($arbitre);

        return $this;
    }

    public function getArbitreChaise(): ?Arbitre
    {
        return $this->arbitreChaise;
    }

    public function setArbitreChaise(?Arbitre $arbitreChaise): self
    {
        $this->arbitreChaise = $arbitreChaise;

        return $this;
    }

    /**
     * @return Collection|Reservation[]
     */
    public function getReservations(): Collection
    {
        return $this->reservations;
    }

    public function addReservation(Reservation $reservation): self
    {
        if (!$this->reservations->contains($reservation)) {
            $this->reservations[] = $reservation;
            $reservation->setIdMatch($this);
        }

        return $this;
    }

    public function removeReservation(Reservation $reservation): self
    {
        if ($this->reservations->removeElement($reservation)) {
            // set the owning side to null (unless already changed)
            if ($reservation->getIdMatch() === $this) {
                $reservation->setIdMatch(null);
            }
        }

        return $this;
    }
}
