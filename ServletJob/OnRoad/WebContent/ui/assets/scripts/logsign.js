mdc.ripple.MDCRipple.attachTo(document.querySelector('.foo-button'));


const selector = '.mdc-button, .mdc-icon-button, .mdc-card__primary-action';
const ripples = [].map.call(document.querySelectorAll(selector), function(el) {
  return new MDCRipple(el);
});


const textField = new MDCTextField(document.querySelector('.mdc-text-field'));

const formField = new MDCFormField(document.querySelector('.mdc-form-field'));
const checkbox = new MDCCheckbox(document.querySelector('.mdc-checkbox'));
formField.input = checkbox;


const helperText = new MDCTextFieldHelperText(document.querySelector('.mdc-text-field-helper-text'));


const menu = new MDCMenu(document.querySelector('.mdc-menu'));
menu.open = true;
$(document).ready(function(){
  /*$("input[type='checkbox']").click(function(){
    $(".mech").css("color","green");
  });
  /*
  $("checkbox").dblclick(function(){
    $(".mech").css("background-color","white");
  });
  */
  $("input[type='checkbox']").click("click", function(){
    $(".mech").css("color","green");
  });
  
});
var firstname = document.getElementById('#exampleInputEmail1').value;
var countryCodes={

}
$(function () {
  $('[data-toggle="popover"]').popover()
})
$('.carousel').carousel();