<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\PlanningRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass=PlanningRepository::class)
 */
class Planning
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $nombreMatchs;

    /**
     * @ORM\Column(type="integer")
     */
    private $nombreJoueurs;

    /**
     * @ORM\Column(type="integer")
     */
    private $nombreQualifies;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nomPlanning;

    /**
     * @ORM\OneToMany(targetEntity=Matchs::class, mappedBy="idPlanning", orphanRemoval=true)
     */
    private $matchs;

    public function __construct()
    {
        $this->matchs = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNombreMatchs(): ?int
    {
        return $this->nombreMatchs;
    }

    public function setNombreMatchs(int $nombreMatchs): self
    {
        $this->nombreMatchs = $nombreMatchs;

        return $this;
    }

    public function getNombreJoueurs(): ?int
    {
        return $this->nombreJoueurs;
    }

    public function setNombreJoueurs(int $nombreJoueurs): self
    {
        $this->nombreJoueurs = $nombreJoueurs;

        return $this;
    }

    public function getNombreQualifies(): ?int
    {
        return $this->nombreQualifies;
    }

    public function setNombreQualifies(int $nombreQualifies): self
    {
        $this->nombreQualifies = $nombreQualifies;

        return $this;
    }

    public function getNomPlanning(): ?string
    {
        return $this->nomPlanning;
    }

    public function setNomPlanning(string $nomPlanning): self
    {
        $this->nomPlanning = $nomPlanning;

        return $this;
    }

    /**
     * @return Collection|Matchs[]
     */
    public function getMatchs(): Collection
    {
        return $this->matchs;
    }

    public function addMatch(Matchs $match): self
    {
        if (!$this->matchs->contains($match)) {
            $this->matchs[] = $match;
            $match->setIdPlanning($this);
        }

        return $this;
    }

    public function removeMatch(Matchs $match): self
    {
        if ($this->matchs->removeElement($match)) {
            // set the owning side to null (unless already changed)
            if ($match->getIdPlanning() === $this) {
                $match->setIdPlanning(null);
            }
        }

        return $this;
    }
}
