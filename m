Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F70E2527F2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:58:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5621D61873
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:58:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 427D965FCE; Wed, 26 Aug 2020 06:58:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 59DC966700;
	Wed, 26 Aug 2020 06:38:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C553D60C32
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:36:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B766A61813; Wed, 26 Aug 2020 06:36:59 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 5F9C86604C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:46 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063545euoutp01f3d619ff2a256be7663a9f62125aeefa~uve2GzEMs2034020340euoutp01X
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063545euoutp01f3d619ff2a256be7663a9f62125aeefa~uve2GzEMs2034020340euoutp01X
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063545eucas1p23e973a046c1118d2848630fbbf80ac8d~uve1w86Aw0398703987eucas1p2p;
 Wed, 26 Aug 2020 06:35:45 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 58.BD.05997.1C2064F5; Wed, 26
 Aug 2020 07:35:45 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063544eucas1p15980885bbdbc43e35f350f228994bee7~uve1Yp4IX1480314803eucas1p1t;
 Wed, 26 Aug 2020 06:35:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063544eusmtrp2fb3d8e5660340ba67abfec026186393b~uve1YAfVx0466204662eusmtrp2g;
 Wed, 26 Aug 2020 06:35:44 +0000 (GMT)
X-AuditID: cbfec7f4-65dff7000000176d-eb-5f4602c1993e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id AC.53.06017.0C2064F5; Wed, 26
 Aug 2020 07:35:44 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063544eusmtip20c68027087fa433706e7ee60ee2698a4~uve0ycNPa0092300923eusmtip2T;
 Wed, 26 Aug 2020 06:35:44 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:12 +0200
Message-Id: <20200826063316.23486-29-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLKsWRmVeSWpSXmKPExsWy7djP87oHmdziDQ61cVr0njvJZPF30jF2
 i40z1rNa/N82kdniytf3bBbNi9ezWaxcfZTJYsF+a4svVx4yWWx6fI3V4vKuOWwWa4/cZbc4
 +OEJqwOvx5p5axg9fv+axOix99sCFo/t3x6weuyfu4bd4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dz6tqxi9Pi8SS6AJ4rLJiU1J7MstUjfLoEro+3sfdaCKwIV17/fZWlg/MDbxcjJISFg
 IrF4xx3mLkYuDiGBFYwSaz/dYoJwvjBKrFz8kA3C+cwoMf9uIwtMy57nU6CqljNKnP1xgx2u
 5e+KS8wgVWwChhJdb7vYQGwRgVZGiRO9PCBFzAKvmCTmzelkBUkIC4RInDx8DayBRUBVomUi
 RJxXwE7i5MQJ7BDr5CVWbzgAVsMJFD/e3Q92k4TAKXaJ6XtXM0MUuUgcevGKDcIWlnh1fAtU
 s4zE/53zmSAamhklHp5byw7h9DBKXG6awQhRZS1x59wvoG4OoPs0Jdbv0ocIO0pcmPSfBSQs
 IcAnceOtIEiYGcictG06M0SYV6KjTQiiWk1i1vF1cGsPXrgEdZqHxPEFP6HhOJFR4sLJKywT
 GOVnISxbwMi4ilE8tbQ4Nz212CgvtVyvODG3uDQvXS85P3cTIzBRnf53/MsOxl1/kg4xCnAw
 KvHwLmBzjRdiTSwrrsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZpDhYlcV7jRS9j
 hQTSE0tSs1NTC1KLYLJMHJxSDYwcjaaBfdVx2hfyK7vfTuy98fbeA2ae5bEK3w58DZedZ29V
 OuOytvvmO+mcXA1pa5o/HJtR1b0wX9x006HoRbF356549FbdZX2h+Ns3Hd3aemfbH4kKmS1L
 3pDjo7LsSVnqmoquM1unNn+MdhCY9VQn5V5MVlz3t3eFr1VtROT+zG1kN0qsfqXEUpyRaKjF
 XFScCADsbkboUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xe7oHmNziDbYe0bfoPXeSyeLvpGPs
 FhtnrGe1+L9tIrPFla/v2SyaF69ns1i5+iiTxYL91hZfrjxkstj0+BqrxeVdc9gs1h65y25x
 8MMTVgdejzXz1jB6/P41idFj77cFLB7bvz1g9dg/dw27x/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJeRtvZ+6wFVwQqrn+/y9LA+IG3i5GTQ0LARGLP8ylMILaQwFJGiU07mSHi
 MhInpzWwQtjCEn+udbF1MXIB1XxilNh2/wxYA5uAoUTXW4iEiEAno8S07o/sIA6zwCcmiSPX
 TrOBVAkLBEksP7sUbCyLgKpEy8ROsLG8AnYSJydOYIdYIS+xesMBsBpOoPjx7n42iJNsJU6v
 ncE8gZFvASPDKkaR1NLi3PTcYiO94sTc4tK8dL3k/NxNjMCo2Xbs55YdjF3vgg8xCnAwKvHw
 LmBzjRdiTSwrrsw9xCjBwawkwut09nScEG9KYmVValF+fFFpTmrxIUZToKMmMkuJJucDIzqv
 JN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVANjf2aO2lyrHUKqn2Y1
 XT4jKsxWLPiRY+4S9pd8i1+WxsfKsYVHOq+1PR8cfIfvr9qMyEnxuh+09N5vD1nfov55i+l8
 Ba8TbYU6gb2TGsx/XBXR/npO7tLXsDdm5YU/Z//RDQjcEN1yaGnTF68VP033HXucW3bx7+e9
 6pc8lzpZ/poVKZY3u/KREktxRqKhFnNRcSIAobSgz7ACAAA=
