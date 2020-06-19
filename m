Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF5020076B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 13:01:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83F826659D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 19 Jun 2020 11:01:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 76A60665BF; Fri, 19 Jun 2020 11:01:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F2E33666EE;
	Fri, 19 Jun 2020 10:39:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 715F6665C5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:38:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 624E8666D6; Fri, 19 Jun 2020 10:38:27 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 20BD6665C5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:12 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200619103711euoutp019f9aa0875d6629ebfa0335afa9ca3d79~Z66OpXu281849718497euoutp01h
 for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Jun 2020 10:37:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200619103711euoutp019f9aa0875d6629ebfa0335afa9ca3d79~Z66OpXu281849718497euoutp01h
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200619103710eucas1p2c5d6ac8ee1bbb11a611c1aee6ac9e97f~Z66OMrcmT2893928939eucas1p2g;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E7.9C.06318.6559CEE5; Fri, 19
 Jun 2020 11:37:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4~Z66N8BJZV1690716907eucas1p1C;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200619103710eusmtrp1fbd716d69772779f3bb7293132956459~Z66N7VfxW0949709497eusmtrp1i;
 Fri, 19 Jun 2020 10:37:10 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-7c-5eec95564774
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id CA.EA.06314.6559CEE5; Fri, 19
 Jun 2020 11:37:10 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200619103709eusmtip2f34fcaa33c6cca27a55afdc07ca62c44~Z66NUTWIq0302303023eusmtip2T;
 Fri, 19 Jun 2020 10:37:09 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Fri, 19 Jun 2020 12:36:26 +0200
Message-Id: <20200619103636.11974-27-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619103636.11974-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfSzUcRzH+97v4X533dmvY3xHi91Wmywyar+NmR603+YfWjPrAVd+YRx2
 P4+trSOMI48ZbuUp5XKkMMIiJjJzecpDUsQWYd1wmoq686P++3zf79fncV8CkTRj1kRYZAyj
 iJRFSHEh2ty7pTvhV7gScLIn7RR1T9fPo14U12PUn+Y8hBozfMepp9o3PKq8043aGJvjUQ3z
 4xg12vYApzI21DhV1zPDp7r0Cxi11VaKeorp2tJaQL/aLEfpVvUMn27ZnMXoz5l9PLqx6g49
 vTOP0AWT1YBun1LidHZTDaDXG474HLwsdA9mIsLiGIWTR5AwdGmhF40et0n4qh7FlKDIUgUE
 BCRdYeZQDl8FhISE1ADYrunHTYaE3ABwrfcmZ6wDOLpYDPYzKuc1gIOqAUyatOcgY8I7bSbf
 ZOCkM1StqnYrWZCpAL69JzJBCPmFBzMmhhGTYU5ehBv6lV0IJY/CTl0FzxSLSQ+ondhGuW62
 UPv89S4vMOrLKV2YqRAke/mwJV/J56DzMKewfG88c/itr2lPPwwHCrJQLuEugHO6Oj73yDIu
 lLy/kBv8qPtpHIMwzmcP69ucOPkM7GmfQ00yJM3g5Oohk4wYw/zmIoSTxTA9TcLRx6C679m/
 tl1DIwgX0zBpsA5wF8oDsHi7kZcLbNX/m5UDUAOsmFhWHsKwLpFMvCMrk7OxkSGON6LkDcD4
 mwZ2+gwvQcfv692AJIBUJF68tBwgwWRxbKK8G0ACkVqIzw4OBEjEwbLEW4wiKlARG8Gw3cCG
 QKVWYpfKpWsSMkQWw4QzTDSj2Hd5hMBaCVKKfkxp2sKzvYYUQm9PkXlyLm3WUXLBYFCl20Vr
 4nNP52z/yrtCejuQBz6NGK6W6c39cMvWYe0T2YhrkH98yWj1sLwM6gsVqY0+tys6ptP9VV6+
 viW6GOz9o6GFhMWHa+r64sf+7sj6ObsPjatL47NmuqqVyvuBrN5BIAr1laJsqMz5OKJgZX8B
 +edwc0kDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xe7phU9/EGdz9r2LRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzaLzyyw2i7VH7rJbHPzwhNXi
 5655LA68HmvmrWH02PttAYvHzll32T22f3vA6nG/+ziTx+Yl9R63/z1m9ph8Yzmjx+6bDWwe
 fVtWMXp83iQXwB2lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl/HyyTGWgmvSFc9nXWZtYJwu1sXIySEhYCKx6PEKxi5GLg4hgaWMEnufr2KESMhI
 nJzWwAphC0v8udbFBlH0iVHi9cvNTCAJNgFDia63EAkRgU5GiWndH9lBHGaBV0wSH/60go0S
 FgiQmPijmR3EZhFQldh/biFYN6+AncTq639ZIFbIS6zecIAZxOYEir9uOQi2WkjAVmL5gvfM
 Exj5FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMlm3Hfm7ewXhpY/AhRgEORiUe3hch
 r+OEWBPLiitzDzFKcDArifA6nT0dJ8SbklhZlVqUH19UmpNafIjRFOioicxSosn5wEjOK4k3
 NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAGF0a/Dq5+On5P5G5nOsK
 ZQvdFPbpWppv+/bcb96K/rX1cRWFpWkq5Rfjan+ZMnM0GB8+0TA7MSb5w4LLq1lnq01peXtv
 e+z95U8XPK24nruyNXNK/oJclXd3z9alniyrYOIRexfFuv7A1c0BH/K7A3hyT5slWqzqvOIT
 uM7cREzcyjP6QtwrJZbijERDLeai4kQAV68oU6wCAAA=
