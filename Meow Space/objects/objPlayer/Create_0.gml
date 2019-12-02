/// @description 초기화
animationCreate();
velocity_x = 0
velocity_y = 0
friction_x = 0.6
friction_x_air = 0.1
friction_y = 0
velocity_x_limit = 4
velocity_y_min = -20
velocity_y_max = 30

velocity_gravity = 0.6
/*
	 플레이어 객체가 경사를 타고 오르내릴 수 있는 한계를 지정합니다. 이 예제에서는 
	60도를 기본값으로 정했습니다. 각도가 작아지면 더 낮은 경사밖에 오르지 못합니다.
*/
slope_ability = tan(degtorad(60))

jump_velocity = -10
