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
-- ���� ��ü ��� ��Ȱ��ȭ
SET DEFINE OFF;

BEGIN
    -- =========================
    -- USER_NO = 1 (person1) ��Ʈ������ 1
    -- =========================
    DECLARE
        v_content CLOB;
    BEGIN
        DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
        
        DBMS_LOB.APPEND(v_content, q'[
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
            <p><span style="font-size: 14px;">�� ������Ʈ�� ��Ը� ���ڻ�ŷ� �÷����� �����Ͽ� ����� ������ �ش�ȭ�ϰ�, �������� Ʈ����� ó���� �����ϴ� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
            <p><span style="font-size: 14px;">�ֿ� ������δ� �ǽð� ��� ����, �ֹ� ó�� �ý���, ����� ���� �� ���� �ý��� ���� ���Ե˴ϴ�.</span></p>
            <p><br></p>

            <h2><span style="font-size: 14px;">��� ����</span></h2>
            <ul>
                <li><span style="font-size: 14px;">����Ʈ����: React.js, Redux, TypeScript</span></li>
                <li><span style="font-size: 14px;">�鿣��: Node.js, Express.js, GraphQL</span></li>
                <li><span style="font-size: 14px;">�����ͺ��̽�: PostgreSQL, Redis</span></li>
                <li><span style="font-size: 14px;">����: AWS EC2, Kubernetes, Docker</span></li>
            </ul>
            <p><br></p>

            <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
            <p>React.js�� Redux�� Ȱ���Ͽ� ������ ����� �������̽��� �����Ͽ���, TypeScript�� ����Ͽ� �ڵ��� �������� �������ϴ�.</p>
            <p>�鿣�忡���� Node.js�� Express.js�� �̿��Ͽ� RESTful API�� �����Ͽ�����, GraphQL�� �����Ͽ� Ŭ���̾�Ʈ���� ȿ������ ������ ����� �����Ͽ����ϴ�.</p>
            <p>PostgreSQL�� ����Ͽ� �������� �ŷڼ��� �����ϰ�, Redis�� ���� ĳ�� ��Ŀ������ �����Ͽ� ���� �ӵ��� �����׽��ϴ�.</p>
            <p>AWS EC2�� Kubernetes�� Ȱ���Ͽ� ���ø����̼��� �����̳�ȭ�ϰ�, Docker�� �̿��Ͽ� ���� �ڵ�ȭ�� �����Ͽ����ϴ�.</p>
            <p><br></p>

            <!-- �ڵ� ��� �߰� -->
            <div class="colorscripter-code" style="color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto">
                <table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#fafafa;border-radius:4px;" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td style="padding:6px;border-right:2px solid #e5e5e5">
                                <div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div>
                                <div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div>
                                <div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div>
                                <div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div>
                                <div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div>
                                <div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div>
                                <div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div>
                                <div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div>
                                <div style="line-height:130%">33</div><div style="line-height:130%">34</div>
                            </div>
                            </td>
                            <td style="padding:6px 0;text-align:left">
                                <div style="margin:0;padding:0;color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%">
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#999999">// Express.js API ����</span></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">const express = require('express');</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">const app = express();</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">app.use(express.json());</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">app.get('/api/customers', (req, res) => {</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    // �� ��� ��ȸ ����</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    res.json(customers);</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">});</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">app.listen(5000, () => {</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    console.log('Server is running on port 5000');</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">});</div>
                                </div>
                            </td>
                            <td style="vertical-align:bottom;padding:0 2px 4px 0">
                                <a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white">
                                    <span style="font-size:9px;word-break:normal;background-color:#e5e5e5;color:white;border-radius:10px;padding:1px">cs</span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
            <p><span style="font-size: 18px;">�� ������Ʈ�� ���� ��Ը� ���ø����̼��� Ǯ���� ���߿� ���� ���� ���ظ� ��� �Ǿ�����, </span></p>
            <p><span style="font-size: 18px;">React.js�� Redux�� Ȱ���� ���� ������ �߿伺�� ü���Ͽ����ϴ�. </span></p>
            <p><span style="font-size: 18px;">����, AWS�� Kubernetes�� �̿��� �����̳�ȭ �� ���� �ڵ�ȭ ������ ���������ν� Ŭ���� ȯ�濡���� ���ø����̼� ��� ���� �ǹ� ������ �����Ͽ����ϴ�.</span></p>
        ]');
        
        -- ��Ʈ������ ����
        INSERT INTO PORTFOLIO (
            PORTFOLIO_ID,
            USER_NO,
            TITLE,
            CONTENT,
            RESUME_NO
        ) VALUES (
            SEQ_PORTFOLIO_ID.NEXTVAL,
            1,
            '��Ը� ���ڻ�ŷ� �÷��� ����',
            v_content,
            NULL
        );
        
        -- �ӽ� CLOB ����
        DBMS_LOB.FREETEMPORARY(v_content);
    END;
    
    -- =========================
    -- USER_NO = 1 (person1) ��Ʈ������ 2
    -- =========================
    DECLARE
        v_content CLOB;
    BEGIN
        DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
        
        -- ������Ʈ ����
        DBMS_LOB.APPEND(v_content, q'[
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
            <p><span style="font-size: 14px;">�� ������Ʈ�� �ǽð� ������ �м� �� �ð�ȭ�� ���� ����� �ǻ������ �����ϴ� ��ú��� �ý����� �����ϴ� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
            <p><span style="font-size: 14px;">�ֿ� ������δ� �ǽð� ������ ��Ʈ����, ����� ������ ��ú���, ������ ���͸� �� Ž�� ��� ���� ���Ե˴ϴ�.</span></p>
            <p><br></p>

            <h2><span style="font-size: 14px;">��� ����</span></h2>
            <ul>
                <li><span style="font-size: 14px;">����Ʈ����: React.js, D3.js, TypeScript</span></li>
                <li><span style="font-size: 14px;">�鿣��: Python, Flask, WebSocket</span></li>
                <li><span style="font-size: 14px;">�����ͺ��̽�: MongoDB, InfluxDB</span></li>
                <li><span style="font-size: 14px;">����: AWS Lambda, Docker</span></li>
            </ul>
            <p><br></p>

            <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
            <p>React.js�� D3.js�� Ȱ���Ͽ� ���ͷ�Ƽ���� ������ �ð�ȭ �׷����� �����Ͽ�����, </p>
            <p>TypeScript�� ����Ͽ� �ڵ��� �������� ������������ �����׽��ϴ�. </p>
            <p>�鿣�忡���� Python�� Flask�� �̿��Ͽ� �ǽð� ������ ��Ʈ������ ó���Ͽ���, WebSocket�� ���� ����Ʈ������� �ǽð� ����� �����Ͽ����ϴ�.</p>
            <p>MongoDB�� InfluxDB�� ����Ͽ� �پ��� ������ �����͸� ȿ�������� �����ϰ� �����Ͽ�����, AWS Lambda�� Docker�� ���� �������� ��Ű��ó�� �����Ͽ� Ȯ�强�� Ȯ���Ͽ����ϴ�.</p>
            <p><br></p>

            <!-- �ڵ� ��� �߰� -->
            <div class="colorscripter-code" style="color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto">
                <table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#fafafa;border-radius:4px;" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td style="padding:6px;border-right:2px solid #e5e5e5">
                                <div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div>
                                <div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div>
                                <div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div>
                                <div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div>
                                <div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div>
                                <div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div>
                                <div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div>
                                <div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div>
                                <div style="line-height:130%">33</div><div style="line-height:130%">34</div>
                            </div>
                            </td>
                            <td style="padding:6px 0;text-align:left">
                                <div style="margin:0;padding:0;color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%">
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#999999">// Flask WebSocket ����</span></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">from flask import Flask</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">from flask_socketio import SocketIO, emit</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">app = Flask(__name__)</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">app.config["SECRET_KEY"] = "secret!"</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">socketio = SocketIO(app)</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">@socketio.on("connect")</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">def handle_connect():</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    emit("response", {"data": "Connected"})</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">if __name__ == "__main__":</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    socketio.run(app, host="0.0.0.0", port=5000)</div>
                                </div>
                            </td>
                            <td style="vertical-align:bottom;padding:0 2px 4px 0">
                                <a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white">
                                    <span style="font-size:9px;word-break:normal;background-color:#e5e5e5;color:white;border-radius:10px;padding:1px">cs</span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
            <p><span style="font-size: 18px;">�� ������Ʈ�� ���� �ǽð� ������ ó�� �� �ð�ȭ�� �߿伺�� �����ϰ� �Ǿ�����, </span></p>
            <p><span style="font-size: 18px;">React.js�� D3.js�� Ȱ���� ������ ������ �ð�ȭ �׷����� ȿ�������� �����ϴ� �ɷ��� ����Ͽ����ϴ�. </span></p>
            <p><span style="font-size: 18px;">Flask�� WebSocket�� �̿��� �ǽð� ������ ��Ʈ���� ������ ���� �鿣��� ����Ʈ���� ���� ȿ������ ������ ��� ����� �������ϴ�.</span></p>
            <p><span style="font-size: 18px;">MongoDB�� InfluxDB�� Ȱ���� �پ��� �����ͺ��̽� ���� ������ �׾�����, </span></p>
            <p><span style="font-size: 18px;">AWS Lambda�� Docker�� �̿��� �������� ��Ű��ó ������ ���� Ŭ���� ȯ�濡���� ���ø����̼� Ȯ�强�� Ȯ���ϴ� ����� �н��Ͽ����ϴ�.</span></p>
        ]');
    
        -- ��Ʈ������ ����
        INSERT INTO PORTFOLIO (
            PORTFOLIO_ID,
            USER_NO,
            TITLE,
            CONTENT,
            RESUME_NO
        ) VALUES (
            SEQ_PORTFOLIO_ID.NEXTVAL,
            1,
            '�ǽð� ������ �м� �� �ð�ȭ ��ú��� ����',
            v_content,
            NULL
        );

        -- �ӽ� CLOB ����
        DBMS_LOB.FREETEMPORARY(v_content);
    END;
    
    -- =========================
    -- USER_NO = 1 (person1) ��Ʈ������ 3
    -- =========================
    DECLARE
        v_content CLOB;
    BEGIN
        DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
        
        -- ������Ʈ ����
        DBMS_LOB.APPEND(v_content, q'[
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
            <p><span style="font-size: 14px;">�� ������Ʈ�� �ӽŷ��� �˰����� Ȱ���Ͽ� ����� �ൿ�� �����ϰ�, ������ ��õ �ý����� �����ϴ� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
            <p><span style="font-size: 14px;">�ֿ� ������δ� ����� ������ �м�, ���� �� ����, �ǽð� ��õ ���� ���� ���Ե˴ϴ�.</span></p>
            <p><br></p>

            <h2><span style="font-size: 14px;">��� ����</span></h2>
            <ul>
                <li><span style="font-size: 14px;">����Ʈ����: Angular, NgRx</span></li>
                <li><span style="font-size: 14px;">�鿣��: Python, Django, TensorFlow</span></li>
                <li><span style="font-size: 14px;">�����ͺ��̽�: MySQL, Elasticsearch</span></li>
                <li><span style="font-size: 14px;">����: Google Cloud Platform, Docker</span></li>
            </ul>
            <p><br></p>

            <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
            <p>Angular�� NgRx�� Ȱ���Ͽ� ������ ���� ������ ȿ�������� ó���Ͽ���, </p>
            <p>Django�� TensorFlow�� �̿��Ͽ� �ӽŷ��� ���� �����Ͽ����ϴ�. </p>
            <p>MySQL�� Elasticsearch�� ����Ͽ� ��뷮 �����͸� ȿ�������� �����ϰ� �˻��ϴ� �ý����� �����Ͽ����ϴ�.</p>
            <p>Google Cloud Platform�� Docker�� ����Ͽ� ���ø����̼��� �����̳�ȭ�ϰ�, Ŭ���� ȯ�濡���� �ڵ� ������ �����Ͽ����ϴ�.</p>
            <p><br></p>

            <!-- �ڵ� ��� �߰� -->
            <div class="colorscripter-code" style="color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto">
                <table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#fafafa;border-radius:4px;" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td style="padding:6px;border-right:2px solid #e5e5e5">
                                <div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div>
                                <div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div>
                                <div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div>
                                <div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div>
                                <div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div>
                                <div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div>
                                <div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div>
                                <div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div>
                                <div style="line-height:130%">33</div><div style="line-height:130%">34</div>
                            </div>
                            </td>
                            <td style="padding:6px 0;text-align:left">
                                <div style="margin:0;padding:0;color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%">
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#999999">// TensorFlow �� ����</span></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">import tensorflow as tf</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">from tensorflow.keras.models import Sequential</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">from tensorflow.keras.layers import Dense</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"># �� ����</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">model = Sequential()</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">model.add(Dense(64, activation='relu', input_shape=(input_dim,)))</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">model.add(Dense(1, activation='sigmoid'))</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"># �� ������</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"># �� �Ʒ�</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">model.fit(X_train, y_train, epochs=10, batch_size=32, validation_data=(X_val, y_val))</div>
                                </div>
                            </td>
                            <td style="vertical-align:bottom;padding:0 2px 4px 0">
                                <a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white">
                                    <span style="font-size:9px;word-break:normal;background-color:#e5e5e5;color:white;border-radius:10px;padding:1px">cs</span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
            <p><span style="font-size: 18px;">�ӽŷ��� �˰����� ���� ����Ͻ� ������ �����Ͽ�, ����� �ൿ ������ ��Ȯ���� ����ų �� �־����ϴ�. </span></p>
            <p><span style="font-size: 18px;">React.js�� D3.js�� Ȱ���� ������ �ð�ȭ ������ ����, ������ �����͸� ȿ�������� �����ϴ� ����� �������ϴ�. </span></p>
            <p><span style="font-size: 18px;">Django�� TensorFlow�� �̿��� �鿣�� ������ ����, �ӽŷ��� ���� ���� �� ���� ������ �����Ͽ�����, </span></p>
            <p><span style="font-size: 18px;">Google Cloud Platform�� Docker�� Ȱ���� Ŭ���� ���� ������ ����, ���ø����̼��� Ȯ�强�� �������� Ȯ���ϴ� ����� �н��Ͽ����ϴ�.</span></p>
        ]');

        -- ��Ʈ������ ����
        INSERT INTO PORTFOLIO (
            PORTFOLIO_ID,
            USER_NO,
            TITLE,
            CONTENT,
            RESUME_NO
        ) VALUES (
            SEQ_PORTFOLIO_ID.NEXTVAL,
            1,
            '�ӽŷ��� ��� ����� �ൿ ���� �� ��õ �ý��� ����',
            v_content,
            NULL
        );
        
        -- �ӽ� CLOB ����
        DBMS_LOB.FREETEMPORARY(v_content);
    END;

    -- =========================
    -- USER_NO = 1 (person1) ��Ʈ������ 4
    -- =========================
    DECLARE
        v_content CLOB;
    BEGIN
        DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
        
        -- ������Ʈ ����
        DBMS_LOB.APPEND(v_content, q'[
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
            <p><span style="font-size: 14px;">�� ������Ʈ�� IoT ����̽��� Ȱ���Ͽ� ����Ʈ ���丮 �ַ���� �����ϴ� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
            <p><span style="font-size: 14px;">�ֿ� ������δ� �ǽð� ���� ����͸�, ���� ��������, ������ ȿ�� ����ȭ ���� ���Ե˴ϴ�.</span></p>
            <p><br></p>

            <h2><span style="font-size: 14px;">��� ����</span></h2>
            <ul>
                <li><span style="font-size: 14px;">IoT �÷���: AWS IoT Core, MQTT</span></li>
                <li><span style="font-size: 14px;">���α׷��� ���: Python, C++</span></li>
                <li><span style="font-size: 14px;">�����ͺ��̽�: InfluxDB, TimescaleDB</span></li>
                <li><span style="font-size: 14px;">����: Azure IoT Hub, Docker</span></li>
            </ul>
            <p><br></p>

            <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
            <p>Python�� C++�� ����Ͽ� �پ��� IoT ������ �����ϰ�, �ǽð� �����͸� ���� �� ó���ϴ� �ý����� �����Ͽ����ϴ�. </p>
            <p>AWS IoT Core�� MQTT ���������� Ȱ���Ͽ� IoT ����̽��� Ŭ���� ���� �������� ������ ����� �����Ͽ����ϴ�.</p>
            <p>InfluxDB�� TimescaleDB�� �̿��Ͽ� �ð迭 �����͸� ȿ�������� �����ϰ�, �ǽð� ������ �м��� ���� ���� ������ ���¸� ����͸��Ͽ����ϴ�.</p>
            <p>Azure IoT Hub�� Docker�� ����Ͽ� ����Ʈ ���丮 �ַ���� �����̳�ȭ�ϰ�, Ŭ���� ȯ�濡 �����Ͽ� ���� Ȯ�强�� �������� Ȯ���Ͽ����ϴ�.</p>
            <p><br></p>

            <!-- �ڵ� ��� �߰� -->
            <div class="colorscripter-code" style="color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto">
                <table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#fafafa;border-radius:4px;" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td style="padding:6px;border-right:2px solid #e5e5e5">
                                <div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div>
                                <div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div>
                                <div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div>
                                <div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div>
                                <div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div>
                                <div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div>
                                <div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div>
                                <div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div>
                                <div style="line-height:130%">33</div><div style="line-height:130%">34</div>
                            </div>
                            </td>
                            <td style="padding:6px 0;text-align:left">
                                <div style="margin:0;padding:0;color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%">
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#999999">// MQTT �޽��� ���� ����</span></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">import paho.mqtt.client as mqtt</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">def on_connect(client, userdata, flags, rc):</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    print("Connected with result code "+str(rc))</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    client.subscribe("factory/sensors")</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">def on_message(client, userdata, msg):</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    print(msg.topic+" "+str(msg.payload))</div>
                                </div>
                            </td>
                            <td style="vertical-align:bottom;padding:0 2px 4px 0">
                                <a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white">
                                    <span style="font-size:9px;word-break:normal;background-color:#e5e5e5;color:white;border-radius:10px;padding:1px">cs</span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
            <p><span style="font-size: 18px;">�ӽŷ��� �˰����� ���� ����Ͻ� ������ �����Ͽ�, ����� �ൿ ������ ��Ȯ���� ����ų �� �־����ϴ�. </span></p>
            <p><span style="font-size: 18px;">React.js�� D3.js�� Ȱ���� ������ �ð�ȭ ������ ����, ������ �����͸� ȿ�������� �����ϴ� ����� �������ϴ�. </span></p>
            <p><span style="font-size: 18px;">Django�� TensorFlow�� �̿��� �鿣�� ������ ����, �ӽŷ��� ���� ���� �� ���� ������ �����Ͽ�����, </span></p>
            <p><span style="font-size: 18px;">Google Cloud Platform�� Docker�� Ȱ���� Ŭ���� ���� ������ ����, ���ø����̼��� Ȯ�强�� �������� Ȯ���ϴ� ����� �н��Ͽ����ϴ�.</span></p>
        ]');

        -- ��Ʈ������ ����
        INSERT INTO PORTFOLIO (
            PORTFOLIO_ID,
            USER_NO,
            TITLE,
            CONTENT,
            RESUME_NO
        ) VALUES (
            SEQ_PORTFOLIO_ID.NEXTVAL,
            1,
            '���ü�� ��� Ż�߾�ȭ ���� �÷��� ����',
            v_content,
            NULL
        );
        
        -- �ӽ� CLOB ����
        DBMS_LOB.FREETEMPORARY(v_content);
    END;

    -- =========================
    -- USER_NO = 2 (person2) ��Ʈ������ 1
    -- =========================
    DECLARE
        v_content CLOB;
    BEGIN
        DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
        
        -- ������Ʈ ����
        DBMS_LOB.APPEND(v_content, q'[
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
            <p><span style="font-size: 14px;">�� ������Ʈ�� ����� ���ø����̼��� �����Ͽ� ����ڿ��� ���� ���� ���񽺸� �����ϴ� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
            <p><span style="font-size: 14px;">�ֿ� ������δ� �ǽð� ���� ��ȸ, �۱�, ���� ���� ���� ���Ե˴ϴ�.</span></p>
            <p><br></p>

            <h2><span style="font-size: 14px;">��� ����</span></h2>
            <ul>
                <li><span style="font-size: 14px;">����Ʈ����: React Native</span></li>
                <li><span style="font-size: 14px;">�鿣��: Node.js, Express.js</span></li>
                <li><span style="font-size: 14px;">�����ͺ��̽�: PostgreSQL</span></li>
                <li><span style="font-size: 14px;">����: Firebase, Docker</span></li>
            </ul>
            <p><br></p>

            <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
            <p>React Native�� Ȱ���Ͽ� iOS�� Android���� �����ϴ� ũ�ν� �÷��� ����� ���ø����̼��� �����Ͽ�����, </p>
            <p>Node.js�� Express.js�� ����Ͽ� RESTful API�� �����Ͽ����ϴ�. </p>
            <p>PostgreSQL�� �̿��Ͽ� �������� ������ ������ �����Ͽ�����, Firebase�� Docker�� Ȱ���Ͽ� ���ø����̼��� ȿ�������� �����Ͽ����ϴ�.</p>
            <p><br></p>

            <!-- �ڵ� ��� �߰� -->
            <div class="colorscripter-code" style="color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto">
                <table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#fafafa;border-radius:4px;" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td style="padding:6px;border-right:2px solid #e5e5e5">
                                <div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div>
                                <div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div>
                                <div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div>
                                <div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div>
                                <div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div>
                                <div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div>
                                <div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div>
                                <div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div>
                                <div style="line-height:130%">33</div><div style="line-height:130%">34</div>
                            </div>
                            </td>
                            <td style="padding:6px 0;text-align:left">
                                <div style="margin:0;padding:0;color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%">
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#999999">// React Native ������Ʈ ����</span></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">import React from 'react';</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">import { View, Text, StyleSheet } from 'react-native';</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">const AccountBalance = ({ balance }) => {</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    return (</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">        <View style={styles.container}>${balance}</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">            <Text style={styles.label}>���� �ܾ�:</Text></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">            <Text style={styles.balance}>${balance}</Text></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">        </View></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    );</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">};</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">export default AccountBalance;</div>
                                </div>
                            </td>
                            <td style="vertical-align:bottom;padding:0 2px 4px 0">
                                <a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white">
                                    <span style="font-size:9px;word-break:normal;background-color:#e5e5e5;color:white;border-radius:10px;padding:1px">cs</span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
            <p><span style="font-size: 18px;">React Native�� Ȱ���� ũ�ν� �÷��� ����� ���ø����̼� ������ ����, </span></p>
            <p><span style="font-size: 18px;">����� ����� �������̽� ���� �� ���� ������ ���� �ǹ� ������ �׾ҽ��ϴ�. </span></p>
            <p><span style="font-size: 18px;">Node.js�� Express.js�� �̿��� �鿣�� ������ ����, RESTful API ���� �� ���� �� ���� ���� �ɷ��� �����׽��ϴ�.</span></p>
            <p><span style="font-size: 18px;">PostgreSQL�� ����� �����ͺ��̽� ���� �� ����ȭ ������ ����, ������ ������ �߿伺�� �����ϰ� �Ǿ����ϴ�.</span></p>
            <p><span style="font-size: 18px;">Firebase�� Docker�� Ȱ���� Ŭ���� ������ ����, ���ø����̼��� Ȯ�强�� ������������ ���̴� ����� �н��Ͽ����ϴ�.</span></p>
        ]');

        -- ��Ʈ������ ����
        INSERT INTO PORTFOLIO (
            PORTFOLIO_ID,
            USER_NO,
            TITLE,
            CONTENT,
            RESUME_NO
        ) VALUES (
            SEQ_PORTFOLIO_ID.NEXTVAL,
            2,
            '����� ���� ���ø����̼� ����',
            v_content,
            NULL
        );
        
        -- �ӽ� CLOB ����
        DBMS_LOB.FREETEMPORARY(v_content);
    END;

    -- =========================
    -- USER_NO = 2 (person2) ��Ʈ������ 2
    -- =========================
    DECLARE
        v_content CLOB;
    BEGIN
        DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
        
        -- ������Ʈ ����
        DBMS_LOB.APPEND(v_content, q'[
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
            <p><span style="font-size: 14px;">�� ������Ʈ�� �Ҽ� �̵�� �÷����� �����Ͽ� ����� ���� ����� ���� ������ �����ϴ� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
            <p><span style="font-size: 14px;">�ֿ� ������δ� �Խù� �ۼ�, ���, ���ƿ�, �ǽð� �˸� ���� ���Ե˴ϴ�.</span></p>
            <p><br></p>

            <h2><span style="font-size: 14px;">��� ����</span></h2>
            <ul>
                <li><span style="font-size: 14px;">����Ʈ����: Vue.js, Vuex</span></li>
                <li><span style="font-size: 14px;">�鿣��: Ruby on Rails</span></li>
                <li><span style="font-size: 14px;">�����ͺ��̽�: MySQL</span></li>
                <li><span style="font-size: 14px;">����: Heroku, Docker</span></li>
            </ul>
            <p><br></p>

            <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
            <p>Vue.js�� Vuex�� Ȱ���Ͽ� ������ ����� �������̽��� �����Ͽ�����, </p>
            <p>Ruby on Rails�� ����Ͽ� RESTful API�� �����Ͽ����ϴ�. </p>
            <p>MySQL�� �̿��Ͽ� ����� ������ �� �Խù� �����͸� ȿ�������� �����Ͽ�����, </p>
            <p>Heroku�� Docker�� ����Ͽ� ���ø����̼��� Ŭ���� ȯ�濡 �����ϰ�, �������� ���� �� ����(CI/CD)�� �����Ͽ����ϴ�.</p>
            <p><br></p>

            <!-- �ڵ� ��� �߰� -->
            <div class="colorscripter-code" style="color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto">
                <table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#fafafa;border-radius:4px;" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td style="padding:6px;border-right:2px solid #e5e5e5">
                                <div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div>
                                <div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div>
                                <div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div>
                                <div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div>
                                <div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div>
                                <div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div>
                                <div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div>
                                <div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div>
                                <div style="line-height:130%">33</div><div style="line-height:130%">34</div>
                            </div>
                            </td>
                            <td style="padding:6px 0;text-align:left">
                                <div style="margin:0;padding:0;color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%">
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#999999">// Ruby on Rails ��Ʈ�ѷ� ����</span></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">class PostsController < ApplicationController</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    def index</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">        @posts = Post.all</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">        render json: @posts</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    end</div>
                                </div>
                            </td>
                            <td style="vertical-align:bottom;padding:0 2px 4px 0">
                                <a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white">
                                    <span style="font-size:9px;word-break:normal;background-color:#e5e5e5;color:white;border-radius:10px;padding:1px">cs</span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
            <p><span style="font-size: 18px;">Vue.js�� Vuex�� Ȱ���� ������ ����� �������̽� ������ ����, </span></p>
            <p><span style="font-size: 18px;">ȿ������ ���� ������ ������Ʈ ������ �߿伺�� ü���Ͽ����ϴ�. </span></p>
            <p><span style="font-size: 18px;">Ruby on Rails�� �̿��� �鿣�� ������ ����, RESTful API ���� �� �����ͺ��̽� ���� �ɷ��� �����׽��ϴ�.</span></p>
            <p><span style="font-size: 18px;">Firebase�� Docker�� Ȱ���� Ŭ���� ������ ����, ���ø����̼��� Ȯ�强�� ������������ ���̴� ����� �н��Ͽ����ϴ�.</span></p>
        ]');

        -- ��Ʈ������ ����
        INSERT INTO PORTFOLIO (
            PORTFOLIO_ID,
            USER_NO,
            TITLE,
            CONTENT,
            RESUME_NO
        ) VALUES (
            SEQ_PORTFOLIO_ID.NEXTVAL,
            2,
            '�Ҽ� �̵�� �÷��� ����',
            v_content,
            NULL
        );
        
        -- �ӽ� CLOB ����
        DBMS_LOB.FREETEMPORARY(v_content);
    END;

    -- =========================
    -- USER_NO = 2 (person2) ��Ʈ������ 2
    -- =========================
    DECLARE
        v_content CLOB;
    BEGIN
        DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
        
        -- ������Ʈ ����
        DBMS_LOB.APPEND(v_content, q'[
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
            <p><span style="font-size: 14px;">�� ������Ʈ�� ������ �м� ������ �����Ͽ� ����� ����Ͻ� �λ���Ʈ�� �����ϴ� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
            <p><span style="font-size: 14px;">�ֿ� ������δ� ������ �ð�ȭ, ���� ����, ��ú��� Ŀ���͸���¡ ���� ���Ե˴ϴ�.</span></p>
            <p><br></p>

            <h2><span style="font-size: 14px;">��� ����</span></h2>
            <ul>
                <li><span style="font-size: 14px;">����Ʈ����: React.js, Chart.js</span></li>
                <li><span style="font-size: 14px;">�鿣��: Python, Flask, Pandas</span></li>
                <li><span style="font-size: 14px;">�����ͺ��̽�: SQLite</span></li>
                <li><span style="font-size: 14px;">����: AWS Elastic Beanstalk, Docker</span></li>
            </ul>
            <p><br></p>

            <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
            <p>React.js�� Chart.js�� Ȱ���Ͽ� ����� ģȭ���� ������ �ð�ȭ �������̽��� �����Ͽ�����, </p>
            <p>Python�� Flask�� ����Ͽ� ������ �м� �� ���� ������ ���� �鿣�� �ý����� �����Ͽ����ϴ�.</p>
            <p>SQLite�� �̿��Ͽ� �淮ȭ�� �����ͺ��̽��� �����ϰ�, Pandas�� Ȱ���Ͽ� ȿ������ ������ ó�� �� �м��� �����Ͽ����ϴ�.</p>
            <p>AWS Elastic Beanstalk�� Docker�� Ȱ���Ͽ� ���ø����̼��� Ŭ���� ȯ�濡 �����ϰ�, �������� ���� �� ����(CI/CD) ������������ �����Ͽ����ϴ�.</p>
            <p><br></p>

            <!-- �ڵ� ��� �߰� -->
            <div class="colorscripter-code" style="color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto">
                <table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#fafafa;border-radius:4px;" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td style="padding:6px;border-right:2px solid #e5e5e5">
                                <div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div>
                                <div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div>
                                <div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div>
                                <div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div>
                                <div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div>
                                <div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div>
                                <div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div>
                                <div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div>
                                <div style="line-height:130%">33</div><div style="line-height:130%">34</div>
                            </div>
                            </td>
                            <td style="padding:6px 0;text-align:left">
                                <div style="margin:0;padding:0;color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%">
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#999999">// Flask API ��������Ʈ ����</span></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">from flask import Flask, jsonify</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">app = Flask(__name__)</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">@app.route('/api/posts', methods=['GET'])</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">def get_posts():</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    # �Խù� ������ ��ȸ ����</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    posts = [{'id': 1, 'title': 'ù ��° �Խù�'}, {'id': 2, 'title': '�� ��° �Խù�'}]</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    return jsonify(posts)</div>
                                </div>
                            </td>
                            <td style="vertical-align:bottom;padding:0 2px 4px 0">
                                <a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white">
                                    <span style="font-size:9px;word-break:normal;background-color:#e5e5e5;color:white;border-radius:10px;padding:1px">cs</span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
            <p><span style="font-size: 18px;">Vue.js�� Vuex�� Ȱ���� ����� �������̽� ������ ����, </span></p>
            <p><span style="font-size: 18px;">ȿ������ ���� ������ ������Ʈ ������ �߿伺�� ü���Ͽ����ϴ�. </span></p>
            <p><span style="font-size: 18px;">Ruby on Rails�� �̿��� �鿣�� ������ ����, RESTful API ���� �� �����ͺ��̽� ���� �ɷ��� �����׽��ϴ�.</span></p>
            <p><span style="font-size: 18px;">Firebase�� Docker�� Ȱ���� Ŭ���� ������ ����, ���ø����̼��� Ȯ�强�� ������������ ���̴� ����� �н��Ͽ����ϴ�.</span></p>
        ]');

        -- ��Ʈ������ ����
        INSERT INTO PORTFOLIO (
            PORTFOLIO_ID,
            USER_NO,
            TITLE,
            CONTENT,
            RESUME_NO
        ) VALUES (
            SEQ_PORTFOLIO_ID.NEXTVAL,
            2,
            '������ �м� ���� ����',
            v_content,
            NULL
        );
        
        -- �ӽ� CLOB ����
        DBMS_LOB.FREETEMPORARY(v_content);
    END;
    
    -- =========================
    -- USER_NO = 1 (person1) ��Ʈ������ 5
    -- =========================
    DECLARE
        v_content CLOB;
    BEGIN
        DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
        
        -- ������Ʈ ����
        DBMS_LOB.APPEND(v_content, q'[
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
            <p><span style="font-size: 14px;">�� ������Ʈ�� �ΰ����� ��� ê���� �����Ͽ� �� ������ �ڵ�ȭ�ϰ�, ����� �������� ����Ű�� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
            <p><span style="font-size: 14px;">�ֿ� ������δ� �ڿ��� ó��, ��ȭ ����, �н� ���, ��Ƽ �÷��� ���� ���� ���Ե˴ϴ�.</span></p>
            <p><br></p>

            <h2><span style="font-size: 14px;">��� ����</span></h2>
            <ul>
                <li><span style="font-size: 14px;">����Ʈ����: React.js</span></li>
                <li><span style="font-size: 14px;">�鿣��: Python, Flask, TensorFlow</span></li>
                <li><span style="font-size: 14px;">NLP ���̺귯��: NLTK, spaCy</span></li>
                <li><span style="font-size: 14px;">����: AWS Lambda, Docker</span></li>
            </ul>
            <p><br></p>

            <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
            <p>Python�� Flask�� ����Ͽ� ê���� �鿣�带 �����Ͽ�����, TensorFlow�� �̿��Ͽ� ������ ����� �ڿ��� ó�� ���� �����Ͽ����ϴ�. </p>
            <p>NLTK�� spaCy�� Ȱ���Ͽ� ����� �Է��� ��ó���ϰ�, �پ��� �ڿ��� ó�� ����� �����Ͽ� ��ȭ�� ��Ȯ���� �����׽��ϴ�.</p>
            <p>React.js�� ����Ͽ� ����� ģȭ���� �� �������̽��� �����Ͽ�����, </p>
            <p>AWS Lambda�� Docker�� Ȱ���Ͽ� ê���� �������� ��Ű��ó�� �����Ͽ� ���� Ȯ�强�� �������� Ȯ���Ͽ����ϴ�.</p>
            <p><br></p>

            <!-- �ڵ� ��� �߰� -->
            <div class="colorscripter-code" style="color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto">
                <table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#fafafa;border-radius:4px;" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td style="padding:6px;border-right:2px solid #e5e5e5">
                                <div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div>
                                <div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div>
                                <div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div>
                                <div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div>
                                <div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div>
                                <div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div>
                                <div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div>
                                <div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div>
                                <div style="line-height:130%">33</div><div style="line-height:130%">34</div>
                            </div>
                            </td>
                            <td style="padding:6px 0;text-align:left">
                                <div style="margin:0;padding:0;color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%">
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#999999">// Flask ê�� API ����</span></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">from flask import Flask, request, jsonify</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">import tensorflow as tf</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">import numpy as np</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">app = Flask(__name__)</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">model = tf.keras.models.load_model('chatbot_model.h5')</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">@app.route('/chat', methods=['POST'])</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">def chat():</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    user_input = request.json['message']</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    # �Է� ��ó�� ����</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    processed_input = preprocess(user_input)</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    prediction = model.predict(np.array([processed_input]))</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    response = generate_response(prediction)</div>
                                    <div style="padding:0 6px; white-space:pre; line-height:130%">    return jsonify({'reply': response})</div>
                                </div>
                            </td>
                            <td style="vertical-align:bottom;padding:0 2px 4px 0">
                                <a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white">
                                    <span style="font-size:9px;word-break:normal;background-color:#e5e5e5;color:white;border-radius:10px;padding:1px">cs</span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
            <p><span style="font-size: 18px;">�ӽŷ��� �˰����� ���� ���ø����̼ǿ� �����Ͽ�, </span></p>
            <p><span style="font-size: 18px;">����� �ൿ ���� �� ������ ��õ �ý����� ��Ȯ���� ����ų �� �־����ϴ�. </span></p>
            <p><span style="font-size: 18px;">React Native�� ����� ũ�ν� �÷��� ����� ���ø����̼� ���� ������ ����, </span></p>
            <p><span style="font-size: 18px;">ȿ������ ����� �������̽� ���� �� ���� ���� �ɷ��� ��ȭ�Ͽ����ϴ�.</span></p>
            <p><span style="font-size: 18px;">Flask�� TensorFlow�� �̿��� �鿣�� ������ ����, </span></p>
            <p><span style="font-size: 18px;">������ ���� ���� �� �ǽð� ������ ó�� �ɷ��� �����׽��ϴ�.</span></p>
            <p><span style="font-size: 18px;">AWS Lambda�� Docker�� Ȱ���� �������� ��Ű��ó ������ ����, </span></p>
            <p><span style="font-size: 18px;">���ø����̼��� Ȯ�强�� ������������ ���̴� ����� �н��Ͽ����ϴ�.</span></p>
        ]');

        -- ��Ʈ������ ����
        INSERT INTO PORTFOLIO (
            PORTFOLIO_ID,
            USER_NO,
            TITLE,
            CONTENT,
            RESUME_NO
        ) VALUES (
            SEQ_PORTFOLIO_ID.NEXTVAL,
            1,
            '�ΰ����� ê�� ���� ������Ʈ',
            v_content,
            NULL
        );
        
        -- �ӽ� CLOB ����
        DBMS_LOB.FREETEMPORARY(v_content);
    END;
    
    -- =========================
