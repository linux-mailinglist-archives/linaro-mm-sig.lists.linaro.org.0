Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C45BA1D16AA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:00:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC79065F8D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:00:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D78B465F8F; Wed, 13 May 2020 14:00:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF9F666513;
	Wed, 13 May 2020 13:36:16 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9776B65F8A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:35:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 85A1B65F99; Wed, 13 May 2020 13:35:46 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 7EC3D65F9C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:17 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133316euoutp02640859e0a560d3a05c137ccb78064c12~OmcaaPHZI3223232232euoutp028
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133316euoutp02640859e0a560d3a05c137ccb78064c12~OmcaaPHZI3223232232euoutp028
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133316eucas1p1f998faa8565c32d75dac09c3c496202e~OmcZ8hHC92351423514eucas1p1X;
 Wed, 13 May 2020 13:33:16 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 70.11.60679.C17FBBE5; Wed, 13
 May 2020 14:33:16 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133315eucas1p17499a099b78c332b30911345c3963368~OmcZb2iUF0608106081eucas1p1D;
 Wed, 13 May 2020 13:33:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133315eusmtrp1356aa7bd065b7d5d74e01340e1c9e086~OmcZbJ2G61011910119eusmtrp1Y;
 Wed, 13 May 2020 13:33:15 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-5d-5ebbf71c9ca6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id CE.1A.08375.B17FBBE5; Wed, 13
 May 2020 14:33:15 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133314eusmtip1bdc76c1c17eeadb4dbf5f06fcfed5b5a~OmcYt3rTk3222032220eusmtip1A;
 Wed, 13 May 2020 13:33:14 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:33 +0200
Message-Id: <20200513133245.6408-26-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djPc7oy33fHGTz6zGvRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 51PH2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJebyb/5YtgDuKyyYlNSezLLVI3y6BK2P2r6SC0xIVvxbYNzAeF+li5OSQEDCR+P9qClsX
 IxeHkMAKRonDzf3sEM4XRoneO/dYIZzPjBLvPj1ghGlpfDoZKrGcUWL2zzcILS9+L2ICqWIT
 MJToetvFBmKLCLQySpzo5QEpYhb4xyQx+e8ssCJhgSCJv+t6wcayCKhKnJj8HCzOK2ArseHP
 NGaIdfISqzccALM5geKv7uxnARkkIXCIXeL66ttQRS4SKz7PhbpPWOLV8S3sELaMxOnJPVAN
 zYwSD8+tZYdwehglLjfNgOqwlrhz7hfQrRxA92lKrN+lDxF2lGh4vIAdJCwhwCdx460gSJgZ
 yJy0bTozRJhXoqNNCKJaTWLW8XVwaw9euAR1mofEuRU/oCF8mFHi0cEulgmM8rMQli1gZFzF
 KJ5aWpybnlpslJdarlecmFtcmpeul5yfu4kRmJpO/zv+ZQfjrj9JhxgFOBiVeHgtbu2OE2JN
 LCuuzD3EKMHBrCTC67ceKMSbklhZlVqUH19UmpNafIhRmoNFSZzXeNHLWCGB9MSS1OzU1ILU
 IpgsEwenVAMj+3zjB3fqVaPCyyyORFw9uTQn7f4sS+cVc0VOMR1ceVDh76naejGR609z7Saz
 xxQmefm9f+QqtE1339FpZi+tZS63OVZ5NKkt2SJkf3b6kbMXPb/v9DmjoRHYwB52Uv/5R01H
 0d9yH/8ZfVvyeO6nC8ufatQEdejx5ltULX2o0dPYtNtx/uEzSizFGYmGWsxFxYkAn7DBTEkD
 AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7rS33fHGXzZqGbRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVq8OXKM0eLyrjlsFmuP3GW3OPjhCavF
 51PH2Bx4PdbMW8PosffbAhaP7d8esHrc7z7O5LF5Sb3H7X+PmT0m31jO6LH7ZgObR9+WVYwe
 nzfJebyb/5YtgDtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSez
 LLVI3y5BL2P2r6SC0xIVvxbYNzAeF+li5OSQEDCRaHw6mbWLkYtDSGApo8SLGe8YIRIyEien
 NbBC2MISf651sUEUfWKUON2xD6yITcBQoustREJEoJNRYlr3R3YQh1mghVli75t/bCBVwgIB
 El+nzmIHsVkEVCVOTH7OBGLzCthKbPgzjRlihbzE6g0HwGxOoPirO/tZQGwhgXyJvYv3sU1g
 5FvAyLCKUSS1tDg3PbfYUK84Mbe4NC9dLzk/dxMjMFK2Hfu5eQfjpY3BhxgFOBiVeHgtbu2O
 E2JNLCuuzD3EKMHBrCTC67ceKMSbklhZlVqUH19UmpNafIjRFOioicxSosn5wCjOK4k3NDU0
 t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAON8y9Pn7G26vt2YleE2ad3XD
 hSeHQ8OTLa6X8sw4yb7LRu3s5mjjWNUNhd+FXq+VXfVcfF9eqoLVjJuv380+fCtzgvlsR66d
 XWfeqqRYaUQbP2qwN+7MLxXQ+t5w5uFD6dA36oyqN31+7L8jr/Cv8s25Er+Vi97a8BxhYDV6
 /+qeG+PqQFc+diWW4oxEQy3mouJEAFsCtqKqAgAA
