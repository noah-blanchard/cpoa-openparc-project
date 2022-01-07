<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\MatchsRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass=MatchsRepository::class)
 */
class Matchs
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=Planning::class, inversedBy="matchs")
     * @ORM\JoinColumn(nullable=false)
     */
    private $idPlanning;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $etape;

    /**
     * @ORM\ManyToOne(targetEntity=Joueur::class)
     */
    private $idVainqueur;

    /**
     * @ORM\ManyToOne(targetEntity=Joueur::class)
     * @ORM\JoinColumn(nullable=false)
     */
    private $idPerdant;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $score;

    /**
     * @ORM\Column(type="boolean")
     */
    private $estDouble;

    /**
     * @ORM\Column(type="integer")
     */
    private $idJoueur1;

    /**
     * @ORM\Column(type="integer")
     */
    private $idJoueur2;

    /**
     * @ORM\Column(type="integer")
     */
    private $idEquipe1;

    /**
     * @ORM\Column(type="integer")
     */
    private $idEquipe2;

    /**
     * @ORM\ManyToMany(targetEntity=Arbitre::class, inversedBy="matchsArbitres")
     */
    private $arbitres;


    public function __construct()
    {
        $this->arbitres = new ArrayCollection();
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

    public function getIdVainqueur(): ?Joueur
    {
        return $this->idVainqueur;
    }

    public function setIdVainqueur(?Joueur $idVainqueur): self
    {
        $this->idVainqueur = $idVainqueur;

        return $this;
    }

    public function getIdPerdant(): ?Joueur
    {
        return $this->idPerdant;
    }

    public function setIdPerdant(?Joueur $idPerdant): self
    {
        $this->idPerdant = $idPerdant;

        return $this;
    }

    public function getScore(): ?string
    {
        return $this->score;
    }

    public function setScore(string $score): self
    {
        $this->score = $score;

        return $this;
    }

    public function getEstDouble(): ?bool
    {
        return $this->estDouble;
    }

    public function setEstDouble(bool $estDouble): self
    {
        $this->estDouble = $estDouble;

        return $this;
    }

    public function getIdJoueur1(): ?Joueur
    {
        return $this->idJoueur1;
    }

    public function setIdJoueur1(?Joueur $idJoueur1): self
    {
        $this->idJoueur1 = $idJoueur1;

        return $this;
    }

    public function getIdJoueur2(): ?Joueur
    {
        return $this->idJoueur2;
    }

    public function setIdJoueur2(Joueur $idJoueur2): self
    {
        $this->idJoueur2 = $idJoueur2;

        return $this;
    }

    public function getIdEquipe1(): ?Equipe
    {
        return $this->idEquipe1;
    }

    public function setIdEquipe1(?Equipe $idEquipe1): self
    {
        $this->idEquipe1 = $idEquipe1;

        return $this;
    }

    public function getIdEquipe2(): ?Equipe
    {
        return $this->idEquipe2;
    }

    public function setIdEquipe2(?Equipe $idEquipe2): self
    {
        $this->idEquipe2 = $idEquipe2;

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
}
