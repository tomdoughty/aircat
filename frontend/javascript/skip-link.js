export default () => {
  // Assign required DOM elements
  const heading = document.querySelector('h1');
  const skipLink = document.querySelector('.nhsuk-skip-link');

  const addEvents = () => {
    // Add tabindex = -1 and apply focus to heading on skip link click
    skipLink.addEventListener('click', (event) => {
      event.preventDefault();
      heading.setAttribute('tabIndex', '-1');
      heading.focus();
    });
    // Remove tabindex from heading on blur
    heading.addEventListener('blur', (event) => {
      event.preventDefault();
      heading.removeAttribute('tabIndex');
    });
  };

  if (heading && skipLink) addEvents();
};