X-CMS-MailID: 20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4
X-Msg-Generator: CA
X-RootMTR: 20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4
References: <20200619103636.11974-1-m.szyprowski@samsung.com>
 <CGME20200619103710eucas1p1160d521b10c9afdb8e447e261072bfd4@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v7 26/36] drm: host1x: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMg
fCAyMiArKysrKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9ob3N0MXgvam9i
LmMgYi9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKaW5kZXggYTEwNjQzYWE4OWFhLi40ODMyYjU3
ZjEwYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2IuYworKysgYi9kcml2ZXJz
L2dwdS9ob3N0MXgvam9iLmMKQEAgLTE2NiwxMSArMTY2LDkgQEAgc3RhdGljIHVuc2lnbmVkIGlu
dCBwaW5fam9iKHN0cnVjdCBob3N0MXggKmhvc3QsIHN0cnVjdCBob3N0MXhfam9iICpqb2IpCiAJ
CQkJZ290byB1bnBpbjsKIAkJCX0KIAotCQkJZXJyID0gZG1hX21hcF9zZyhkZXYsIHNndC0+c2ds
LCBzZ3QtPm5lbnRzLCBkaXIpOwotCQkJaWYgKCFlcnIpIHsKLQkJCQllcnIgPSAtRU5PTUVNOwor
CQkJZXJyID0gZG1hX21hcF9zZ3RhYmxlKGRldiwgc2d0LCBkaXIsIDApOworCQkJaWYgKGVycikK
IAkJCQlnb3RvIHVucGluOwotCQkJfQogCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNd
LmRldiA9IGRldjsKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uZGlyID0gZGlyOwpA
QCAtMjE3LDcgKzIxNSw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9z
dDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQl9CiAKIAkJaWYgKCFJU19FTkFC
TEVEKENPTkZJR19URUdSQV9IT1NUMVhfRklSRVdBTEwpICYmIGhvc3QtPmRvbWFpbikgewotCQkJ
Zm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBqKQorCQkJZm9yX2VhY2hfc2d0
YWJsZV9zZyhzZ3QsIHNnLCBqKQogCQkJCWdhdGhlcl9zaXplICs9IHNnLT5sZW5ndGg7CiAJCQln
YXRoZXJfc2l6ZSA9IGlvdmFfYWxpZ24oJmhvc3QtPmlvdmEsIGdhdGhlcl9zaXplKTsKIApAQCAt
MjI5LDkgKzIyNyw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9zdDF4
ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQkJCWdvdG8gdW5waW47CiAJCQl9CiAK
LQkJCWVyciA9IGlvbW11X21hcF9zZyhob3N0LT5kb21haW4sCisJCQllcnIgPSBpb21tdV9tYXBf
c2d0YWJsZShob3N0LT5kb21haW4sCiAJCQkJCWlvdmFfZG1hX2FkZHIoJmhvc3QtPmlvdmEsIGFs
bG9jKSwKLQkJCQkJc2d0LT5zZ2wsIHNndC0+bmVudHMsIElPTU1VX1JFQUQpOworCQkJCQlzZ3Qs
IElPTU1VX1JFQUQpOwogCQkJaWYgKGVyciA9PSAwKSB7CiAJCQkJX19mcmVlX2lvdmEoJmhvc3Qt
PmlvdmEsIGFsbG9jKTsKIAkJCQllcnIgPSAtRUlOVkFMOwpAQCAtMjQxLDEyICsyMzksOSBAQCBz
dGF0aWMgdW5zaWduZWQgaW50IHBpbl9qb2Ioc3RydWN0IGhvc3QxeCAqaG9zdCwgc3RydWN0IGhv
c3QxeF9qb2IgKmpvYikKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uc2l6ZSA9IGdh
dGhlcl9zaXplOwogCQkJcGh5c19hZGRyID0gaW92YV9kbWFfYWRkcigmaG9zdC0+aW92YSwgYWxs
b2MpOwogCQl9IGVsc2UgaWYgKHNndCkgewotCQkJZXJyID0gZG1hX21hcF9zZyhob3N0LT5kZXYs
IHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCQkgRE1BX1RPX0RFVklDRSk7Ci0JCQlpZiAoIWVy
cikgewotCQkJCWVyciA9IC1FTk9NRU07CisJCQllcnIgPSBkbWFfbWFwX3NndGFibGUoaG9zdC0+
ZGV2LCBzZ3QsIERNQV9UT19ERVZJQ0UsIDApOworCQkJaWYgKGVycikKIAkJCQlnb3RvIHVucGlu
OwotCQkJfQogCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRpciA9IERNQV9UT19E
RVZJQ0U7CiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNdLmRldiA9IGhvc3QtPmRldjsK
QEAgLTY0Nyw4ICs2NDIsNyBAQCB2b2lkIGhvc3QxeF9qb2JfdW5waW4oc3RydWN0IGhvc3QxeF9q
b2IgKmpvYikKIAkJfQogCiAJCWlmICh1bnBpbi0+ZGV2ICYmIHNndCkKLQkJCWRtYV91bm1hcF9z
Zyh1bnBpbi0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCQkgICAgIHVucGluLT5kaXIp
OworCQkJZG1hX3VubWFwX3NndGFibGUodW5waW4tPmRldiwgc2d0LCB1bnBpbi0+ZGlyLCAwKTsK
IAogCQlob3N0MXhfYm9fdW5waW4oZGV2LCB1bnBpbi0+Ym8sIHNndCk7CiAJCWhvc3QxeF9ib19w
dXQodW5waW4tPmJvKTsKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
