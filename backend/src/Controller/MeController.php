<?php
declare(strict_types=1);

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Security;

class MeController extends AbstractController
{
    public function __construct(Security $security)
    {
        $this->security = $security;
    }

    public function __invoke(): ?\Symfony\Component\Security\Core\User\UserInterface
    {
        $user = $this->security->getUser();
        // dd($user);
        return $user;
    }
}