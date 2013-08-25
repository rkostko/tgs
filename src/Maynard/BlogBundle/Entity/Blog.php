<?php

namespace Maynard\BlogBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Application\Sonata\MediaBundle\Entity\Media;
use Application\Sonata\UserBundle\Entity\User;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints as DoctrineAssert;
use Maynard\PageBundle\Entity\ContentBlock;
use Maynard\PageBundle\Entity\Category;
use Maynard\PageBundle\Entity\Tag;


/**
 * Maynard\BlogBundle\Entity\Blog
 *
 * @ORM\Table(name="blogs")
 * @DoctrineAssert\UniqueEntity(fields="alias", message="Alias must be unique")
 * @ORM\Entity(repositoryClass="Maynard\BlogBundle\Repository\BlogRepository")
 */
class Blog
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="date")
     */ 
    protected $date;

    /**
     * @ORM\Column(type="string", length=255)
     */ 
    protected $title;

    /**
     * @ORM\ManyToOne(targetEntity="Application\Sonata\UserBundle\Entity\User", cascade={"persist"})
     * @ORM\JoinColumn(name="author", onDelete="SET NULL")
     */ 
    protected $author;

    /**
     * @ORM\Column(type="string", length=255, nullable=true, unique = true)
     */  
    protected $alias = null;

    /**
     * @ORM\Column(type="integer")
     */ 
    protected $pageOrder = 99;

    /**
     * @ORM\Column(type="integer")
     */ 
    protected $showPageTitle;

    /**
     * @ORM\Column(type="integer")
     */   
    protected $publishState;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    protected $pageclass = null;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */ 
    protected $description = null;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    protected $keywords = null;

    /**
     * @ORM\Column(type="text", nullable=true)
     */ 
    protected $introtext = null;

    /**
     * @ORM\OneToOne(targetEntity="Application\Sonata\MediaBundle\Entity\Media", cascade={"persist"})
     * @ORM\JoinColumn(name="introimage", onDelete="SET NULL")
     */ 
    protected $introimage;

    /**
     * @ORM\OneToOne(targetEntity="Application\Sonata\MediaBundle\Entity\Media", cascade={"persist"})
     * @ORM\JoinColumn(name="bgimage", onDelete="SET NULL")
     */ 
    protected $bgimage;

    /**
     * @ORM\OneToOne(targetEntity="Application\Sonata\MediaBundle\Entity\Media", cascade={"persist"})
     * @ORM\JoinColumn(name="introvideo", onDelete="SET NULL")
     */
    protected $introvideo;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    protected $intromediasize = null;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    protected $introclass = null;

    /**
    * @ORM\ManyToMany(targetEntity="Maynard\PageBundle\Entity\Category", inversedBy="blogs", cascade={"persist"})
    * @ORM\JoinTable(name="blogs_categories")
    */
    protected $categories;

    /**
    * @ORM\ManyToMany(targetEntity="Maynard\PageBundle\Entity\Tag", inversedBy="blogs", cascade={"persist"})
    * @ORM\JoinTable(name="blogs_tags")
    */
    protected $tags;
    
    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    protected $pagetype = null;

   
    /**
     * @ORM\ManyToMany(targetEntity="Maynard\PageBundle\Entity\ContentBlock", inversedBy="blog_maincontents", cascade={"persist"})
     * @ORM\JoinTable(name="blog_maincontent_blocks")
     **/
    protected $maincontentblocks;

   
    /**
     * @ORM\ManyToMany(targetEntity="Maynard\PageBundle\Entity\ContentBlock", inversedBy="blog_bannercontents", cascade={"persist"})
     * @ORM\JoinTable(name="blog_bannercontent_blocks")
     **/
    protected $bannercontentblocks;


    /**
     * @ORM\ManyToMany(targetEntity="Maynard\PageBundle\Entity\ContentBlock", inversedBy="blog_modalcontents", cascade={"persist"})
     * @ORM\JoinTable(name="blog_modalcontent_blocks")
     **/
    protected $modalcontentblocks;
    

    public function __construct() {
        $this->modalcontentblocks 		= new \Doctrine\Common\Collections\ArrayCollection();
        $this->maincontentblocks 		= new \Doctrine\Common\Collections\ArrayCollection();
        $this->bannercontentblocks 		= new \Doctrine\Common\Collections\ArrayCollection();
	$this->date                             = new \DateTime();
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set date
     *
     * @param \DateTime $date
     * @return Blog
     */
    public function setDate($date)
    {
        $this->date = $date;
    
        return $this;
    }

    /**
     * Get date
     *
     * @return \DateTime 
     */
    public function getDate()
    {
        return $this->date;
    }

    /**
     * Set title
     *
     * @param string $title
     * @return Blog
     */
    public function setTitle($title)
    {
        $this->title = $title;
    
        return $this;
    }

    /**
     * Get title
     *
     * @return string 
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set alias
     *
     * @param string $alias
     * @return Blog
     */
    public function setAlias($alias)
    {
        $this->alias = $alias;
    
        return $this;
    }

    /**
     * Get alias
     *
     * @return string 
     */
    public function getAlias()
    {
        return $this->alias;
    }

    /**
     * Set pageOrder
     *
     * @param integer $pageOrder
     * @return Blog
     */
    public function setPageOrder($pageOrder)
    {
        $this->pageOrder = $pageOrder;
    
        return $this;
    }

    /**
     * Get pageOrder
     *
     * @return integer 
     */
    public function getPageOrder()
    {
        return $this->pageOrder;
    }

    /**
     * Set showPageTitle
     *
     * @param integer $showPageTitle
     * @return Blog
     */
    public function setShowPageTitle($showPageTitle)
    {
        $this->showPageTitle = $showPageTitle;
    
        return $this;
    }

    /**
     * Get showPageTitle
     *
     * @return integer 
     */
    public function getShowPageTitle()
    {
        return $this->showPageTitle;
    }

    /**
     * Set publishState
     *
     * @param integer $publishState
     * @return Blog
     */
    public function setPublishState($publishState)
    {
        $this->publishState = $publishState;
    
        return $this;
    }

    /**
     * Get publishState
     *
     * @return integer 
     */
    public function getPublishState()
    {
        return $this->publishState;
    }

    /**
     * Set pageclass
     *
     * @param string $pageclass
     * @return Blog
     */
    public function setPageclass($pageclass)
    {
        $this->pageclass = $pageclass;
    
        return $this;
    }

    /**
     * Get pageclass
     *
     * @return string 
     */
    public function getPageclass()
    {
        return $this->pageclass;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Blog
     */
    public function setDescription($description)
    {
        $this->description = $description;
    
        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set keywords
     *
     * @param string $keywords
     * @return Blog
     */
    public function setKeywords($keywords)
    {
        $this->keywords = $keywords;
    
        return $this;
    }

    /**
     * Get keywords
     *
     * @return string 
     */
    public function getKeywords()
    {
        return $this->keywords;
    }

    /**
     * Set introtext
     *
     * @param string $introtext
     * @return Blog
     */
    public function setIntrotext($introtext)
    {
        $this->introtext = $introtext;
    
        return $this;
    }

    /**
     * Get introtext
     *
     * @return string 
     */
    public function getIntrotext()
    {
        return $this->introtext;
    }

    /**
     * Set intromediasize
     *
     * @param string $intromediasize
     * @return Blog
     */
    public function setIntromediasize($intromediasize)
    {
        $this->intromediasize = $intromediasize;
    
        return $this;
    }

    /**
     * Get intromediasize
     *
     * @return string 
     */
    public function getIntromediasize()
    {
        return $this->intromediasize;
    }

    /**
     * Set introclass
     *
     * @param string $introclass
     * @return Blog
     */
    public function setIntroclass($introclass)
    {
        $this->introclass = $introclass;
    
        return $this;
    }

    /**
     * Get introclass
     *
     * @return string 
     */
    public function getIntroclass()
    {
        return $this->introclass;
    }

    /**
     * Set pagetype
     *
     * @param string $pagetype
     * @return Blog
     */
    public function setPagetype($pagetype)
    {
        $this->pagetype = $pagetype;
    
        return $this;
    }

    /**
     * Set introvideo
     *
     * @param Application\Sonata\MediaBundle\Entity\Media $introvideo
     * @return Page
     */
    public function setIntrovideo(\Application\Sonata\MediaBundle\Entity\Media $introvideo = null)
    {
        $this->introvideo = $introvideo;
        return $this;
    }

    /**
     * Get introvideo
     *
     * @return Application\Sonata\MediaBundle\Entity\Media 
     */
    public function getIntrovideo()
    {
        return $this->introvideo;
    }

    /**
     * Get pagetype
     *
     * @return string 
     */
    public function getPagetype()
    {
        return $this->pagetype;
    }

    /**
     * Set author
     *
     * @param \Application\Sonata\UserBundle\Entity\User $author
     * @return Blog
     */
    public function setAuthor(\Application\Sonata\UserBundle\Entity\User $author = null)
    {
        $this->author = $author;
    
        return $this;
    }

    /**
     * Get author
     *
     * @return \Application\Sonata\UserBundle\Entity\User 
     */
    public function getAuthor()
    {
        return $this->author;
    }

    /**
     * Set introimage
     *
     * @param \Application\Sonata\MediaBundle\Entity\Media $introimage
     * @return Blog
     */
    public function setIntroimage(\Application\Sonata\MediaBundle\Entity\Media $introimage = null)
    {
        $this->introimage = $introimage;
    
        return $this;
    }

    /**
     * Get introimage
     *
     * @return \Application\Sonata\MediaBundle\Entity\Media 
     */
    public function getIntroimage()
    {
        return $this->introimage;
    }
    
     /**
     * Set bgimage
     *
     * @param \Application\Sonata\MediaBundle\Entity\Media $bgimage
     * @return Products
     */
    public function setBgimage(\Application\Sonata\MediaBundle\Entity\Media $bgimage = null)
    {
        $this->bgimage = $bgimage;
    
        return $this;
    }

    /**
     * Get bgimage
     *
     * @return \Application\Sonata\MediaBundle\Entity\Media 
     */
    public function getBgimage()
    {
        return $this->bgimage;
    }

    /**
     * Add categories
     *
     * @param \Maynard\PageBundle\Entity\Category $categories
     * @return Blog
     */
    public function addCategory(\Maynard\PageBundle\Entity\Category $categories)
    {
        $this->categories[] = $categories;
    
        return $this;
    }

    /**
     * Remove categories
     *
     * @param \Maynard\PageBundle\Entity\Category $categories
     */
    public function removeCategory(\Maynard\PageBundle\Entity\Category $categories)
    {
        $this->categories->removeElement($categories);
    }

    /**
     * Get categories
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getCategories()
    {
        return $this->categories;
    }

    /**
     * Add tags
     *
     * @param \Maynard\PageBundle\Entity\Tag $tags
     * @return Blog
     */
    public function addTag(\Maynard\PageBundle\Entity\Tag $tags)
    {
        $this->tags[] = $tags;
    
        return $this;
    }

    /**
     * Remove tags
     *
     * @param \Maynard\PageBundle\Entity\Tag $tags
     */
    public function removeTag(\Maynard\PageBundle\Entity\Tag $tags)
    {
        $this->tags->removeElement($tags);
    }

    /**
     * Get tags
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getTags()
    {
        return $this->tags;
    }

    /**
     * Add maincontentblocks
     *
     * @param \Maynard\PageBundle\Entity\ContentBlock $maincontentblocks
     * @return Blog
     */
    public function addMaincontentblock(\Maynard\PageBundle\Entity\ContentBlock $maincontentblocks)
    {
        $this->maincontentblocks[] = $maincontentblocks;
    
        return $this;
    }

    /**
     * Remove maincontentblocks
     *
     * @param \Maynard\PageBundle\Entity\ContentBlock $maincontentblocks
     */
    public function removeMaincontentblock(\Maynard\PageBundle\Entity\ContentBlock $maincontentblocks)
    {
        $this->maincontentblocks->removeElement($maincontentblocks);
    }

    /**
     * Get maincontentblocks
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getMaincontentblocks()
    {
        return $this->maincontentblocks;
    }

    /**
     * Add bannercontentblocks
     *
     * @param \Maynard\PageBundle\Entity\ContentBlock $bannercontentblocks
     * @return Blog
     */
    public function addBannercontentblock(\Maynard\PageBundle\Entity\ContentBlock $bannercontentblocks)
    {
        $this->bannercontentblocks[] = $bannercontentblocks;
    
        return $this;
    }

    /**
     * Remove bannercontentblocks
     *
     * @param \Maynard\PageBundle\Entity\ContentBlock $bannercontentblocks
     */
    public function removeBannercontentblock(\Maynard\PageBundle\Entity\ContentBlock $bannercontentblocks)
    {
        $this->bannercontentblocks->removeElement($bannercontentblocks);
    }

    /**
     * Get bannercontentblocks
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getBannercontentblocks()
    {
        return $this->bannercontentblocks;
    }

    /**
     * Add modalcontentblocks
     *
     * @param \Maynard\PageBundle\Entity\ContentBlock $modalcontentblocks
     * @return Blog
     */
    public function addModalcontentblock(\Maynard\PageBundle\Entity\ContentBlock $modalcontentblocks)
    {
        $this->modalcontentblocks[] = $modalcontentblocks;
    
        return $this;
    }

    /**
     * Remove modalcontentblocks
     *
     * @param \Maynard\PageBundle\Entity\ContentBlock $modalcontentblocks
     */
    public function removeModalcontentblock(\Maynard\PageBundle\Entity\ContentBlock $modalcontentblocks)
    {
        $this->modalcontentblocks->removeElement($modalcontentblocks);
    }

    /**
     * Get modalcontentblocks
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getModalcontentblocks()
    {
        return $this->modalcontentblocks;
    }
	
    /**
     * toString Title
     *
     * @return string 
     */
    public function __toString()
    {
        return (string)$this->getTitle();
    }
    
    /**
    * toString PublishState
    *
    * @return string 
    */
    public function getPublishStateAsString()
    {
        switch($this->getPublishState()){
            case(0): return "Unpublished";
            case(1): return "Published";
            case(2): return "Preview";
        }
    }
    
    /**
    * toString Pagetype
    *
    * @return string 
    */
    public function getPagetypeAsString()
    {
        switch($this->getPagetype()){
            case('blog_article'):   return "Blog Article";
            case('blog_tag_list'):  return "Blog Tag Results";
            case('blog_home'):      return "Blog Homepage";
            default:                return $this->getPagetype(); 
        }
    }
}