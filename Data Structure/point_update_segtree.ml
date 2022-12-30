let combine (a: int64) (b: int64) : int64 =
	max a b
;;
 
let rec build (tree: int64 array) (arr: int array) (idx: int) (l: int) (r: int) : unit = 
	if l = r then
		tree.(idx) <- (Int64.of_int arr.(l))
	else
		let mid = (l+r)/2 in
		build tree arr (idx*2) l mid;
		build tree arr (idx*2+1) (mid+1) r;
		tree.(idx) <- combine tree.(idx*2) tree.(idx*2+1)
;;
 
let rec update (tree: int64 array) (pos: int) (v: int) (idx: int) (l: int) (r: int) : unit =
	if l = r then
		tree.(idx) <- Int64.of_int v
	else
		let mid = (l+r)/2 in
		(if pos <= mid then
			update tree pos v (idx*2) l mid
		else
			update tree pos v (idx*2+1) (mid+1) r);
		tree.(idx) <- combine tree.(idx*2) tree.(idx*2+1)
;;
 
let rec query (tree: int64 array) (ql: int) (qr: int) (idx: int) (l: int) (r: int): int64 = 
	if ql <= l && r <= qr then
		tree.(idx)
	else 
		let mid = (l+r)/2 in
		if qr <= mid then
			query tree ql qr (idx*2) l mid
		else if ql > mid then
			query tree ql qr (idx*2+1) (mid+1) r
		else
			combine (query tree ql qr (idx*2) l mid) (query tree ql qr (idx*2+1) (mid+1) r)
;;