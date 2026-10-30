# Nippon_fall_2026
(define (ineligibility-reason s1 s2 s3 attendance completed total)
  (cond
    [(not (passing-average? s1 s2 s3)) "Low score"]
    [(not (good-attendance? attendance)) "Low attendance"]
    [(not (assignments-complete? completed total)) "Missing assignments"]
    [else "Eligible"]))