X-CMS-MailID: 20200513133315eucas1p17499a099b78c332b30911345c3963368
X-Msg-Generator: CA
X-RootMTR: 20200513133315eucas1p17499a099b78c332b30911345c3963368
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133315eucas1p17499a099b78c332b30911345c3963368
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133315eucas1p17499a099b78c332b30911345c3963368@eucas1p1.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 26/38] drm: vmwgfx: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KQWNrZWQtYnk6IFJvbGFuZCBTY2hlaWRlZ2dlciA8
c3JvbGFuZEB2bXdhcmUuY29tPgotLS0KRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNlZSAnW1BBVENI
IHY1IDAwLzM4XSBEUk06IGZpeCBzdHJ1Y3Qgc2dfdGFibGUgbmVudHMKdnMuIG9yaWdfbmVudHMg
bWlzdXNlJyB0aHJlYWQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMjAw
NTEzMTMyMTE0LjYwNDYtMS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vVC8KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMgfCAxNyArKysrLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfdHRtX2J1ZmZlci5jIGIvZHJp
dmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfdHRtX2J1ZmZlci5jCmluZGV4IGJmMGJjNDYuLjQ5
ZWQ2YWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92bXdnZngvdm13Z2Z4X3R0bV9idWZm
ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF90dG1fYnVmZmVyLmMKQEAg
LTM2Miw4ICszNjIsNyBAQCBzdGF0aWMgdm9pZCB2bXdfdHRtX3VubWFwX2Zyb21fZG1hKHN0cnVj
dCB2bXdfdHRtX3R0ICp2bXdfdHQpCiB7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gdm13X3R0LT5k
ZXZfcHJpdi0+ZGV2LT5kZXY7CiAKLQlkbWFfdW5tYXBfc2coZGV2LCB2bXdfdHQtPnNndC5zZ2ws
IHZtd190dC0+c2d0Lm5lbnRzLAotCQlETUFfQklESVJFQ1RJT05BTCk7CisJZG1hX3VubWFwX3Nn
dGFibGUoZGV2LCB2bXdfdHQtPnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogCXZtd190dC0+
c2d0Lm5lbnRzID0gdm13X3R0LT5zZ3Qub3JpZ19uZW50czsKIH0KIApAQCAtMzgzLDE2ICszODIs
OCBAQCBzdGF0aWMgdm9pZCB2bXdfdHRtX3VubWFwX2Zyb21fZG1hKHN0cnVjdCB2bXdfdHRtX3R0
ICp2bXdfdHQpCiBzdGF0aWMgaW50IHZtd190dG1fbWFwX2Zvcl9kbWEoc3RydWN0IHZtd190dG1f
dHQgKnZtd190dCkKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSB2bXdfdHQtPmRldl9wcml2LT5k
ZXYtPmRldjsKLQlpbnQgcmV0OwotCi0JcmV0ID0gZG1hX21hcF9zZyhkZXYsIHZtd190dC0+c2d0
LnNnbCwgdm13X3R0LT5zZ3Qub3JpZ19uZW50cywKLQkJCSBETUFfQklESVJFQ1RJT05BTCk7Ci0J
aWYgKHVubGlrZWx5KHJldCA9PSAwKSkKLQkJcmV0dXJuIC1FTk9NRU07CiAKLQl2bXdfdHQtPnNn
dC5uZW50cyA9IHJldDsKLQotCXJldHVybiAwOworCXJldHVybiBkbWFfbWFwX3NndGFibGUoZGV2
LCB2bXdfdHQtPnNndCwgRE1BX0JJRElSRUNUSU9OQUwsIDApOwogfQogCiAvKioKQEAgLTQ0OSwx
MCArNDQwLDEwIEBAIHN0YXRpYyBpbnQgdm13X3R0bV9tYXBfZG1hKHN0cnVjdCB2bXdfdHRtX3R0
ICp2bXdfdHQpCiAJCWlmICh1bmxpa2VseShyZXQgIT0gMCkpCiAJCQlnb3RvIG91dF9zZ19hbGxv
Y19mYWlsOwogCi0JCWlmICh2c2d0LT5udW1fcGFnZXMgPiB2bXdfdHQtPnNndC5uZW50cykgewor
CQlpZiAodnNndC0+bnVtX3BhZ2VzID4gdm13X3R0LT5zZ3Qub3JpZ19uZW50cykgewogCQkJdWlu
dDY0X3Qgb3Zlcl9hbGxvYyA9CiAJCQkJc2dsX3NpemUgKiAodnNndC0+bnVtX3BhZ2VzIC0KLQkJ
CQkJICAgIHZtd190dC0+c2d0Lm5lbnRzKTsKKwkJCQkJICAgIHZtd190dC0+c2d0Lm9yaWdfbmVu
dHMpOwogCiAJCQl0dG1fbWVtX2dsb2JhbF9mcmVlKGdsb2IsIG92ZXJfYWxsb2MpOwogCQkJdm13
X3R0LT5zZ19hbGxvY19zaXplIC09IG92ZXJfYWxsb2M7Ci0tIAoxLjkuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
