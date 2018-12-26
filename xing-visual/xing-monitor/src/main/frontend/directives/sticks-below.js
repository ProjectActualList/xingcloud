const bind = (el, binding) => {
  if (!binding.value) {
    return;
  }
  const top = binding.value.map(v => document.querySelector(v))
    .filter(v => Boolean(v))
    .map(v => v.getBoundingClientRect().height)
    .reduce((a, b) => a + b, 0);
  el.style.top = `${top}px`;
  el.style.position = 'sticky';
};

export default {
  bind,
  update(el, binding) {
    if (binding.value === binding.oldValue) {
      return
    }
    bind(el, binding)
  }
}

