<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\ArbitreRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass=ArbitreRepository::class)
 */
class Arbitre
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nom;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $telephone;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $email;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $pays;

    /**
     * @ORM\Column(type="boolean")
     */
    private $jugeArbitre;

    /**
     * @ORM\ManyToMany(targetEntity=Matchs::class, mappedBy="arbitres")
     */
    private $matchsArbitres;

    public function __construct()
    {
        $this->matchsArbitres = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getTelephone(): ?string
    {
        return $this->telephone;
    }

    public function setTelephone(string $telephone): self
    {
        $this->telephone = $telephone;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getPays(): ?string
    {
        return $this->pays;
    }

    public function setPays(string $pays): self
    {
        $this->pays = $pays;

        return $this;
    }

    public function getJugeArbitre(): ?bool
    {
        return $this->jugeArbitre;
    }

    public function setJugeArbitre(bool $jugeArbitre): self
    {
        $this->jugeArbitre = $jugeArbitre;

        return $this;
    }

    /**
     * @return Collection|Matchs[]
     */
    public function getMatchsArbitres(): Collection
    {
        return $this->matchsArbitres;
    }

    public function addMatchsArbitre(Matchs $matchsArbitre): self
    {
        if (!$this->matchsArbitres->contains($matchsArbitre)) {
            $this->matchsArbitres[] = $matchsArbitre;
            $matchsArbitre->addArbitre($this);
        }

        return $this;
    }

    public function removeMatchsArbitre(Matchs $matchsArbitre): self
    {
        if ($this->matchsArbitres->removeElement($matchsArbitre)) {
            $matchsArbitre->removeArbitre($this);
        }

        return $this;
    }
}
