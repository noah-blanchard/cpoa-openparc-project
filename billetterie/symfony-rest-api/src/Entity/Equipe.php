<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\EquipeRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass=EquipeRepository::class)
 */
class Equipe
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\OneToOne(targetEntity=Joueur::class, inversedBy="equipe", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $idJoueur1;

    /**
     * @ORM\OneToOne(targetEntity=Joueur::class, cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $idJoueur2;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getIdJoueur1(): ?Joueur
    {
        return $this->idJoueur1;
    }

    public function setIdJoueur1(Joueur $idJoueur1): self
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
}
