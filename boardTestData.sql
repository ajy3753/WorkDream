SET DEFINE OFF;

-- Ŀ�´�Ƽ �׽�Ʈ ������ ����(��� �׽�Ʈ ������ ���� �� ���� ����)

-- ���� ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', 'ù ���� ��Ȱ�� �����ϸ� ���� ��', 
'�ȳ��ϼ���! ���� �̹��� ù �������� ��ȭ�����Ͼ�� �Ի��ϰ� �Ǿ����ϴ�. ���ο� ȯ�濡 �����ϴ� �������� ���� ����� �Բ� �������� ù ���� ������� ��� �ͽ��ϴ�.', 
NULL, 'person1', 1, SYSDATE, 150, 25, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���Ի�����μ� �˾Ƶθ� ���� ȸ�� ��ȭ', 
'���ο� ȸ�翡 �����ϱ� ���� �� �˾ƾ� �� ȸ�� ��ȭ�� ������ ���� �̾߱��غ��� �մϴ�. ������ ������ �е��� ���� ��Ź�帳�ϴ�!', 
NULL, 'person2', 2, SYSDATE, 250, 50, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', 'ù ��ٳ� �غ� üũ����Ʈ', 
'ù ��ٳ��� �غ��ؾ� �� �͵鿡 ���� üũ����Ʈ�� �����մϴ�. �������� �غ��ߴ� �͵�� �߰��� �ʿ��� �͵��� �˷��ּ���.', 
NULL, 'person3', 3, SYSDATE, 300, 75, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���Ի���� Ŀ���� ���� ����', 
'���Ի�����μ� Ŀ��� ��� �������� �������� ���� ������ �����մϴ�. �������� Ŀ��� �ױ� ���� ���� �˷��ּ���!', 
NULL, 'person4', 4, SYSDATE, 400, 100, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���� �� �ΰ����� �����ϱ�', 
'���� ��Ȱ���� �߿��� �ΰ����� ������ ���� �̾߱��غ��� �ͽ��ϴ�. ���� ���� ���踦 �α� ���� ���� �ִٸ� �������ּ���.', 
NULL, 'person5', 5, SYSDATE, 500, 125, 'Y');

-- ä����� ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'ä�����', '���ο� ������Ʈ ���� ����', 
'���� �������� ���ο� ������Ʈ�� ���� �������̰� â������ ������ �����ϰ� �ֽ��ϴ�. ���� ������ �е��� ��۷� ���� �ǻ縦 �����ּ���!', 
NULL, 'business1', 6, SYSDATE, 200, 40, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'ä�����', '������ �μ� ���Ͻ� ��ȸ', 
'�ٰ����� ���� ������ �¾� ������ �μ����� ������ �����մϴ�. ���� ������ �ְų� ���� �ִ� �л����� ���� ���� �ٶ��ϴ�.', 
NULL, 'business2', 7, SYSDATE, 350, 60, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'ä�����', '������ ������ ä�� �ȳ�', 
'�츮 ȸ�� ���������� ������ �����ڸ� ä���մϴ�. �ֽ� ����� �ٷ�� ȯ�濡�� �Բ� ������ ���縦 ã�� �ֽ��ϴ�.', 
NULL, 'business3', 8, SYSDATE, 450, 80, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'ä�����', '������ �� �ű� ������ ����', 
'â������ �������� �߱��ϴ� ���� ������ ������ ���ο� �������� �����߽��ϴ�. ��Ʈ������ ���� �ʼ�!', 
NULL, 'business4', 9, SYSDATE, 550, 100, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'ä�����', '�λ��� ���� ä�� ����', 
'�λ����� �����μ� ���� �̲��� �� ���� ���� ���� �����մϴ�. �����ʰ� �λ� ������ �ڽ� �ִ� �е��� ���� ���� �ٶ��ϴ�.', 
NULL, 'business5', 10, SYSDATE, 650, 120, 'Y');

-- ���� ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', 'ȿ������ ��� �غ� ���', 
'����� �غ��ϸ鼭 � ������� ȿ�������� �����ϰ� �ͽ��ϴ�. ������ ����� ���� �����ּ���!', 
NULL, 'person6', 6, SYSDATE, 180, 30, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '����ڶ�ȸ ���� �ı�', 
'�ֱ� ������ ����ڶ�ȸ�� ���� �ı⸦ �����մϴ�. �����ߴ� ���� �����Ǿ����� �ϴ� ���� �̾߱��غ��ƿ�.', 
NULL, 'person7', 7, SYSDATE, 280, 50, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', 'ȿ������ �ڱ�Ұ��� �ۼ���', 
'�ڱ�Ұ����� ��� �ۼ��ϸ� �������� ���� ���� �����մϴ�. ���� �ڱ�Ұ��� �ۼ��� ������ �Ǵ� ������ �ִٸ� �˷��ּ���!', 
NULL, 'person8', 8, SYSDATE, 380, 70, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���� ��� ����', 
'�������� ���� �λ��� ����� ���� ������ �غ� ����� �����մϴ�. ���� ������ ������ �е��� ���� ��Ź�帳�ϴ�.', 
NULL, 'person9', 9, SYSDATE, 480, 90, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '��Ʈ��ŷ�� �߿伺', 
'��� �غ� �������� ��Ʈ��ŷ�� �󸶳� �߿������� ���� �̾߱��غ��� �ͽ��ϴ�. ȿ������ ��Ʈ��ŷ ����� �ִٸ� �������ּ���.', 
NULL, 'person10', 10, SYSDATE, 580, 110, 'Y');

-- �ڼҼ� ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڼҼ�', '�ڱ�Ұ��� �ۼ� �� ����', 
'�ڱ�Ұ����� �ۼ��� �� ������ ���̳� ����� �����մϴ�. ������ ������ �����ּ���!', 
NULL, 'person1', 1, SYSDATE, 220, 40, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڼҼ�', '�������� �ڼҼ� ���', 
'���������� ä��� �ڼҼ� ��ʸ� �����մϴ�. � ������ ���Ҵ��� �Բ� �м��غ���.', 
NULL, 'person2', 2, SYSDATE, 320, 60, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڼҼ�', '�ڱ�Ұ��� ���� ���ϱ�', 
'�ڱ�Ұ��� �ۼ� �� ���� ���ϴ� ������� �̸� ���ϴ� ����� ���� �̾߱��غ��ô�.', 
NULL, 'person3', 3, SYSDATE, 420, 80, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڼҼ�', '�ڱ�Ұ��� ÷�� ��û', 
'�ۼ��� �ڱ�Ұ����� ÷��ް� �ͽ��ϴ�. �ǰ��� �ֽŴٸ� �����ϰڽ��ϴ�.', 
NULL, 'person4', 4, SYSDATE, 520, 100, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڼҼ�', '�ڱ�Ұ��� ���� ����', 
'�پ��� �ڱ�Ұ��� ������ �����մϴ�. �����ϼż� ���� �ڼҼ� �ۼ��Ͻñ� �ٶ��ϴ�.', 
NULL, 'person5', 5, SYSDATE, 620, 120, 'Y');

-- �ڰ��� ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڰ���', '������ �ڰ��� ��õ', 
'��� �غ� ������ �Ǵ� �ڰ����� ��õ�ص帳�ϴ�. �������� ����� �ڰ����� �������ּ���!', 
NULL, 'person6', 6, SYSDATE, 120, 20, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڰ���', '�ڰ��� ���� ���', 
'ȿ�������� �ڰ����� �����ϴ� ����� ���� �̾߱��غ��� �ͽ��ϴ�. ���� ���� ������ �е��� �������ּ���.', 
NULL, 'person7', 7, SYSDATE, 220, 40, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڰ���', '�ڰ��� ��� �ı�', 
'�ֱٿ� ����� �ڰ����� ���� �ı⸦ �����մϴ�. ��� ������ ���� ���� �̾߱����ּ���.', 
NULL, 'person8', 8, SYSDATE, 320, 60, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڰ���', '�ڰ��� ���� �ڷ� ����', 
'�ڰ��� ���ο� ������ �Ǵ� �ڷᳪ ����Ʈ�� �����մϴ�. ������ �ڷᰡ �ִٸ� �˷��ּ���!', 
NULL, 'person9', 9, SYSDATE, 420, 80, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '�ڰ���', '�ڰ��� ���� ���� �ȳ�', 
'�ٰ����� �ڰ��� ���� ������ �غ� ����� ���� �����մϴ�. ������ �غ� ���� �е��� ������ �Բ� �����ּ���.', 
NULL, 'person10', 10, SYSDATE, 520, 100, 'Y');

