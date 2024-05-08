switch(async_load[? "type"])
{
    default:
        break;
    
    case "permission_checked":
        permission_request = 1;
        permission_wait[1] = permission_wait[2];
        break;
}