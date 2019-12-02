switch (gpu_get_tex_mip_filter()) {
    case tf_point:
		str="Point";
        break;
	case tf_linear:
		str="Trilinear";
        break;
	case tf_anisotropic:
		str="Anizotropic";
        break;
}