-- Q&A ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Q&A', '��� �غ� ���� ����', 
'��� �غ� �������� �ް� �ִ� ������̳� �ñ��� ���� �ֽ��ϴ�. �����Ӱ� �������ּ���!', 
NULL, 'person1', 1, SYSDATE, 140, 30, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Q&A', '�ڱ�Ұ��� �ۼ����� ���� ����', 
'�ڱ�Ұ����� �ۼ��� �� � ���� ���������� �ۼ��ؾ� �ϴ��� �ñ��մϴ�. ���� ��Ź�帳�ϴ�.', 
NULL, 'person2', 2, SYSDATE, 240, 50, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Q&A', '���� ��� ����', 
'�������� ���� �λ��� ����� ���� ������ ���� �˰� �ͽ��ϴ�. ������ ������ �е��� ���� ��Ź�帳�ϴ�.', 
NULL, 'person3', 3, SYSDATE, 340, 70, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Q&A', 'ȿ������ ��Ʈ��ŷ ���', 
'��� �غ� �� ��Ʈ��ŷ�� ȿ�������� �ϴ� ����� ���� �����帳�ϴ�. ���̳� ������ �������ּ���.', 
NULL, 'person4', 4, SYSDATE, 440, 90, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Q&A', '�ڰ��� ���ÿ� ���� ����', 
'� �ڰ����� ����ϴ� ���� ����� ������ ���� ��� ���Դϴ�. ��õ���ֽ� �ڰ����� �ֳ���?', 
NULL, 'person5', 5, SYSDATE, 540, 110, 'Y');

-- Ŀ���� ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Ŀ����', 'Ŀ���� ��ȯ�� ���� ����', 
'���� ���忡�� �ٸ� �о߷� Ŀ��� ��ȯ�ϰ� �ͽ��ϴ�. ���������� ��ȯ�� �е��� ������ ��� �;��.', 
NULL, 'person6', 6, SYSDATE, 160, 30, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Ŀ����', '���忡���� ���� ����', 
'���忡�� ���������� �����ϱ� ���� ������ ���� �̾߱��غ��� �ͽ��ϴ�. �������� �������� ���� ����� �������ּ���.', 
NULL, 'person7', 7, SYSDATE, 260, 50, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Ŀ����', '������ ���� ���', 
'ȿ������ ������ �Ǳ� ���� ������ ���� ����� ���� �����غ��ô�. ������ ������ ��ų�� �ִٸ� �������ּ���.', 
NULL, 'person8', 8, SYSDATE, 360, 70, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Ŀ����', '��ũ������ �뷱�� �����ϱ�', 
'���� ��Ȱ�� ���� ��Ȱ�� ������ ��� ������ �� �������� ���� �̾߱��غ��� �ͽ��ϴ�. ���̳� ������ �������ּ���.', 
NULL, 'person9', 9, SYSDATE, 460, 90, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, 'Ŀ����', 'ȿ������ �ð� ���� ���', 
'���� ȿ������ ���̱� ���� �ð� ���� ����� ���� �����غ��ô�. �������� �ð� ���� ���� �������ּ���.', 
NULL, 'person10', 10, SYSDATE, 560, 110, 'Y');

-- ���� ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '������ ����ϰ� �� ����', 
'�ֱٿ� ������ ����ϰ� �� ������ ������ ���� �����ϰ� �ͽ��ϴ�. ����� ����� �ϰ� �ִ� �е鿡�� ������ �Ǿ����� ���ھ��.', 
NULL, 'person1', 1, SYSDATE, 170, 30, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���� �غ� ���� ����', 
'������ �غ��ϸ鼭 � ������ ���ƴ��� �����մϴ�. ������ ��� ���� �е鿡�� ������ �Ǿ����� ���ھ��.', 
NULL, 'person2', 2, SYSDATE, 270, 50, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���� �� ����ؾ� �� ����', 
'������ �����ϱ� ���� ����ؾ� �� �߿��� ���׵鿡 ���� �̾߱��غ��ô�. �������� ������ �������ּ���.', 
NULL, 'person3', 3, SYSDATE, 370, 70, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '�������� ������ ���� ����', 
'���������� �����ϱ� ���� ������ ���� �����մϴ�. ȿ������ ������ ���� � ����� �ϼ̴��� �˷��ּ���.', 
NULL, 'person4', 4, SYSDATE, 470, 90, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���� �� �����ϱ�', 
'������ �� ���ο� ȯ�濡 ��� �����ߴ����� ���� �����մϴ�. ���� �� ���� ������ �غ� ����� �˷��ּ���.', 
NULL, 'person5', 5, SYSDATE, 570, 110, 'Y');

-- ��� ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '���', '�ָ��� �� �ϼ���?', 
'�̹� �ָ��� Ư���� ��ȹ�� �ֳ���? �����Ӱ� �̾߱��غ���!', 
NULL, 'person6', 6, SYSDATE, 130, 20, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '���', '�ֱ� �� ��ȭ ��õ', 
'�ֱٿ� �� ��ȭ �߿� ��õ�� ���� ��ȭ�� �ֳ���? �������� ��ȭ �ı⸦ �������ּ���.', 
NULL, 'person7', 7, SYSDATE, 230, 40, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '���', '��� ��Ȱ �̾߱�', 
'�������� ��� ��Ȱ�� ���� �̾߱��غ��ô�. ���ο� ��̸� ã�� �ִ� �е鿡�� ������ �Ǿ����� ���ھ��.', 
NULL, 'person8', 8, SYSDATE, 330, 60, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '���', '�ֱٿ� ���� å', 
'�ֱٿ� ���� å �߿� ��õ�� ���� å�� �ֳ���? å ���並 �������ּ���.', 
NULL, 'person9', 9, SYSDATE, 430, 80, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '���', '���� ���� ����', 
'�ֱ� �ٳ�� �������� ���� ������ �����մϴ�. �Ƹ��ٿ��� ��ҳ� ����־��� �̾߱⸦ ����ּ���!', 
NULL, 'person10', 10, SYSDATE, 530, 100, 'Y');

-- ���� ī�װ� �Խñ�
INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���� ���� �غ��ϱ�', 
'�������� ���� ������ �������� ��� �غ��ϸ� ������ �̾߱��غ��ô�. ȿ������ �亯 ����� �������ּ���.', 
NULL, 'person1', 1, SYSDATE, 190, 30, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '��Ʈ���� ���� ���', 
'���� �غ� �� ������ ��Ʈ������ ��� �����ϰ� �ֳ���? ȿ������ ��Ʈ���� �ؼҹ��� �������ּ���.', 
NULL, 'person2', 2, SYSDATE, 290, 50, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '�����忡���� ù�λ�', 
'�����忡�� ���� ù�λ��� ����� ���� ����� ���� �̾߱��غ��ô�. ������� �µ����� �پ��� ���� �������ּ���.', 
NULL, 'person3', 3, SYSDATE, 390, 70, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���� �� ���� �̸��� �ۼ���', 
'���� �� ���� �̸����� �ۼ��� �� ������ ���� ���� ���ÿ� ���� �����մϴ�.', 
NULL, 'person4', 4, SYSDATE, 490, 90, 'Y');

INSERT INTO POSTING (POSTING_NO, CATEGORY, TITLE, CONTENT, IMAGE, AUTHOR, USER_NO, CREATED_TIME, VIEW_COUNT, LIKE_COUNT, STATUS)
VALUES (POSTING_SEQ.NEXTVAL, '����', '���� ���� �����ϱ�', 
'���� ������ ȿ�������� �����ϴ� ����� ���� �̾߱��غ��ô�. ���� ��Ʈ�ʰ� �ʿ��� �е鵵 ������ �Բ� �����غ��ƿ�.', 
NULL, 'person5', 5, SYSDATE, 590, 110, 'Y');

-- ���� ī�װ� �� �ؽ��±� �߰�
DECLARE
    TYPE JobCategoryArray IS TABLE OF VARCHAR2(100);
    TYPE HashtagArray IS TABLE OF VARCHAR2(100);
    
    jobCategories JobCategoryArray := JobCategoryArray(
        '��ȹ������', '�����á�ȫ��������', 'ȸ�衤�������繫', '�λ硤�빫��HRD', '�ѹ����������繫',
        'IT���ߡ�������', '������', '�������Ǹš�����', '����㡤TM', '���š����硤����',
        '��ǰ��ȹ��MD', '��������ۡ����', '����', '����', '�Ǽ�������',
        '�Ƿ�', '������R&D', '����', '�̵���ȭ��������', '����������', '����������'
    );
    
    hashtags HashtagArray := HashtagArray(
        '#����غ�', '#ù����', '#Ŀ����', '#�ڱ�Ұ���', '#������',
        '#�ΰ�����', '#��Ʈ��ŷ', '#�ڰ���', '#����', '#��Ʈ��������',
        '#�ð�����', '#��������', '#������', '#��ũ�������뷱��', '#��̻�Ȱ',
        '#��ȭ��õ', '#å����', '#�����ı�', '#��Ʈ�����ؼ�', '#�ڱⰳ��'
    );

    v_posting_no NUMBER;
    v_random_job VARCHAR2(100);
    v_random_hashtag1 VARCHAR2(100);
    v_random_hashtag2 VARCHAR2(100);
    v_random_hashtag3 VARCHAR2(100);
