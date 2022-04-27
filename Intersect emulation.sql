# observe table 1 and table 2 as a single table (use union all operator)
select code1,
		code2,
        "table 1" as `source`
        from table1


#intersect emulation method 1 (using distinct keyword & join)



#interesect emation method 2 (using in operation & subquery