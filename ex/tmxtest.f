empty
bu:
    import bu/mo/tmx
tmx: fixed
    import bu/mo/array2d

" ex/lk/test.tmx" opentmx
: .tilesets
    cr ." Tilesets: "
    #tilesets 0 do
        cr
        i tileset[]
            ." Tileset #: " i .
            dup multi-image? if
                cr ."   Tiles: "
                dup @tilecount 0 do
                    cr ."   GID: " dup i tile-gid . ."  Image: " dup i tile-image type  
                loop
            else
                ." Image: " dup single-image type
            then
        drop
    loop ;

.tilesets

2048 2048 array2d tilemap
cr .( Extracting tilemap... )
0 layer[]  0 0 tilemap addr  2048 cells  extract
tilemap 2d.

: .objgroup
    cr ."  Group: "  dup @name type
    objects>
        cr ."   GID: "  dup @gid .
            dup ?name if  ."  Name: " type  then
            dup ?type if ."   Type: " type  then 
            ."   Pos: "   dup @xy 2.
            ."   Dims: "  dup @wh 2.
        drop
;
: .objects
    cr ." Object groups: "
    #objgroups for
        i objgroup[] .objgroup
    loop ;
.objects
