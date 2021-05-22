-- Top Competitors
table: 
	hackers: hacker_id, name
	difficulty: difficulty_level, score
	challenges: challenge_id, hacker_id, difficulty_level
	submissions: submission_id, hacker_id, challenge_id, score 

SELECT hackers.hacker_id AS who_full_score_id
FROM submissions
JOIN challenges USING (challenge_id)
JOIN difficulty USING (difficulty_level)
JOIN hackers ON hackers.hacker_id = submissions.hacker_id
WHERE submissions.score = difficulty.score
;

SELECT s.hacker_id, COUNT(*) as n_full_score, h.name
FROM submissions s, challenges c, difficulty d, hackers h 
WHERE s.challenge_id = c.challenge_id AND c.difficulty_level = d.difficulty_level 
	AND s.hacker_id = h.hacker_id AND c.hacker_id = h.hacker_id
	AND s.score = d.score
GROUP BY s.hacker_id
ORDER BY n_full_score DESC;

jifdjf




