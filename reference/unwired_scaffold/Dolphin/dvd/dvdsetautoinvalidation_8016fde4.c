extern int autoInvalidation;

//8016FDE4
int DVDSetAutoInvalidation(int flag)
{
    int old = autoInvalidation;
    autoInvalidation = flag;
    return old;
}
