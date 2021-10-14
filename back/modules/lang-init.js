module.exports = _lang => {
	lang = _lang.toUpperCase()
	switch(lang) {
		case 'KO':
			return {
				ERROR: {
					NOT_FOUND 		: '존재하지 않는 데이터 입니다.',
					SQL_ERROR    : '데이터 처리에 실패하였습니다.',
					AUTH_ERROR   : '권한이 없습니다.',
					JOIN: {
						ID_NULL			: '아이디를 입력하세요.',
						ID_LEN			: '아이디는 6자 이상 24자 이하 입니다.',
						ID_VALID 		: '아이디는 영문,숫자로 구성되어야 합니다.',
						ID_TAKEN		: '사용중인 아이디입니다. 다른 아이디를 사용해주세요',
						ID_OK		    : '사용 가능한 아이디 입니다.',
						PW_NULL			: '패스워드를 입력하세요.',
						PW_LEN			: '패스워드는 6자 이상 24자 이하 입니다.',
						PW2_NULL		: '패스워드를 재 입력하세요.',
						PW2_LEN			: '패스워드 재 입력은 6자 이상 24자 이하 입니다.',
						PW_TAKEN		: '패스워드가 일치하지 않습니다.',
						NAME_NULL		: '이름을 입력하세요.',
						EMAIL_NULL	    : '이메일을 입력하세요.',
						EMAIL_TAKEN	    : '사용중인 이메일 입니다. 다른 이메일을 사용해주세요.',
						EMAIL_VALID	    : '이메일 형식이 올바르지 않습니다.',
					}
				},
				GLOBAL: {
					LOGO					: '도서관리시스템',
					TAB_TITLE			: 'Express 게시판',
					NAVI					: ['도서 등록', '도서 리스트', '로그인', '로그아웃', '회원가입','마이페이지','회원정보수정','도서리스트(VUE)']
				},
				LIST: {
					TITLE 				: '도서 목록',
					DESC 					: '등록된 도서들의 리스트 입니다.',
				},
				VIEW: {
					TITLE 				: '도서 상세 정보',
					DESC 					: '선택하신 도서의 상세 정보 입니다.',
				},
				CREATE: {
					TITLE 				: '도서 등록',
					DESC 					: '등록할 도서를 아래에서 입력하세요.',
				},
				UPDATE: {
					TITLE 				: '도서 수정',
					DESC 					: '수정할 도서 내용을 아래에서 변경하세요.',
				},
				JOIN: {
					TITLE 				: '회원 가입',
					DESC 					: '회원님의 가입정보를 아래에 입력해주세요',
				},
				LOGIN: {
					TITLE 				: '회원 로그인',
					DESC 					: '회원님의 로그인 정보를 아래에 입력해 주세요',
				},
				FIELD : {
					NO						: '번호',
					TITLE					: '제목',
					WRITER				: '저자',
					CONTENT				: '요약설명',
					DATE					: '등록일',
					COVER					: '표지',
					STATUS				: '판매',
					UPFILE				: '첨부파일',
				},
				AUTH : {
					USERID						: '아이디',
					PASSWD					: '패스워드',
					PASSWD2				: '패스워드확인',
					USERNAME				: '사용자이름',
					EMAIL					: '이메일',
				},
				MYPAGE : {
					TITLE 				: '회원정보 수정',
					DESC 					: '수정할 회원정보를 아래에서 변경하세요.',
					USERID						: '아이디',
					PASSWD					: '패스워드',
					PASSWD2				: '패스워드확인',
					USERNAME				: '사용자이름',
					EMAIL					: '이메일',
					DOMAIN					: '인증플랫폼',
					APIKEY					: '인증키',
					KAKAO                   :'카카오 인증된 회원입니다.',
					NAVER                   :'네이버 인증된 회원입니다.'
				},
				BT: {
					UPDATE				: '수정',
					DELETE				: '삭제',
					CREATE				: '등록',
					LIST					: '리스트',
					RESET					: '다시 등록',
					JOIN                : '회원가입',
					LOGIN                : '로그인',
					BACK                : '뒤로가기',
					APIKEY                  : '인증키 생성 및 변경'
				},
				MSG: {
					DELETE				: '정말로 삭제하시겠습니까?'
				}
			}
		case 'EN': 
			return {
				ERROR: {
					NOT_FOUND 		: 'Data Not Found',
					SQL_ERROR       : 'Data processing failed.',
					AUTH_ERROR   : 'You do not have permission.',
					JOIN: {
						ID_NULL			: 'Please enter your ID',
						ID_LEN			: 'ID must be between 6 and 24 characters',
						ID_VALID 		: 'The ID must consist of alphanumeric characters',
						ID_TAKEN		: 'You can not use this ID. Please use a different ID',
						ID_OK		    : 'Username is available',
						PW_NULL			: 'Please enter your password',
						PW_LEN			: 'Password must be between 6 and 24 characters',
						PW2_NULL		: 'Please re-enter your password',
						PW2_LEN			: 'Re-entering the password must be between 6 and 24 characters',
						PW_TAKEN		: 'Passwords do not match',
						NAME_NULL		: 'Please enter your name',
						EMAIL_NULL	    : 'Please enter your email',
						EMAIL_TAKEN	    : 'This is the email you are using. Please use a different email',
						EMAIL_VALID	    : 'Email format is incorrect',
					}
				},
				GLOBAL: {
					LOGO					: 'BOOK MANAGEMENT SYSTEM',
					TAB_TITLE			: 'Express Board',
					NAVI: 				['Book Register', 'Book List', 'Login', 'Logout', 'Join', 'Mypage','Edit User','Book List(Vue)']
				},
				LIST: {
					TITLE 				: 'Book List',
					DESC 					: 'This is a list of registered books.',
				},
				VIEW: {
					TITLE 				: 'Book Detail Information',
					DESC 					: 'Detailed information of the selected book.',
				},
				CREATE: {
					TITLE 				: 'Book Register',
					DESC 					: 'Please enter the book you wish to register below.',
				},
				UPDATE: {
					TITLE 				: 'Book Update',
					DESC 					: 'Change the contents of the book to be edited below.',
				},
				JOIN: {
					TITLE 				: 'Member Register',
					DESC 					: 'Change the Profile you wish to be register below.',
				},
				LOGIN: {
					TITLE 				: 'Member Login',
					DESC 					: 'Please enter your login information',
				},
				FIELD : {
					NO						: 'No',
					TITLE					: 'Title',
					WRITER				: 'Writer',
					CONTENT				: 'Content',
					DATE					: 'Date',
					COVER					: 'Cover',
					STATUS				: 'Status',
					UPFILE				: 'Attachment file',
				},
				AUTH : {
					USERID						: 'User id',
					PASSWD					: 'Password',
					PASSWD2				: 'Password confirm',
					USERNAME				: 'User name',
					EMAIL					: 'Email',
				},
				MYPAGE : {
					TITLE 				: 'User Information',
					DESC 					: 'Change the contents of the user inforamtion to be edited below.',
					USERID						: 'User id',
					PASSWD					: 'Password',
					PASSWD2				: 'Password confirm',
					USERNAME				: 'User name',
					EMAIL					: 'Email',
					DOMAIN					: 'Auth Platform',
					APIKEY					: 'API key',
				},
				BT: {
					UPDATE				: 'UPDATE',
					DELETE				: 'DELETE',
					CREATE				: 'CREATE',
					LIST					: 'LIST',
					RESET					: 'RESET',
					JOIN					: 'JOIN',
					LOGIN					: 'LOGIN',
					BACK					: 'BACK',
					APIKEY                  : 'Auth-key create/update',
					KAKAO                   :'Authorized at Kakao',
					NAVER                   :'Authorized at Naver'
				},
				MSG: {
					DELETE				: 'Are you sure you want to delete it?'
				}
			}
	}
}