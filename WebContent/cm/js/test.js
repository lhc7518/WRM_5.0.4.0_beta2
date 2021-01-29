/**
 * @constroctor
 * @classdesc 멤버에 대한 정보를 관리한다. 
 * @param {String} firstName 명
 * @param {String} lastName 성
 * @throws {Error} undefined입니다.
 * @author Yoshihiro
 */
var Member = function(firstName, lastName) {
    if(firstName === undefined || lastName === undefined) {
        throw new Error('undefined입니다.');
    }
    this.firstName = firstName;
    this.lastName = lastName;
};

/**
 * 멤버에 관한 상세 정보를 나타낸다.
 * @return {String} 멤버의 성명
 * @deprecated {@link Member#toString}메소드를 대신해서 이용해주세요.
 */
Member.prototype.getName = function() {
    return this.lastName + ' ' + this.firstName;
};

/**
 * Member 클래스의 내용을 문자열화한다.
 * @return {String} 멤버의 성명
 */
Member.prototype.toString = function() {
    return this.lastName + ' ' + this.firstName;
};