using uniform.Services;
using uniform.Impl;

namespace App_Code
{
    public class ServiceFactory
    {
        private static IAdvice _advice;
        public static IAdvice GetInstanceAdvice()
        {
            return _advice ?? (_advice = new AdviceImpl());
        }

        private static IAdviceType _adviceType;
        public static IAdviceType GetInstanceAdviceType()
        {
            return _adviceType ?? (_adviceType = new AdviceTypeImpl());
        }

        private static IAlbum _album;
        public static IAlbum GetInstanceAlbumImpl()
        {
            return _album ?? (_album = new AlbumImpl());
        }

        private static Ichatbox _chatbox;
        public static Ichatbox GetInstanceChatbox()
        {
            return _chatbox ?? (_chatbox = new chatboxImpl());
        }

        private static IimageAlbum _imageAlbum;
        public static IimageAlbum GetInstanceImageAlbum()
        {
            return _imageAlbum ?? (_imageAlbum = new imageAlbumImpl());
        }

        private static Inews _news;
        public static Inews GetInstanceNews()
        {
            return _news ?? (_news = new newsImpl());
        }

        private static InewsPromotion _newsPromotion;
        public static InewsPromotion GetInstanceNewsPromotion()
        {
            return _newsPromotion ?? (_newsPromotion = new newsPromotionImpl());
        }

        private static InewsType _newsType;
        public static InewsType GetInstanceNewsType()
        {
            return _newsType ?? (_newsType = new newsTypeImpl());
        }

        private static IPriceType _priceType;
        public static IPriceType GetInstancePriceType()
        {
            return _priceType ?? (_priceType = new PriceTypeImpl());
        }

        private static IPrice _price;
        public static IPrice GetInstancePrice()
        {
            return _price ?? (_price = new PriceImpl());
        }

        private static IIntroductionType _introductionType;
        public static IIntroductionType GetInstanceIntroductionType()
        {
            return _introductionType ?? (_introductionType = new IntroductionTypeImpl());
        }

        private static IIntroduction _introduction;
        public static IIntroduction GetInstanceIntroduction()
        {
            return _introduction ?? (_introduction = new IntroductionImpl());
        }

        private static IcarreerType _carreerType;
        public static IcarreerType GetInstanceCarreerType()
        {
            return _carreerType ?? (_carreerType = new carreerTypeImpl());
        }

        private static Icarreer _carreer;
        public static Icarreer GetInstanceCarreer()
        {
            return _carreer ?? (_carreer = new carreerImpl());
        }

        private static IProduct _product;
        public static IProduct GetInstanceProduct()
        {
            return _product ?? (_product = new productImpl());
        }

        private static IproducType _producType;
        public static IproducType GetInstanceProducType()
        {
            return _producType ?? (_producType = new producTypeImpl());
        }

        private static IuserPromotion _userPromotion;
        public static IuserPromotion GetInstanceUserPromotion()
        {
            return _userPromotion ?? (_userPromotion = new userPromotionImpl());
        }

        private static IUser _users;
        public static IUser GetInstanceUser()
        {
            return _users ?? (_users = new UserImpl());
        }

        private static Islideshow _slideshow;
        public static Islideshow GetInstanceslideshow()
        {
            return _slideshow ?? (_slideshow = new slideshowImpl());
        }
    }
}