X-CMS-MailID: 20200826063544eucas1p15980885bbdbc43e35f350f228994bee7
X-Msg-Generator: CA
X-RootMTR: 20200826063544eucas1p15980885bbdbc43e35f350f228994bee7
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063544eucas1p15980885bbdbc43e35f350f228994bee7
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063544eucas1p15980885bbdbc43e35f350f228994bee7@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 28/32] misc: fastrpc: fix common struct
 sg_table related issues
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9t
YXBfc2coKSBmdW5jdGlvbgpyZXR1cm5zIHRoZSBudW1iZXIgb2YgdGhlIGNyZWF0ZWQgZW50cmll
cyBpbiB0aGUgRE1BIGFkZHJlc3Mgc3BhY2UuCkhvd2V2ZXIgdGhlIHN1YnNlcXVlbnQgY2FsbHMg
dG8gdGhlIGRtYV9zeW5jX3NnX2Zvcl97ZGV2aWNlLGNwdX0oKSBhbmQKZG1hX3VubWFwX3NnIG11
c3QgYmUgY2FsbGVkIHdpdGggdGhlIG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwpwYXNz
ZWQgdG8gdGhlIGRtYV9tYXBfc2coKS4KCnN0cnVjdCBzZ190YWJsZSBpcyBhIGNvbW1vbiBzdHJ1
Y3R1cmUgdXNlZCBmb3IgZGVzY3JpYmluZyBhIG5vbi1jb250aWd1b3VzCm1lbW9yeSBidWZmZXIs
IHVzZWQgY29tbW9ubHkgaW4gdGhlIERSTSBhbmQgZ3JhcGhpY3Mgc3Vic3lzdGVtcy4gSXQKY29u
c2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nl
cyAoc2dsIGVudHJ5KSwKYXMgd2VsbCBhcyB0aGUgbnVtYmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJp
ZXM6IENQVSBwYWdlcyAob3JpZ19uZW50cyBlbnRyeSkKYW5kIERNQSBtYXBwZWQgcGFnZXMgKG5l
bnRzIGVudHJ5KS4KCkl0IHR1cm5lZCBvdXQgdGhhdCBpdCB3YXMgYSBjb21tb24gbWlzdGFrZSB0
byBtaXN1c2UgbmVudHMgYW5kIG9yaWdfbmVudHMKZW50cmllcywgY2FsbGluZyBETUEtbWFwcGlu
ZyBmdW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCmlnbm9yaW5nIHRo
ZSBudW1iZXIgb2YgbWFwcGVkIGVudHJpZXMgcmV0dXJuZWQgYnkgdGhlIGRtYV9tYXBfc2coKQpm
dW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIHVzZSBhIGNvbW1vbiBkbWEtbWFw
cGluZyB3cmFwcGVycyBvcGVyYXRpbmcKZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190YWJsZSBv
YmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQppdGVyYXRvcnMgd2hlcmUgcG9zc2libGUu
IFRoaXMsIGFsbW9zdCBhbHdheXMsIGhpZGVzIHJlZmVyZW5jZXMgdG8gdGhlCm5lbnRzIGFuZCBv
cmlnX25lbnRzIGVudHJpZXMsIG1ha2luZyB0aGUgY29kZSByb2J1c3QsIGVhc2llciB0byBmb2xs
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KClNpZ25lZC1vZmYtYnk6IE1hcmVrIFN6eXByb3dza2kg
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL21pc2MvZmFzdHJwYy5jIHwg
NCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9mYXN0cnBjLmMgYi9kcml2ZXJzL21pc2MvZmFzdHJw
Yy5jCmluZGV4IDc5MzljNTVkYWNlYi4uOWQ2ODY3NzQ5MzE2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L21pc2MvZmFzdHJwYy5jCisrKyBiL2RyaXZlcnMvbWlzYy9mYXN0cnBjLmMKQEAgLTUxOCw3ICs1
MTgsNyBAQCBmYXN0cnBjX21hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaG1lbnQsCiAKIAl0YWJsZSA9ICZhLT5zZ3Q7CiAKLQlpZiAoIWRtYV9tYXBfc2coYXR0YWNo
bWVudC0+ZGV2LCB0YWJsZS0+c2dsLCB0YWJsZS0+bmVudHMsIGRpcikpCisJaWYgKCFkbWFfbWFw
X3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCB0YWJsZSwgZGlyLCAwKSkKIAkJcmV0dXJuIEVSUl9Q
VFIoLUVOT01FTSk7CiAKIAlyZXR1cm4gdGFibGU7CkBAIC01MjgsNyArNTI4LDcgQEAgc3RhdGlj
IHZvaWQgZmFzdHJwY191bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaCwKIAkJCQkgIHN0cnVjdCBzZ190YWJsZSAqdGFibGUsCiAJCQkJICBlbnVtIGRtYV9kYXRh
X2RpcmVjdGlvbiBkaXIpCiB7Ci0JZG1hX3VubWFwX3NnKGF0dGFjaC0+ZGV2LCB0YWJsZS0+c2ds
LCB0YWJsZS0+bmVudHMsIGRpcik7CisJZG1hX3VubWFwX3NndGFibGUoYXR0YWNoLT5kZXYsIHRh
YmxlLCBkaXIsIDApOwogfQogCiBzdGF0aWMgdm9pZCBmYXN0cnBjX3JlbGVhc2Uoc3RydWN0IGRt
YV9idWYgKmRtYWJ1ZikKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
