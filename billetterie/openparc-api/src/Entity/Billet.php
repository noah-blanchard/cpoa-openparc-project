<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\BilletRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;


/**
 * @ApiResource(
 *     forceEager=false,
 *     normalizationContext={"groups"={"read"}},
 *     denormalizationContext={"groups"={"write"}}
 * )
 * @ORM\Entity(repositoryClass=BilletRepository::class)
 */
class Billet    
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     * @Groups({"read"})
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     * @Groups({"write", "read"})
     */
    private $jour;

    /**
     * @ORM\Column(type="integer")
     * @Groups({"write", "read"})
     */
    private $prix;

    /**
     * @ORM\OneToOne(targetEntity=ReservPlace::class, cascade={"persist", "remove"})
     * @Groups({"write", "read"})
     */
    private $place;

    /**
     * @ORM\OneToOne(targetEntity=Client::class, cascade={"persist", "remove"})
     * @Groups({"write", "read"})
     */
    private $client;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getPrix(): ?int
    {
        return $this->prix;
    }

    public function setPrix(int $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    public function getPlace(): ?ReservPlace
    {
        return $this->place;
    }

    public function setPlace(?ReservPlace $place): self
    {
        $this->place = $place;

        return $this;
    }

    public function getClient(): ?Client
    {
        return $this->client;
    }

    public function setClient(?Client $client): self
    {
        $this->client = $client;

        return $this;
    }
}
