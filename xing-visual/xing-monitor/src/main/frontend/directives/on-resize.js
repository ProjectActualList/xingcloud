import ResizeObserver from 'resize-observer-polyfill';

const observers = new WeakMap();

const bind = (el, binding) => {
  unbind(el);
  const observer = new ResizeObserver(binding.value);
  observer.observe(el);
  observers.set(el, observer);

};

const unbind = (el) => {
  const observer = observers.get(el);
  if (observer) {
    observer.disconnect();
    observers.delete(el);
  }
};

export default {
  bind,
  update(el, binding) {
    if (binding.value === binding.oldValue) {
      return
    }
    bind(el, binding)
  },
  unbind
}

