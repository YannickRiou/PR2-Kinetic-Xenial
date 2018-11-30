(define (domain pickplacedemo)

(:requirements :strips :typing :fluents :disjunctive-preconditions :durative-actions :negative-preconditions)

(:types
	location
	robot
	cube
)

(:predicates
	(cube_at ?c - cube ?loc - location)
	(occupied ?loc - location)
	(robot_at ?r - robot ?loc - location)
	(empty_hand ?r - robot)
	(in_hand ?r - robot ?c - cube)
	(on_top ?u - cube ?o - cube)
	(top_free ?c - cube)
	(not_ready ?r - robot)
	(ready ?r - robot)
)

(:durative-action setup
	:parameters (?r - robot)
	:duration ( = ?duration 90)
	:condition (over all (not_ready ?r))
	:effect	(at end(ready ?r))
)


(:durative-action goto_location
	:parameters (?r -robot ?source - location ?destination - location)
	:duration ( = ?duration 60)
	:condition 	(and 
				(over all (robot_at ?r ?source))
				(over all (ready ?r))
				)
	:effect	(and
			(at end(robot_at ?r ?destination))
			(at end(not (robot_at ?r ?source)))
			) 
)

(:durative-action pick
	:parameters (?r - robot ?l - location ?c - cube) 
	:duration ( = ?duration 30)
	:condition 	(and 
				(over all (robot_at ?r ?l))
				(over all (cube_at ?c ?l))
				(over all (empty_hand ?r))
<<<<<<< Updated upstream
				(over all (top_free ?c))
				;;(over all (not (not_ready ?r)))
=======
>>>>>>> Stashed changes
				)
	:effect 	(and 
				(at end (not (empty_hand ?r))) 
				(at end (in_hand ?r ?c))
				(at end (not (cube_at ?c ?l)))
				)
)

(:durative-action placeAt
	:parameters (?r - robot ?l - location ?c - cube)
	:duration ( = ?duration 30)
	:condition 	(and 
				(over all (robot_at ?r ?l))
				(over all (in_hand ?r ?c))
				;;(over all (not (not_ready ?r)))
				)
	:effect 	(and 
				(at end (empty_hand ?r))
				(at end (not (in_hand ?r ?c)))
				(at end (cube_at ?c ?l))
				)
)

(:durative-action placeOn
	:parameters (?r - robot ?l - location ?o - cube ?u - cube)
	:duration ( = ?duration 30)
	:condition 	(and 
				(over all (robot_at ?r ?l))
				(over all (cube_at ?u ?l))
				(over all (in_hand ?r ?o))
				(over all (top_free ?u))
				;;(over all (not (not_ready ?r)))
				)
	:effect 	(and 
				(at end (empty_hand ?r))
				(at end (not (in_hand ?r ?o)))
				(at end (not (top_free ?u)))
				(at end (cube_at ?o ?l))
				(at end (on_top ?u ?o))
				)
)


;;(:durative-action check_landing
;;)

;;(:durative-action check_picking
;;)

;;(:durative-action check_location
;;)

;;(:durative-action remove_obstacles
;;)

)



;; Durative action template
;;(:durative-action dock
;;	:parameters ()
;;	:duration ()
;;	:condition ()
;;	:effect ()
;;)
