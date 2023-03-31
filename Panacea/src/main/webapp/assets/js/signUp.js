let elInputUsername = document.querySelector('#username');
let elInputPassword = document.querySelector('#password');
let elInputEmail = document.querySelector('#email');
let elInputNick = document.querySelector('#nick');

let elSuccessMessage = document.querySelector('.success-message');
let elFailureMessage = document.querySelector('.failure-message');
let elFailureMessageTwo = document.querySelector('.failure-message2');

let elStrongPasswordMessage = document.querySelector('.strongPassword-message');

// 아이디 : 글자 수 제한 (4글자 이상, 12글자 이하)
function idLength(value) {
  return value.length >= 4 && value.length <= 12
}

// 아이디 : 영어 또는 숫자만 가능
function onlyNumberAndEnglish(str) {
  return /^[A-Za-z0-9][A-Za-z0-9]*$/.test(str);
}

// 비밀번호 : 8글자 이상, 영문, 숫자, 특수문자 사용
function strongPassword (str) {
  return /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/.test(str);
}

// 회원가입 유효성 검사
elInputUsername.onkeyup = function () {
  // 값을 입력한 경우
  if (elInputUsername.value.length !== 0) {
    // 영어 또는 숫자 외의 값을 입력했을 경우
    if(onlyNumberAndEnglish(elInputUsername.value) === false) {
      elSuccessMessage.classList.add('hide');
      elFailureMessage.classList.add('hide');
      elFailureMessageTwo.classList.remove('hide'); // 영어 또는 숫자만 가능합니다
    }
    // 글자 수가 4~12글자가 아닐 경우
    else if(idLength(elInputUsername.value) === false) {
      elSuccessMessage.classList.add('hide'); // 성공 메시지가 가려져야 함
      elFailureMessage.classList.remove('hide'); // 아이디는 4~12글자이어야 합니다
      elFailureMessageTwo.classList.add('hide'); // 실패 메시지2가 가려져야 함
    }
    // 조건을 모두 만족할 경우
    else if(idLength(elInputUsername.value) || onlyNumberAndEnglish(elInputUsername.value)) {
      elSuccessMessage.classList.remove('hide'); // 사용할 수 있는 아이디입니다
      elFailureMessage.classList.add('hide'); // 실패 메시지가 가려져야 함
      elFailureMessageTwo.classList.add('hide'); // 실패 메시지2가 가려져야 함
    }
  }
  // 값을 입력하지 않은 경우 (지웠을 때)
  // 모든 메시지를 가린다.
  else {
    elSuccessMessage.classList.add('hide');
    elFailureMessage.classList.add('hide');
    elFailureMessageTwo.classList.add('hide');
  }
}

elInputPassword.onkeyup = function () {

  // console.log(elInputPassword.value);
  // 값을 입력한 경우
  if (elInputPassword.value.length !== 0) {
    if(strongPassword(elInputPassword.value)) {
      elStrongPasswordMessage.classList.add('hide'); // 실패 메시지가 가려져야 함
    }
    else {
      elStrongPasswordMessage.classList.remove('hide'); // 실패 메시지가 보여야 함
    }
  }
  // 값을 입력하지 않은 경우 (지웠을 때)
  // 모든 메시지를 가린다.
  else {
    elStrongPasswordMessage.classList.add('hide');
  }
};