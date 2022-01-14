<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\ReservPlaceRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ApiResource(
 *      forceEager=false,
 *      normalizationContext={"groups"={"read"}},
 *     denormalizationContext={"groups"={"write"}}
 * )
 * @ORM\Entity(repositoryClass=ReservPlaceRepository::class)
 */
class ReservPlace
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     * @Groups({"read"})
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=rencontre::class, inversedBy="placesReservees")
     * @Groups({"read", "write"})
     */
    private $rencontre;

    /**
     * @ORM\ManyToOne(targetEntity=Place::class)
     * @Groups({"read", "write"})
     */
    private $place;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getRencontre(): ?rencontre
    {
        return $this->rencontre;
    }

    public function setRencontre(?rencontre $rencontre): self
    {
        $this->rencontre = $rencontre;

        return $this;
    }

    public function getPlace(): ?Place
    {
        return $this->place;
    }

    public function setPlace(?Place $place): self
    {
        $this->place = $place;

        return $this;
    }
}
