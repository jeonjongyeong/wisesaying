CREATE DATABASE wisesaying;

USE wisesaying;

SHOW DATABASES;

CREATE TABLE wisesaying(
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    reg_date DATETIME NOT NULL,
    content TEXT NOT NULL,
    author VARCHAR(100) NOT NULL
);

DESC wisesaying;

INSERT INTO wisesaying
VALUES ('','2022-05-24 10:05:05',
 '사려 깊고 헌신하는 작은 시민 집단이 세상을 바꿀 수 있다는 것을 믿어 의심치 않습니다. 시민이야말로 지금까지 세상을 바꿔온 유일한 존재입니다.',
'Margaret Mead'),
('','2022-05-24 10:05:05',
 '혼자서는 작은 한 방울이지만 함께 모이면 바다를 이룹니다.',
'Ryunosuke Satoro'),
('','2022-05-24 10:06:05',
 '팀워크의 좋은 점은 언제나 나를 지지해 주는 누군가가 있다는 것입니다.',
'Margaret Carty'),
('','2022-05-24 10:07:05',
 '뛰어난 팀은 서로 감추지 않습니다. 치부를 드러내길 꺼리지 않습니다. 비난을 두려워하지 않고 자신의 실수, 약점, 걱정을 인정합니다.',
'Patrick Lencioni'),
('','2022-05-24 10:08:05',
 '한 사람이 팀에 지대한 역할을 할 수 있지만, 한 사람으로 팀을 만들 수는 없습니다.',
'Kareem Abdul-Jabbar'),
('','2022-05-24 10:09:05',
 '개개인이 힘을 합쳐 팀으로써 함께 이뤄내는 것은 팀, 회사, 사회를 제대로 작동하게 하는 원동력입니다.',
'Vince Lombardi'),
('','2022-05-24 10:10:05',
 '우리의 사랑은 매우 커서 모두를 포용할 수 있습니다.',
'Cari Tuna'),
('','2022-05-24 10:11:05',
 '사람들은 선택할 수 있는 능력이 있고 바꿀 수 있는 힘이 있습니다.',
'Madeleine Albright'),
('','2022-05-24 10:12:05',
 '진정한 영웅을 만들어내는 것은 부단한 노력과 성실함입니다.',
'Hope Solo'),
('','2022-05-24 10:13:05',
 '노력은 결실을 맺습니다. 노력은 변화를 일으킵니다.',
'Shonda Rhimes'),
('','2022-05-24 10:14:05',
 '브랜드는 그들의 커뮤니티가 스스로 변화의 주체가 될 수 있도록 지원해야 합니다.',
'Simon Mainwaring'),
('','2022-05-24 10:15:05',
 '저는 승리에 사로잡힌 것이 아니라, 진실에 사로잡힌 사람입니다. 저는 성공에 사로잡힌 것이 아니라, 제 안의 빛에 사로잡힌 사람입니다.',
'Abraham Lincoln'),
('','2022-05-24 10:16:05',
 '스스로가 받아들이지 않으면 그 누구도 당신에게 열등감을 느끼게 할 수 없습니다.',
'leanor Roosevelt'),
('','2022-05-24 10:17:05',
 '표면상의 노력보다 진정한 생산성에 더 높은 가치를 두세요.',
'Scott Belsky'),
('','2022-05-24 10:18:05',
 '용기를 가지고 자신의 마음과 직관을 따르세요. 여러분의 마음과 직관은 자신이 진정으로 무엇을 이루고 싶은지 이미 알고 있습니다. 그 이외의 것들은 부차적일 뿐입니다.',
'Steve Jobs'),
('','2022-05-24 10:19:05',
 '오늘날 성공적인 리더십의 핵심은 권력이 아니라 영향력입니다.',
'Ken Blanchard'),
('','2022-05-24 10:20:05',
 '무언가가 몹시 중요하다면 성공할 가능성이 희박하더라도 시도하세요.',
'Elon Musk'),
('','2022-05-24 10:21:05',
 '진리는 언제나 다양성과 혼돈이 아닌 단순함 속에서 발견됩니다.',
'Isaac Newton'),
('','2022-05-24 10:22:05',
 '사람들은 선한 일을 함으로써 긍정적인 감정을 느끼며, 비범한 일을 해냄으로써 특별한 감정을 느낍니다. 성취는 만족감에 지대한 기여를 합니다.',
'Mark Sanborn'),
('','2022-05-24 10:23:05',
 '성공은 운과 노력의 교차점입니다.',
'Dustin Moskovitz'),
('','2022-05-24 10:24:05',
 '언제나 열린 자세와 사려 깊은 마음을 유지하세요.',
'Phil Jackson'),
('','2022-05-24 10:25:05',
 '가장 큰 위험은 위험을 무릅쓰지 않는 것입니다. 급변하는 세상에서 실패할 수밖에 없는 전략은 위험을 감수하지 않는 것입니다.',
'Mark Zuckerberg'),
('','2022-05-24 10:26:05',
 '사업가란 절벽 아래로 뛰어내린 다음 아래로 떨어지면서 비행기를 조립하는 사람입니다.',
'Reid Hoffman'),
('','2022-05-24 10:27:05',
 '친절한 말 한마디는 짧고 하기 쉽지만, 그 울림은 진정으로 끝이 없습니다.',
'Mother Teresa');

ALTER TABLE wisesaying MODIFY COLUMN hit INT NOT NULL AFTER author;

ALTER TABLE wisesaying ADD COLUMN likepoint INT NOT NULL AFTER hit;


UPDATE wisesaying
SET hit = 0;

UPDATE wisesaying
SET likepoint = 0;

SELECT * FROM wisesaying;

