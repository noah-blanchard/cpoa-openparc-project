<?php

namespace App\DataPersister;

use App\Entity\Billet;
use Doctrine\ORM\EntityManagerInterface;
use ApiPlatform\Core\DataPersister\ContextAwareDataPersisterInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class BilletDataPersister implements ContextAwareDataPersisterInterface{
    private $_entityManager;

    public function __construct(
        EntityManagerInterface $entityManager,
    ) {
        $this->_entityManager = $entityManager;
    }

    /**
     * {@inheritdoc}
     */
    public function supports($data, array $context = []): bool
    {
        return $data instanceof Billet;
    }

    /**
     * @param Billet $data
     */
    public function persist($data, array $context = [])
    {
        if ($data->getCode()) {
            $data->setHashedCode(
                password_hash($data->getCode(), PASSWORD_DEFAULT)
            );
        }

        $this->_entityManager->persist($data);
        $this->_entityManager->flush();
    }

    /**
     * {@inheritdoc}
     */
    public function remove($data, array $context = [])
    {
        $this->_entityManager->remove($data);
        $this->_entityManager->flush();
    }


}