-- USER_NO = 1 (person1) ��Ʈ������ 6
-- =========================
DECLARE
    v_content CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
    
    -- ������Ʈ ����
    DBMS_LOB.APPEND(v_content, q'[
        <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
        <p><span style="font-size: 14px;">�� ������Ʈ�� �ΰ����� ��� ê���� �����Ͽ� �� ������ �ڵ�ȭ�ϰ�, ����� �������� ����Ű�� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
        <p><span style="font-size: 14px;">�ֿ� ������δ� �ڿ��� ó��, ��ȭ ����, �н� ���, ��Ƽ �÷��� ���� ���� ���Ե˴ϴ�.</span></p>
        <p><br></p>

        <h2><span style="font-size: 14px;">��� ����</span></h2>
        <ul>
            <li><span style="font-size: 14px;">����Ʈ����: React.js</span></li>
            <li><span style="font-size: 14px;">�鿣��: Python, Flask, TensorFlow</span></li>
            <li><span style="font-size: 14px;">NLP ���̺귯��: NLTK, spaCy</span></li>
            <li><span style="font-size: 14px;">����: AWS Lambda, Docker</span></li>
        </ul>
        <p><br></p>

        <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
        <p>Python�� Flask�� ����Ͽ� ê���� �鿣�带 �����Ͽ�����, TensorFlow�� �̿��Ͽ� ������ ����� �ڿ��� ó�� ���� �����Ͽ����ϴ�.</p>
        <p>NLTK�� spaCy�� Ȱ���Ͽ� ����� �Է��� ��ó���ϰ�, �پ��� �ڿ��� ó�� ����� �����Ͽ� ��ȭ�� ��Ȯ���� �����׽��ϴ�.</p>
        <p>React.js�� ����Ͽ� ����� ģȭ���� �� �������̽��� �����Ͽ�����, </p>
        <p>AWS Lambda�� Docker�� Ȱ���Ͽ� ê���� �������� ��Ű��ó�� �����Ͽ� ���� Ȯ�强�� �������� Ȯ���Ͽ����ϴ�.</p>
        <p><br></p>

        <!-- �ڵ� ��� �߰� -->
        <div class="colorscripter-code" style="color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important; position:relative !important;overflow:auto">
            <table class="colorscripter-code-table" style="margin:0;padding:0;border:none;background-color:#fafafa;border-radius:4px;" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td style="padding:6px;border-right:2px solid #e5e5e5">
                            <div style="line-height:130%">1</div><div style="line-height:130%">2</div><div style="line-height:130%">3</div><div style="line-height:130%">4</div>
                            <div style="line-height:130%">5</div><div style="line-height:130%">6</div><div style="line-height:130%">7</div><div style="line-height:130%">8</div>
                            <div style="line-height:130%">9</div><div style="line-height:130%">10</div><div style="line-height:130%">11</div><div style="line-height:130%">12</div>
                            <div style="line-height:130%">13</div><div style="line-height:130%">14</div><div style="line-height:130%">15</div><div style="line-height:130%">16</div>
                            <div style="line-height:130%">17</div><div style="line-height:130%">18</div><div style="line-height:130%">19</div><div style="line-height:130%">20</div>
                            <div style="line-height:130%">21</div><div style="line-height:130%">22</div><div style="line-height:130%">23</div><div style="line-height:130%">24</div>
                            <div style="line-height:130%">25</div><div style="line-height:130%">26</div><div style="line-height:130%">27</div><div style="line-height:130%">28</div>
                            <div style="line-height:130%">29</div><div style="line-height:130%">30</div><div style="line-height:130%">31</div><div style="line-height:130%">32</div>
                            <div style="line-height:130%">33</div><div style="line-height:130%">34</div>
                        </div>
                        </td>
                        <td style="padding:6px 0;text-align:left">
                            <div style="margin:0;padding:0;color:#010101;font-family:Consolas, 'Liberation Mono', Menlo, Courier, monospace !important;line-height:130%">
                                <div style="padding:0 6px; white-space:pre; line-height:130%"><span style="color:#999999">// Flask ê�� API ����</span></div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">from flask import Flask, request, jsonify</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">import tensorflow as tf</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">import numpy as np</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">app = Flask(__name__)</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">model = tf.keras.models.load_model('chatbot_model.h5')</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%"></div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">@app.route('/chat', methods=['POST'])</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">def chat():</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">    user_input = request.json['message']</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">    # �Է� ��ó�� ����</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">    processed_input = preprocess(user_input)</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">    prediction = model.predict(np.array([processed_input]))</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">    response = generate_response(prediction)</div>
                                <div style="padding:0 6px; white-space:pre; line-height:130%">    return jsonify({'reply': response})</div>
                            </div>
                        </td>
                        <td style="vertical-align:bottom;padding:0 2px 4px 0">
                            <a href="http://colorscripter.com/info#e" target="_blank" style="text-decoration:none;color:white">
                                <span style="font-size:9px;word-break:normal;background-color:#e5e5e5;color:white;border-radius:10px;padding:1px">cs</span>
                            </a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        
        <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
        <p><span style="font-size: 18px;">�ӽŷ��� �˰����� ���� ���ø����̼ǿ� �����Ͽ�, </span></p>
        <p><span style="font-size: 18px;">����� �ൿ ���� �� ������ ��õ �ý����� ��Ȯ���� ����ų �� �־����ϴ�. </span></p>
        <p><span style="font-size: 18px;">React Native�� ����� ũ�ν� �÷��� ����� ���ø����̼� ���� ������ ����, </span></p>
        <p><span style="font-size: 18px;">ȿ������ ����� �������̽� ���� �� ���� ���� �ɷ��� ��ȭ�Ͽ����ϴ�.</span></p>
        <p><span style="font-size: 18px;">Flask�� TensorFlow�� �̿��� �鿣�� ������ ����, </span></p>
        <p><span style="font-size: 18px;">������ ���� ���� �� �ǽð� ������ ó�� �ɷ��� �����׽��ϴ�.</span></p>
        <p><span style="font-size: 18px;">AWS Lambda�� Docker�� Ȱ���� �������� ��Ű��ó ������ ����, </span></p>
        <p><span style="font-size: 18px;">���ø����̼��� Ȯ�强�� ������������ ���̴� ����� �н��Ͽ����ϴ�.</span></p>
    ]');

    -- ��Ʈ������ ����
    INSERT INTO PORTFOLIO (
        PORTFOLIO_ID,
        USER_NO,
        TITLE,
        CONTENT,
        RESUME_NO
    ) VALUES (
        SEQ_PORTFOLIO_ID.NEXTVAL,
        1,
        '�ΰ����� ê�� ���� ������Ʈ',
        v_content,
        NULL
    );
    
    -- �ӽ� CLOB ����
    DBMS_LOB.FREETEMPORARY(v_content);
