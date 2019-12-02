/// @description 동작
/*
	 사람의 키보드 입력을 받는 부분입니다.
*/
var slope_limit = slope_ability * max(1, abs(velocity_x))
var movement_x = keyboard_check(ord("D")) - keyboard_check(ord("A"))
if movement_x != 0 
	velocity_x += movement_x

var on_air = place_free(x, y + 1)
if !on_air and keyboard_check_pressed(ord("W")) and place_free(x, y - 1)
	velocity_y += jump_velocity

/*
	 x 좌표가 변하는 부분입니다.
*/
if velocity_x != 0 {
	var check_x = x + velocity_x + sign(velocity_x)

	// 좌우-하강 이동을 하기에 충분한 공간이 있는지 확인합니다.
	//
	if place_free(check_x, y) {
		// 플레이어가 벽에 닿지 않기 때문에 좌우 이동을 합니다.

		x += velocity_x

		// 좌우 이동을 하면서 아래로 경사를 타고 내려갑니다. 조건문으로 검사는 하지 않습니다.
		// 점프 중에는 경사를 타고 내려갈 수 없습니다.
		//
		if velocity_y == 0 and !on_air {
			var y_previous = y // 원래의 좌우 이동만 시행한 좌표
      move_contact_solid(270, ceil(slope_limit))
      var y_contact = y // 하단 경사를 타고 내려간 좌표

			// 내려간 좌표가 자신이 최대한 내려갈 수 있는 좌표보다 위에 있는지 확인합니다.
			//
      if y_contact < y_previous + slope_limit // 위에 있다면 (경사 제한을 넘지 않았다면)
				y = y_contact
			else
				y = y_previous
    }
	} else {
		// 좌우가 완전히 벽으로 막혀있거나, 위로 올라가는 경사가 있는지 확인합니다.
		//
		if place_free(check_x, y - slope_limit) {
			// 좌우 이동, 상승 이동과 경사 안착을 동시에 시행합니다.
			// 오르내릴 경사가 비어있을 때에만 움직이기 때문에 블록과 겹쳐질 염려가 없습니다.

      x += velocity_x
      y -= slope_limit
      move_contact_solid(270, slope_limit)
    } else {
			// 플레이어가 벽에 닿기 직전이기 때문에 좌우 이동을 멈추고 벽에 붙습니다.

			if 0 < velocity_x
				move_contact_solid(0, abs(velocity_x) + 1)
			else if velocity_x < 0
				move_contact_solid(180, abs(velocity_x) + 1)

			velocity_x = 0
		}
	}
}

/*
	 y 좌표가 변하는 부분입니다.
*/
var check_y
if velocity_y < 0
	check_y = y + velocity_y - 1
else
	check_y = y + velocity_y + 1

if !place_free(x, check_y) {
	if 0 < velocity_y {
		move_contact_solid(270, abs(velocity_y) + 1)
		move_outside_solid(90, 1)
	} else if velocity_y < 0 {
		move_contact_solid(90, abs(velocity_y) + 1)
	}

	velocity_y = 0
} else {
	// 플레이어의 아래가 텅 비었기 때문에 낙하합니다.

	y += velocity_y

	velocity_y += velocity_gravity
}

/*
	 속도 제한
*/
if velocity_x_limit < abs(velocity_x)
	velocity_x = velocity_x_limit * sign(velocity_x)

if velocity_y_max < velocity_y
	velocity_y = velocity_y_max
else if velocity_y < velocity_y_min
	velocity_y = velocity_y_min

/*
	 마찰력 적용
*/
if movement_x == 0 and velocity_x != 0 and friction_x != 0 {
	// 플레이어가 좌우 이동 중이 아니고, 가로 속도가 0이 아니라면 가로 마찰력을 적용합니다.

	if !on_air
		velocity_x -= friction_x * velocity_x
	else
		velocity_x -= friction_x_air * velocity_x
}
if velocity_y != 0 and friction_y != 0
	velocity_y -= friction_y * velocity_y
