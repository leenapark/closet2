select  p.rnum,
        p.nickname,
        p.id,
        p.point
from (

select  ROWNUM rnum,
        r.nickname,
        r.id,
        r.point
from (select  nickName,
        id,
        point
from users
where point > 0
order by point desc) r ) p;



select  nickName,
        id,
        point
from users
where point > 0
order by point desc;

select  rownum,
        u.id,
        u.userno,
        b.boardNo,
        u.nickName,
        b.title,
        gcount
from users u, codiboard b, (select  f.boardno,
                                    count(f.boardno) gcount
                            from feeling f, users u, codiboard b
                            where feeltype = 'good'
                            and f.boardno = b.boardno
                            and f.userno = u.userno
                            group by f.boardno
                            order by gcount desc) f
where f.boardno = b.boardno
and u.userno = b.userno;