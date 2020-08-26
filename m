Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 195222527E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:57:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 376B065FCE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:57:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2841A619B7; Wed, 26 Aug 2020 06:57:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD846666FC;
	Wed, 26 Aug 2020 06:38:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B4C4F65FCE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:36:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A6BE86601F; Wed, 26 Aug 2020 06:36:56 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id C282461813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:43 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063543euoutp01867abc40ab76d41a0d27fb19fe2472df~uvezs7aTk2036820368euoutp01L
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063543euoutp01867abc40ab76d41a0d27fb19fe2472df~uvezs7aTk2036820368euoutp01L
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063542eucas1p2ada057cab94cea9000995fd1ebfe1387~uvezOnfVE0398303983eucas1p2Y;
 Wed, 26 Aug 2020 06:35:42 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B4.5D.06318.EB2064F5; Wed, 26
 Aug 2020 07:35:42 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200826063542eucas1p1713d37f4589ddaca27e1968b5fe44027~uvey3rdEC1474114741eucas1p1q;
 Wed, 26 Aug 2020 06:35:42 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063542eusmtrp20c68a6c1cdb7a94833204a11b04ea18d~uvey2-q7f0466204662eusmtrp2c;
 Wed, 26 Aug 2020 06:35:42 +0000 (GMT)
X-AuditID: cbfec7f5-371ff700000018ae-f1-5f4602beede1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E9.53.06017.EB2064F5; Wed, 26
 Aug 2020 07:35:42 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063541eusmtip294447d0154a85766f83400ec8c228562~uveySDRKu2993829938eusmtip2k;
 Wed, 26 Aug 2020 06:35:41 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:08 +0200
Message-Id: <20200826063316.23486-25-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSWUwTQQB1dtvdpVBdFwwTMJg0ESMJUIImmwAeCLgfJh7hRxPFAhtopIW0
 gGBIJBoMlKIcGhEViqLchxXK0YhQgaJolUMFFREQr4hIOAREsMuC/r15x7yXyRAoZRA6EXJl
 LKtSyqIkmEhg6Ji3uDcjQSHSBb0TnWF5jND3cquF9LIhC6X7ZiYwurS8HaF1D33o6b5hhNaP
 vhLSvU03MDptOg+jK9sGcbr150chPd+UL9gjZiryKwDzYFYnYBrzBnGmfvaDkBlKNyPM/aKz
 zNulUZTJ6S8GjHEgGWMu1pYBZkrvcsj2mMg3nI2Sx7Mqz10nRZG/sk1YzB3nhNoJM54MvmzS
 ABsCkjtgYXIDrgEigiJLAMypb0M5gSKnASzodeeFKQAzm9qRtcSfuWkBLxQDWLVQsxq3JuZu
 p2CcCyO9oGZcs4IdyBQAOzPsOBNKjiAw7XW3tYMg7MkjsKA5mPMIyK1waP6zkMNichdMeW/B
 +LYtsLymZWWSjZU3p1/CuHsgacKhOf/C6qQAuHjXCHhsD7+Za3Eeb4bLjQUIHzgP4LClEucP
 WgB7z+WuJnzgO8sCxi1Cye2wusmTp/fCm21zCEdDcj3sH9/I0agVZhuuojwthqkXKN7tCvPM
 Vf9qW1/0oDxmoPHaLOAfKAvA792X8UywJe9/mQ6AMuDIxqkVEazaW8me9lDLFOo4ZYRHWLRC
 D6y/qWvJPNMAmhdDTYAkgMROrMMCQyihLF6dqDABSKASB7H/s64TlDhclniGVUWHqOKiWLUJ
 OBMCiaPY+9bX4xQZIYtlT7FsDKtaUxHCxikZ7AcDOQevd1KHE5LI1CvUa78GyVah47ng9iK9
 pg57JGflOf2KsLSe/iJHo7Gwzs115OUbrevuJK00NGDs975W6Y+AAkvpgZ1p5Ud1UtvO5+OZ
 k/652qiIoA2GqY6lT9p1TriLSBI/KFGGR6dvc3hSMuYbOFn+9Fp8pF+Ls68pUiJQR8q83FCV
 WvYXOwW0gkkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsVy+t/xe7r7mNziDaZdZLHoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZtH5ZRabxdojd9ktDn54wmrx
 c9c8FgdejzXz1jB67P22gMVj56y77B7bvz1g9bjffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP
 vi2rGD0+b5IL4I7SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcks
 Sy3St0vQy/g+6RBbwVLpii3vj7M3ML4Q7WLk5JAQMJH4++MLSxcjF4eQwFJGifmfDzJDJGQk
 Tk5rYIWwhSX+XOtigyj6xCjR1/2PHSTBJmAo0fUWIiEi0MkoMa37IzuIwyzwikniw59WRpAq
 YYEAiYPzroGNYhFQlbj/8zmYzStgJ9F67xwbxAp5idUbDoCt5gSKH+/uB4sLCdhKnF47g3kC
 I98CRoZVjCKppcW56bnFRnrFibnFpXnpesn5uZsYgdGy7djPLTsYu94FH2IU4GBU4uFdwOYa
 L8SaWFZcmXuIUYKDWUmE1+ns6Tgh3pTEyqrUovz4otKc1OJDjKZAR01klhJNzgdGcl5JvKGp
 obmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBkZBLbOJBX88NZl+PHi0Nukl
 g/eUAveje+8235J83ju78J6xUt1JZ3X+QrNfLovOxmhPiDN027OEzaHBWPbQopKtWnvf+6q7
 rD5/s+yjzNfYAk+bIA+LNvHKBX48iyo+NDnf36Vov/35jNPCjDLzLXrrn7mv/lVVfatbsFvW
 8dNbgzYW5bb6FCWW4oxEQy3mouJEAKnmdfKsAgAA
