event_inherited();
switch (gpu_get_tex_mip_enable()) {
    case 0:
		gpu_set_tex_mip_enable(1);
        break;
	case 1:
		gpu_set_tex_mip_enable(0);
        break;
}