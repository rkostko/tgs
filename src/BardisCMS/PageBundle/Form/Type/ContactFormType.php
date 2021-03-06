<?php

/*
 * Page Bundle
 * This file is part of the BardisCMS.
 *
 * (c) George Bardis <george@bardis.info>
 *
 */

namespace BardisCMS\PageBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Symfony\Component\Validator\Constraints as Assert;
use BardisCMS\PageBundle\Form\EventListener\SanitizeFieldSubscriber;

class ContactFormType extends AbstractType {
    
    // Creating the contact form and the fields
    public function buildForm(FormBuilderInterface $builder, array $options) {
	
		$builder->add('fullname', 'text', array(
			'label' => 'How shall we call you?',
			'required' => true,
			'attr' => array(
				'placeholder' => 'Type your name here',
				'title' => 'Please enter your name',
				'maxLength' => 75
			))
		);

		$builder->add('email', 'email', array(
			'label' => 'Share your email',
			'required' => true,
			'attr' => array(
				'placeholder' => 'We will keep it safe. We promise!',
				'title' => 'Please enter your email',
				'maxLength' => 150
			))
		);

		$builder->add('comment', 'textarea', array(
			'label' => 'We`re all ears!',
			'required' => true,
			'attr' => array(
				'placeholder' => 'Share with us any information that might help us respond to your request.',
				'title' => 'Please fill in your message/question',
				'maxLength' => 1000,
				'cols' => 70,
				'rows' => 8,
			))
		);

		$builder->add('bottrap', 'text', array(
			'label' => 'Bot trap',
			'required' => false,
			'attr' => array(
				'placeholder' => '',
				'maxLength' => 1
			))
		);
		
		// Sanitize data to avoid XSS attacks		
		$builder->addEventSubscriber(new SanitizeFieldSubscriber());
	
    }
	
	// Adding field validation constraints
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $collectionConstraint = new Assert\Collection(array(
            'fullname' => array(
                new Assert\NotBlank(array('message' => 'Your Name should not be blank')),
				new Assert\Regex(array('pattern' => '/[0-9]/', 'match' => false, 'message' => 'Your Name cannot contain numbers')),
                new Assert\Length(array('min' => 2, 'max' => 75))
            ),
            'email' => array(
                new Assert\NotBlank(array('message' => 'Your email should not be blank')),
                new Assert\Length(array('min' => 2, 'max' => 150)),
                new Assert\Email(array('message' => 'Invalid email address.'))
            ),
            'comment' => array(
                new Assert\NotBlank(array('message' => 'Your message/question should not be blank')),
                new Assert\Length(array('min' => 2, 'max' => 1000))
            ),
            'bottrap' => array(
                new Assert\Blank(array('message' => 'Bot Trap should be blank')),
                new Assert\Length(array('max' => 1))
            )
        ));

        $resolver->setDefaults(array(
			'intention'		=> 'contact_form',
            'constraints'	=> $collectionConstraint,
			'method'		=> 'POST'
        ));
    }

    public function getName() {
	
	// Define the name of the form to call it for rendering
	return 'contactform';
    }

}