END;

-- =========================
-- USER_NO = 1 (person1) ��Ʈ������ 6
-- =========================
DECLARE
    v_content CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(v_content, TRUE);
    
    -- ������Ʈ ����
    DBMS_LOB.APPEND(v_content, q'[
        <h2><span style="font-size: 24px; color: rgb(0, 0, 255);">������Ʈ ����</span></h2>
        <p><span style="font-size: 14px;">�� ������Ʈ�� �ΰ����� ��� ���� �������� �ý����� �����Ͽ� ���� ������ ȿ������ �ش�ȭ�ϴ� ���� ��ǥ�� �Ͽ����ϴ�.</span></p>
        <p><span style="font-size: 14px;">�ֿ� ������δ� ��� ���� ����͸�, ���� ����, �ڵ� �˸� �ý��� ���� ���Ե˴ϴ�.</span></p>
        <p><br></p>

        <h2><span style="font-size: 14px;">��� ����</span></h2>
        <ul>
            <li><span style="font-size: 14px;">����Ʈ����: Angular, NgRx</span></li>
            <li><span style="font-size: 14px;">�鿣��: Python, Django, Scikit-learn</span></li>
            <li><span style="font-size: 14px;">�����ͺ��̽�: PostgreSQL, Redis</span></li>
            <li><span style="font-size: 14px;">����: AWS EC2, Docker</span></li>
        </ul>
        <p><br></p>

        <h2><span style="font-size: 18px;">�ֿ� ���� ����</span></h2>
        <p>Angular�� NgRx�� Ȱ���Ͽ� �ǽð� ������ �ð�ȭ ��ú��带 �����Ͽ�����, </p>
        <p>Python�� Django�� ����Ͽ� ���� ���� �����ϰ�, RESTful API�� �����Ͽ����ϴ�.</p>
        <p>Scikit-learn�� �̿��Ͽ� ��� ������ �����ϴ� �ӽŷ��� ���� �Ʒý�������, PostgreSQL�� Redis�� Ȱ���Ͽ� ��뷮 �����͸� ȿ�������� �����Ͽ����ϴ�.</p>
        <p>AWS EC2�� Docker�� ����Ͽ� ���ø����̼��� �����̳�ȭ�ϰ�, Ŭ���� ȯ�濡 �����Ͽ� ���� Ȯ�强�� �������� Ȯ���Ͽ����ϴ�.</p>
        <p><br></p>

        <h2><span style="font-size: 24px; color: rgb(0, 0, 255); background-color: rgb(255, 255, 0);">���� �� ��� ��</span></h2>
        <p><span style="font-size: 18px;">�ӽŷ��� ���� ���� ���� ������ �����Ͽ� ���� ������ ��Ȯ���� ũ�� ����ų �� �־����ϴ�.</span></p>
        <p><span style="font-size: 18px;">Angular�� NgRx�� Ȱ���� ���� ���� �� �ǽð� ������ �ð�ȭ ������ ����, ������ ����� �������̽��� ȿ�������� �����ϴ� ����� �������ϴ�.</span></p>
        <p><span style="font-size: 18px;">Python�� Django�� �̿��� �鿣�� ������ ����, ������ ó�� �� API ���� �ɷ��� ����������, </span></p>
        <p><span style="font-size: 18px;">AWS�� Docker�� Ȱ���� Ŭ���� ���� ������ ����, ���ø����̼��� Ȯ�强�� ������������ Ȯ���ϴ� ����� �н��Ͽ����ϴ�.</span></p>
    ]');

    -- ��Ʈ������ ����
    INSERT INTO PORTFOLIO (
        PORTFOLIO_ID,
        USER_NO,
        TITLE,
        CONTENT,
        RESUME_NO
    ) VALUES (
        SEQ_PORTFOLIO_ID.NEXTVAL,
        1,
        '�ΰ����� ��� ���� �������� �ý��� ����',
        v_content,
        NULL
    );
    
    -- �ӽ� CLOB ����
    DBMS_LOB.FREETEMPORARY(v_content);
END;


    
    
    -- ��ü Ʈ����� Ŀ��
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/




