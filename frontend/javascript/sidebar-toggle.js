import { toggleAttribute, toggleClass } from './utils';

export default () => {
  const relatedNavToggle = document.querySelector('#related-nav__toggle');
  const relatedNavContent = document.querySelector('#related-nav__content');

  const togglerelatedNav = (event) => {
    event.preventDefault();
    if (window.innerWidth < 769) {
      toggleAttribute(relatedNavToggle, 'aria-expanded');
      toggleClass(relatedNavToggle, 'is-active');
      toggleClass(relatedNavContent, 'js-show');
    }
    console.log(window.innerWidth);
  };

  const addEvents = () => {
    relatedNavToggle.addEventListener('click', togglerelatedNav);
  };

  if (relatedNavToggle && relatedNavContent) addEvents();
};