BEGIN
    FOR rec IN (SELECT POSTING_NO, CATEGORY FROM POSTING) LOOP
        v_posting_no := rec.POSTING_NO;

        -- ���� ī�װ� ���� �Ҵ� (ī�װ��� �´� ���� ���� �����ϵ��� ����)
        IF rec.CATEGORY = '����' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(1, 6))); -- ��ȹ~IT����
        ELSIF rec.CATEGORY = 'ä�����' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(6, 11))); -- ������~����
        ELSIF rec.CATEGORY = '����' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(11, 16))); -- ���~�Ƿ�
        ELSIF rec.CATEGORY = '�ڼҼ�' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(16, 21))); -- ����~����
        ELSIF rec.CATEGORY = '�ڰ���' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(1, 21)));
        ELSIF rec.CATEGORY = 'Q&A' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(1, 21)));
        ELSIF rec.CATEGORY = 'Ŀ����' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(1, 21)));
        ELSIF rec.CATEGORY = '����' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(1, 21)));
        ELSIF rec.CATEGORY = '���' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(1, 21)));
        ELSIF rec.CATEGORY = '����' THEN
            v_random_job := jobCategories(TRUNC(DBMS_RANDOM.VALUE(1, 21)));
        END IF;

        -- COMMUNITY_POST_JOB_CATEGORY ���̺� ���� ī�װ� ����
        INSERT INTO COMMUNITY_POST_JOB_CATEGORY (POSTING_NO, JOB_CATEGORY)
        VALUES (v_posting_no, v_random_job);

        -- �ؽ��±� ���� ����
        v_random_hashtag1 := hashtags(TRUNC(DBMS_RANDOM.VALUE(1, hashtags.COUNT + 1)));
        v_random_hashtag2 := hashtags(TRUNC(DBMS_RANDOM.VALUE(1, hashtags.COUNT + 1)));
        v_random_hashtag3 := hashtags(TRUNC(DBMS_RANDOM.VALUE(1, hashtags.COUNT + 1)));

        -- �ߺ� ������ ���� �ٸ� �ؽ��±����� Ȯ��
        IF v_random_hashtag1 != v_random_hashtag2 AND v_random_hashtag1 != v_random_hashtag3 AND v_random_hashtag2 != v_random_hashtag3 THEN
            -- �ؽ��±� ����
            INSERT INTO COMMUNITY_POST_HASHTAG (POSTING_NO, HASHTAG)
            VALUES (v_posting_no, v_random_hashtag1);

            INSERT INTO COMMUNITY_POST_HASHTAG (POSTING_NO, HASHTAG)
            VALUES (v_posting_no, v_random_hashtag2);

            INSERT INTO COMMUNITY_POST_HASHTAG (POSTING_NO, HASHTAG)
            VALUES (v_posting_no, v_random_hashtag3);
        END IF;
    END LOOP;

    COMMIT;
END;
/
    
-- ��� �߰�
-- �� �Խñۿ� �ּ� 2���� ����� �߰��մϴ�.

DECLARE
    CURSOR posting_cursor IS
        SELECT POSTING_NO FROM POSTING;
    v_reply_no NUMBER;
BEGIN
    FOR post IN posting_cursor LOOP
        -- ù ��° ���
        INSERT INTO REPLY (REPLY_NO, POSTING_NO, USER_NO, CONTENT, CREATED_TIME, STATUS)
        VALUES (REPLY_SEQ.NEXTVAL, post.POSTING_NO, TRUNC(DBMS_RANDOM.VALUE(1, 11)), 
                '�� �Խñ� ���� �����մϴ�! �����մϴ�.', SYSDATE, 'Y');

        -- �� ��° ���
        INSERT INTO REPLY (REPLY_NO, POSTING_NO, USER_NO, CONTENT, CREATED_TIME, STATUS)
        VALUES (REPLY_SEQ.NEXTVAL, post.POSTING_NO, TRUNC(DBMS_RANDOM.VALUE(1, 11)), 
                '�����մϴ�. ���� ����� ������ �־��.', SYSDATE, 'Y');
    END LOOP;

    COMMIT;
END;
/

-- Ŀ��
COMMIT;
