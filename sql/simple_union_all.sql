select *
  from (select 'US' as location,
               id,
               name,
               price,
               card_name,
               card_number,
               transaction_date
          from ussales
        union all
        select 'EU' as location,
               id,
               name,
               price,
               card_name,
               card_number,
               transaction_date
          from eusales
       ) s
 where s.price > 50
