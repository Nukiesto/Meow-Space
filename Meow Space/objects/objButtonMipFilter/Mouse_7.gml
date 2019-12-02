event_inherited();
switch (gpu_get_tex_mip_filter()) {
    case tf_point:
		gpu_set_tex_mip_filter(tf_linear);
        break;
	case tf_linear:
		gpu_set_tex_mip_filter(tf_anisotropic);
        break;
	case tf_anisotropic:
		gpu_set_tex_mip_filter(tf_point);
        break;
}