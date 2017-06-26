(define (problem squirrel_blocks_task)
(:domain squirrel_blocks_contingent)
(:objects
	kenny - robot
box0 box1 box2 box3 box4 - box
ob_block_00 ob_car_00 ob_book_00 ob_block_10 ob_car_10 ob_book_10 ob_block_20 ob_car_20 ob_book_20 ob_block_30 ob_car_30 ob_book_30 ob_block_40 ob_car_40 ob_book_40 - object
wp0 wp1 wp2 wp3 wp4 - waypoint
)
(:init
	(gripper_empty kenny)
	(robot_at kenny wp0)
	(oneof (can_pickup kenny ob_block_00) (can_push kenny ob_block_00))
	(clear ob_block_00)
	(object_at ob_block_00 wp0)
	(oneof (can_pickup kenny ob_car_00) (can_push kenny ob_car_00))
	(oneof (can_pickup kenny ob_book_00) (can_push kenny ob_book_00))
	(clear ob_car_00)
	(clear ob_book_00)
	(object_at ob_car_00 wp0)
	(object_at ob_book_00 wp0)
	(can_stack_on ob_block_00 ob_block_00)
	(can_stack_on ob_block_00 ob_car_00)
	(can_stack_on ob_block_00 ob_book_00)
	(can_stack_on ob_car_00 ob_block_00)
	(can_stack_on ob_book_00 ob_block_00)
	(can_stack_on ob_car_00 ob_car_00)
	(can_stack_on ob_car_00 ob_book_00)
	(can_stack_on ob_book_00 ob_car_00)
	(can_stack_on ob_book_00 ob_book_00)
	(can_fit_inside ob_block_00 box0)
	(can_fit_inside ob_car_00 box0)
	(can_fit_inside ob_book_00 box0)
	(can_stack_on ob_block_00 ob_block_10)
	(can_stack_on ob_block_00 ob_car_10)
	(can_stack_on ob_block_00 ob_book_10)
	(can_stack_on ob_car_00 ob_block_10)
	(can_stack_on ob_book_00 ob_block_10)
	(can_stack_on ob_car_00 ob_car_10)
	(can_stack_on ob_car_00 ob_book_10)
	(can_stack_on ob_book_00 ob_car_10)
	(can_stack_on ob_book_00 ob_book_10)
	(can_fit_inside ob_block_00 box1)
	(can_fit_inside ob_car_00 box1)
	(can_fit_inside ob_book_00 box1)
	(can_stack_on ob_block_00 ob_block_20)
	(can_stack_on ob_block_00 ob_car_20)
	(can_stack_on ob_block_00 ob_book_20)
	(can_stack_on ob_car_00 ob_block_20)
	(can_stack_on ob_book_00 ob_block_20)
	(can_stack_on ob_car_00 ob_car_20)
	(can_stack_on ob_car_00 ob_book_20)
	(can_stack_on ob_book_00 ob_car_20)
	(can_stack_on ob_book_00 ob_book_20)
	(can_fit_inside ob_block_00 box2)
	(can_fit_inside ob_car_00 box2)
	(can_fit_inside ob_book_00 box2)
	(can_stack_on ob_block_00 ob_block_30)
	(can_stack_on ob_block_00 ob_car_30)
	(can_stack_on ob_block_00 ob_book_30)
	(can_stack_on ob_car_00 ob_block_30)
	(can_stack_on ob_book_00 ob_block_30)
	(can_stack_on ob_car_00 ob_car_30)
	(can_stack_on ob_car_00 ob_book_30)
	(can_stack_on ob_book_00 ob_car_30)
	(can_stack_on ob_book_00 ob_book_30)
	(can_fit_inside ob_block_00 box3)
	(can_fit_inside ob_car_00 box3)
	(can_fit_inside ob_book_00 box3)
	(can_stack_on ob_block_00 ob_block_40)
	(can_stack_on ob_block_00 ob_car_40)
	(can_stack_on ob_block_00 ob_book_40)
	(can_stack_on ob_car_00 ob_block_40)
	(can_stack_on ob_book_00 ob_block_40)
	(can_stack_on ob_car_00 ob_car_40)
	(can_stack_on ob_car_00 ob_book_40)
	(can_stack_on ob_book_00 ob_car_40)
	(can_stack_on ob_book_00 ob_book_40)
	(can_fit_inside ob_block_00 box4)
	(can_fit_inside ob_car_00 box4)
	(can_fit_inside ob_book_00 box4)
	(oneof (can_pickup kenny ob_block_10) (can_push kenny ob_block_10))
	(clear ob_block_10)
	(object_at ob_block_10 wp1)
	(oneof (can_pickup kenny ob_car_10) (can_push kenny ob_car_10))
	(oneof (can_pickup kenny ob_book_10) (can_push kenny ob_book_10))
	(clear ob_car_10)
	(clear ob_book_10)
	(object_at ob_car_10 wp1)
	(object_at ob_book_10 wp1)
	(can_stack_on ob_block_10 ob_block_00)
	(can_stack_on ob_block_10 ob_car_00)
	(can_stack_on ob_block_10 ob_book_00)
	(can_stack_on ob_car_10 ob_block_00)
	(can_stack_on ob_book_10 ob_block_00)
	(can_stack_on ob_car_10 ob_car_00)
	(can_stack_on ob_car_10 ob_book_00)
	(can_stack_on ob_book_10 ob_car_00)
	(can_stack_on ob_book_10 ob_book_00)
	(can_fit_inside ob_block_10 box0)
	(can_fit_inside ob_car_10 box0)
	(can_fit_inside ob_book_10 box0)
	(can_stack_on ob_block_10 ob_block_10)
	(can_stack_on ob_block_10 ob_car_10)
	(can_stack_on ob_block_10 ob_book_10)
	(can_stack_on ob_car_10 ob_block_10)
	(can_stack_on ob_book_10 ob_block_10)
	(can_stack_on ob_car_10 ob_car_10)
	(can_stack_on ob_car_10 ob_book_10)
	(can_stack_on ob_book_10 ob_car_10)
	(can_stack_on ob_book_10 ob_book_10)
	(can_fit_inside ob_block_10 box1)
	(can_fit_inside ob_car_10 box1)
	(can_fit_inside ob_book_10 box1)
	(can_stack_on ob_block_10 ob_block_20)
	(can_stack_on ob_block_10 ob_car_20)
	(can_stack_on ob_block_10 ob_book_20)
	(can_stack_on ob_car_10 ob_block_20)
	(can_stack_on ob_book_10 ob_block_20)
	(can_stack_on ob_car_10 ob_car_20)
	(can_stack_on ob_car_10 ob_book_20)
	(can_stack_on ob_book_10 ob_car_20)
	(can_stack_on ob_book_10 ob_book_20)
	(can_fit_inside ob_block_10 box2)
	(can_fit_inside ob_car_10 box2)
	(can_fit_inside ob_book_10 box2)
	(can_stack_on ob_block_10 ob_block_30)
	(can_stack_on ob_block_10 ob_car_30)
	(can_stack_on ob_block_10 ob_book_30)
	(can_stack_on ob_car_10 ob_block_30)
	(can_stack_on ob_book_10 ob_block_30)
	(can_stack_on ob_car_10 ob_car_30)
	(can_stack_on ob_car_10 ob_book_30)
	(can_stack_on ob_book_10 ob_car_30)
	(can_stack_on ob_book_10 ob_book_30)
	(can_fit_inside ob_block_10 box3)
	(can_fit_inside ob_car_10 box3)
	(can_fit_inside ob_book_10 box3)
	(can_stack_on ob_block_10 ob_block_40)
	(can_stack_on ob_block_10 ob_car_40)
	(can_stack_on ob_block_10 ob_book_40)
	(can_stack_on ob_car_10 ob_block_40)
	(can_stack_on ob_book_10 ob_block_40)
	(can_stack_on ob_car_10 ob_car_40)
	(can_stack_on ob_car_10 ob_book_40)
	(can_stack_on ob_book_10 ob_car_40)
	(can_stack_on ob_book_10 ob_book_40)
	(can_fit_inside ob_block_10 box4)
	(can_fit_inside ob_car_10 box4)
	(can_fit_inside ob_book_10 box4)
	(oneof (can_pickup kenny ob_block_20) (can_push kenny ob_block_20))
	(clear ob_block_20)
	(object_at ob_block_20 wp2)
	(oneof (can_pickup kenny ob_car_20) (can_push kenny ob_car_20))
	(oneof (can_pickup kenny ob_book_20) (can_push kenny ob_book_20))
	(clear ob_car_20)
	(clear ob_book_20)
	(object_at ob_car_20 wp2)
	(object_at ob_book_20 wp2)
	(can_stack_on ob_block_20 ob_block_00)
	(can_stack_on ob_block_20 ob_car_00)
	(can_stack_on ob_block_20 ob_book_00)
	(can_stack_on ob_car_20 ob_block_00)
	(can_stack_on ob_book_20 ob_block_00)
	(can_stack_on ob_car_20 ob_car_00)
	(can_stack_on ob_car_20 ob_book_00)
	(can_stack_on ob_book_20 ob_car_00)
	(can_stack_on ob_book_20 ob_book_00)
	(can_fit_inside ob_block_20 box0)
	(can_fit_inside ob_car_20 box0)
	(can_fit_inside ob_book_20 box0)
	(can_stack_on ob_block_20 ob_block_10)
	(can_stack_on ob_block_20 ob_car_10)
	(can_stack_on ob_block_20 ob_book_10)
	(can_stack_on ob_car_20 ob_block_10)
	(can_stack_on ob_book_20 ob_block_10)
	(can_stack_on ob_car_20 ob_car_10)
	(can_stack_on ob_car_20 ob_book_10)
	(can_stack_on ob_book_20 ob_car_10)
	(can_stack_on ob_book_20 ob_book_10)
	(can_fit_inside ob_block_20 box1)
	(can_fit_inside ob_car_20 box1)
	(can_fit_inside ob_book_20 box1)
	(can_stack_on ob_block_20 ob_block_20)
	(can_stack_on ob_block_20 ob_car_20)
	(can_stack_on ob_block_20 ob_book_20)
	(can_stack_on ob_car_20 ob_block_20)
	(can_stack_on ob_book_20 ob_block_20)
	(can_stack_on ob_car_20 ob_car_20)
	(can_stack_on ob_car_20 ob_book_20)
	(can_stack_on ob_book_20 ob_car_20)
	(can_stack_on ob_book_20 ob_book_20)
	(can_fit_inside ob_block_20 box2)
	(can_fit_inside ob_car_20 box2)
	(can_fit_inside ob_book_20 box2)
	(can_stack_on ob_block_20 ob_block_30)
	(can_stack_on ob_block_20 ob_car_30)
	(can_stack_on ob_block_20 ob_book_30)
	(can_stack_on ob_car_20 ob_block_30)
	(can_stack_on ob_book_20 ob_block_30)
	(can_stack_on ob_car_20 ob_car_30)
	(can_stack_on ob_car_20 ob_book_30)
	(can_stack_on ob_book_20 ob_car_30)
	(can_stack_on ob_book_20 ob_book_30)
	(can_fit_inside ob_block_20 box3)
	(can_fit_inside ob_car_20 box3)
	(can_fit_inside ob_book_20 box3)
	(can_stack_on ob_block_20 ob_block_40)
	(can_stack_on ob_block_20 ob_car_40)
	(can_stack_on ob_block_20 ob_book_40)
	(can_stack_on ob_car_20 ob_block_40)
	(can_stack_on ob_book_20 ob_block_40)
	(can_stack_on ob_car_20 ob_car_40)
	(can_stack_on ob_car_20 ob_book_40)
	(can_stack_on ob_book_20 ob_car_40)
	(can_stack_on ob_book_20 ob_book_40)
	(can_fit_inside ob_block_20 box4)
	(can_fit_inside ob_car_20 box4)
	(can_fit_inside ob_book_20 box4)
	(oneof (can_pickup kenny ob_block_30) (can_push kenny ob_block_30))
	(clear ob_block_30)
	(object_at ob_block_30 wp3)
	(oneof (can_pickup kenny ob_car_30) (can_push kenny ob_car_30))
	(oneof (can_pickup kenny ob_book_30) (can_push kenny ob_book_30))
	(clear ob_car_30)
	(clear ob_book_30)
	(object_at ob_car_30 wp3)
	(object_at ob_book_30 wp3)
	(can_stack_on ob_block_30 ob_block_00)
	(can_stack_on ob_block_30 ob_car_00)
	(can_stack_on ob_block_30 ob_book_00)
	(can_stack_on ob_car_30 ob_block_00)
	(can_stack_on ob_book_30 ob_block_00)
	(can_stack_on ob_car_30 ob_car_00)
	(can_stack_on ob_car_30 ob_book_00)
	(can_stack_on ob_book_30 ob_car_00)
	(can_stack_on ob_book_30 ob_book_00)
	(can_fit_inside ob_block_30 box0)
	(can_fit_inside ob_car_30 box0)
	(can_fit_inside ob_book_30 box0)
	(can_stack_on ob_block_30 ob_block_10)
	(can_stack_on ob_block_30 ob_car_10)
	(can_stack_on ob_block_30 ob_book_10)
	(can_stack_on ob_car_30 ob_block_10)
	(can_stack_on ob_book_30 ob_block_10)
	(can_stack_on ob_car_30 ob_car_10)
	(can_stack_on ob_car_30 ob_book_10)
	(can_stack_on ob_book_30 ob_car_10)
	(can_stack_on ob_book_30 ob_book_10)
	(can_fit_inside ob_block_30 box1)
	(can_fit_inside ob_car_30 box1)
	(can_fit_inside ob_book_30 box1)
	(can_stack_on ob_block_30 ob_block_20)
	(can_stack_on ob_block_30 ob_car_20)
	(can_stack_on ob_block_30 ob_book_20)
	(can_stack_on ob_car_30 ob_block_20)
	(can_stack_on ob_book_30 ob_block_20)
	(can_stack_on ob_car_30 ob_car_20)
	(can_stack_on ob_car_30 ob_book_20)
	(can_stack_on ob_book_30 ob_car_20)
	(can_stack_on ob_book_30 ob_book_20)
	(can_fit_inside ob_block_30 box2)
	(can_fit_inside ob_car_30 box2)
	(can_fit_inside ob_book_30 box2)
	(can_stack_on ob_block_30 ob_block_30)
	(can_stack_on ob_block_30 ob_car_30)
	(can_stack_on ob_block_30 ob_book_30)
	(can_stack_on ob_car_30 ob_block_30)
	(can_stack_on ob_book_30 ob_block_30)
	(can_stack_on ob_car_30 ob_car_30)
	(can_stack_on ob_car_30 ob_book_30)
	(can_stack_on ob_book_30 ob_car_30)
	(can_stack_on ob_book_30 ob_book_30)
	(can_fit_inside ob_block_30 box3)
	(can_fit_inside ob_car_30 box3)
	(can_fit_inside ob_book_30 box3)
	(can_stack_on ob_block_30 ob_block_40)
	(can_stack_on ob_block_30 ob_car_40)
	(can_stack_on ob_block_30 ob_book_40)
	(can_stack_on ob_car_30 ob_block_40)
	(can_stack_on ob_book_30 ob_block_40)
	(can_stack_on ob_car_30 ob_car_40)
	(can_stack_on ob_car_30 ob_book_40)
	(can_stack_on ob_book_30 ob_car_40)
	(can_stack_on ob_book_30 ob_book_40)
	(can_fit_inside ob_block_30 box4)
	(can_fit_inside ob_car_30 box4)
	(can_fit_inside ob_book_30 box4)
	(oneof (can_pickup kenny ob_block_40) (can_push kenny ob_block_40))
	(clear ob_block_40)
	(object_at ob_block_40 wp4)
	(oneof (can_pickup kenny ob_car_40) (can_push kenny ob_car_40))
	(oneof (can_pickup kenny ob_book_40) (can_push kenny ob_book_40))
	(clear ob_car_40)
	(clear ob_book_40)
	(object_at ob_car_40 wp4)
	(object_at ob_book_40 wp4)
	(can_stack_on ob_block_40 ob_block_00)
	(can_stack_on ob_block_40 ob_car_00)
	(can_stack_on ob_block_40 ob_book_00)
	(can_stack_on ob_car_40 ob_block_00)
	(can_stack_on ob_book_40 ob_block_00)
	(can_stack_on ob_car_40 ob_car_00)
	(can_stack_on ob_car_40 ob_book_00)
	(can_stack_on ob_book_40 ob_car_00)
	(can_stack_on ob_book_40 ob_book_00)
	(can_fit_inside ob_block_40 box0)
	(can_fit_inside ob_car_40 box0)
	(can_fit_inside ob_book_40 box0)
	(can_stack_on ob_block_40 ob_block_10)
	(can_stack_on ob_block_40 ob_car_10)
	(can_stack_on ob_block_40 ob_book_10)
	(can_stack_on ob_car_40 ob_block_10)
	(can_stack_on ob_book_40 ob_block_10)
	(can_stack_on ob_car_40 ob_car_10)
	(can_stack_on ob_car_40 ob_book_10)
	(can_stack_on ob_book_40 ob_car_10)
	(can_stack_on ob_book_40 ob_book_10)
	(can_fit_inside ob_block_40 box1)
	(can_fit_inside ob_car_40 box1)
	(can_fit_inside ob_book_40 box1)
	(can_stack_on ob_block_40 ob_block_20)
	(can_stack_on ob_block_40 ob_car_20)
	(can_stack_on ob_block_40 ob_book_20)
	(can_stack_on ob_car_40 ob_block_20)
	(can_stack_on ob_book_40 ob_block_20)
	(can_stack_on ob_car_40 ob_car_20)
	(can_stack_on ob_car_40 ob_book_20)
	(can_stack_on ob_book_40 ob_car_20)
	(can_stack_on ob_book_40 ob_book_20)
	(can_fit_inside ob_block_40 box2)
	(can_fit_inside ob_car_40 box2)
	(can_fit_inside ob_book_40 box2)
	(can_stack_on ob_block_40 ob_block_30)
	(can_stack_on ob_block_40 ob_car_30)
	(can_stack_on ob_block_40 ob_book_30)
	(can_stack_on ob_car_40 ob_block_30)
	(can_stack_on ob_book_40 ob_block_30)
	(can_stack_on ob_car_40 ob_car_30)
	(can_stack_on ob_car_40 ob_book_30)
	(can_stack_on ob_book_40 ob_car_30)
	(can_stack_on ob_book_40 ob_book_30)
	(can_fit_inside ob_block_40 box3)
	(can_fit_inside ob_car_40 box3)
	(can_fit_inside ob_book_40 box3)
	(can_stack_on ob_block_40 ob_block_40)
	(can_stack_on ob_block_40 ob_car_40)
	(can_stack_on ob_block_40 ob_book_40)
	(can_stack_on ob_car_40 ob_block_40)
	(can_stack_on ob_book_40 ob_block_40)
	(can_stack_on ob_car_40 ob_car_40)
	(can_stack_on ob_car_40 ob_book_40)
	(can_stack_on ob_book_40 ob_car_40)
	(can_stack_on ob_book_40 ob_book_40)
	(can_fit_inside ob_block_40 box4)
	(can_fit_inside ob_car_40 box4)
	(can_fit_inside ob_book_40 box4)
)
(:goal
	(and
	(object_at ob_block_10 wp0)
	(object_at ob_block_20 wp1)
	(object_at ob_block_30 wp2)
	(object_at ob_block_40 wp3)
	(object_at ob_block_00 wp4)
)))