X-CMS-MailID: 20200826063542eucas1p1713d37f4589ddaca27e1968b5fe44027
X-Msg-Generator: CA
X-RootMTR: 20200826063542eucas1p1713d37f4589ddaca27e1968b5fe44027
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063542eucas1p1713d37f4589ddaca27e1968b5fe44027
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063542eucas1p1713d37f4589ddaca27e1968b5fe44027@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-tegra@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 24/32] drm: host1x: fix common struct
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
LmMgYi9kcml2ZXJzL2dwdS9ob3N0MXgvam9iLmMKaW5kZXggODliNmMxNGI3MzkyLi44MmQwYTYw
YmEzZjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2hvc3QxeC9qb2IuYworKysgYi9kcml2ZXJz
L2dwdS9ob3N0MXgvam9iLmMKQEAgLTE3MCwxMSArMTcwLDkgQEAgc3RhdGljIHVuc2lnbmVkIGlu
dCBwaW5fam9iKHN0cnVjdCBob3N0MXggKmhvc3QsIHN0cnVjdCBob3N0MXhfam9iICpqb2IpCiAJ
CQkJZ290byB1bnBpbjsKIAkJCX0KIAotCQkJZXJyID0gZG1hX21hcF9zZyhkZXYsIHNndC0+c2ds
LCBzZ3QtPm5lbnRzLCBkaXIpOwotCQkJaWYgKCFlcnIpIHsKLQkJCQllcnIgPSAtRU5PTUVNOwor
CQkJZXJyID0gZG1hX21hcF9zZ3RhYmxlKGRldiwgc2d0LCBkaXIsIDApOworCQkJaWYgKGVycikK
IAkJCQlnb3RvIHVucGluOwotCQkJfQogCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNd
LmRldiA9IGRldjsKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uZGlyID0gZGlyOwpA
QCAtMjI4LDcgKzIyNiw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihzdHJ1Y3QgaG9z
dDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQl9CiAKIAkJaWYgKGhvc3QtPmRv
bWFpbikgewotCQkJZm9yX2VhY2hfc2coc2d0LT5zZ2wsIHNnLCBzZ3QtPm5lbnRzLCBqKQorCQkJ
Zm9yX2VhY2hfc2d0YWJsZV9zZyhzZ3QsIHNnLCBqKQogCQkJCWdhdGhlcl9zaXplICs9IHNnLT5s
ZW5ndGg7CiAJCQlnYXRoZXJfc2l6ZSA9IGlvdmFfYWxpZ24oJmhvc3QtPmlvdmEsIGdhdGhlcl9z
aXplKTsKIApAQCAtMjQwLDkgKzIzOCw5IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgcGluX2pvYihz
dHJ1Y3QgaG9zdDF4ICpob3N0LCBzdHJ1Y3QgaG9zdDF4X2pvYiAqam9iKQogCQkJCWdvdG8gcHV0
OwogCQkJfQogCi0JCQllcnIgPSBpb21tdV9tYXBfc2coaG9zdC0+ZG9tYWluLAorCQkJZXJyID0g
aW9tbXVfbWFwX3NndGFibGUoaG9zdC0+ZG9tYWluLAogCQkJCQlpb3ZhX2RtYV9hZGRyKCZob3N0
LT5pb3ZhLCBhbGxvYyksCi0JCQkJCXNndC0+c2dsLCBzZ3QtPm5lbnRzLCBJT01NVV9SRUFEKTsK
KwkJCQkJc2d0LCBJT01NVV9SRUFEKTsKIAkJCWlmIChlcnIgPT0gMCkgewogCQkJCV9fZnJlZV9p
b3ZhKCZob3N0LT5pb3ZhLCBhbGxvYyk7CiAJCQkJZXJyID0gLUVJTlZBTDsKQEAgLTI1MiwxMiAr
MjUwLDkgQEAgc3RhdGljIHVuc2lnbmVkIGludCBwaW5fam9iKHN0cnVjdCBob3N0MXggKmhvc3Qs
IHN0cnVjdCBob3N0MXhfam9iICpqb2IpCiAJCQlqb2ItPnVucGluc1tqb2ItPm51bV91bnBpbnNd
LnNpemUgPSBnYXRoZXJfc2l6ZTsKIAkJCXBoeXNfYWRkciA9IGlvdmFfZG1hX2FkZHIoJmhvc3Qt
PmlvdmEsIGFsbG9jKTsKIAkJfSBlbHNlIGlmIChzZ3QpIHsKLQkJCWVyciA9IGRtYV9tYXBfc2co
aG9zdC0+ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCQkJIERNQV9UT19ERVZJQ0UpOwot
CQkJaWYgKCFlcnIpIHsKLQkJCQllcnIgPSAtRU5PTUVNOworCQkJZXJyID0gZG1hX21hcF9zZ3Rh
YmxlKGhvc3QtPmRldiwgc2d0LCBETUFfVE9fREVWSUNFLCAwKTsKKwkJCWlmIChlcnIpCiAJCQkJ
Z290byBwdXQ7Ci0JCQl9CiAKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uZGlyID0g
RE1BX1RPX0RFVklDRTsKIAkJCWpvYi0+dW5waW5zW2pvYi0+bnVtX3VucGluc10uZGV2ID0gaG9z
dC0+ZGV2OwpAQCAtNjYwLDggKzY1NSw3IEBAIHZvaWQgaG9zdDF4X2pvYl91bnBpbihzdHJ1Y3Qg
aG9zdDF4X2pvYiAqam9iKQogCQl9CiAKIAkJaWYgKHVucGluLT5kZXYgJiYgc2d0KQotCQkJZG1h
X3VubWFwX3NnKHVucGluLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJCSAgICAgdW5w
aW4tPmRpcik7CisJCQlkbWFfdW5tYXBfc2d0YWJsZSh1bnBpbi0+ZGV2LCBzZ3QsIHVucGluLT5k
aXIsIDApOwogCiAJCWhvc3QxeF9ib191bnBpbihkZXYsIHVucGluLT5ibywgc2d0KTsKIAkJaG9z
dDF4X2JvX3B1dCh1bnBpbi0+Ym8pOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
