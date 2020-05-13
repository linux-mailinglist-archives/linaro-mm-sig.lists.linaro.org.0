Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A71F71D163A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 15:45:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABFB565FB4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 13:45:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9D21365FB6; Wed, 13 May 2020 13:45:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9210066052;
	Wed, 13 May 2020 13:34:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 30ECF65F90
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 23C9E65F9C; Wed, 13 May 2020 13:33:17 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 67A8F65F8A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:06 +0000 (UTC)
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133305euoutp011ccc9a8e7ecae29e09d4c221c54a98be~OmcP_LJC_2146121461euoutp01A
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200513133305euoutp011ccc9a8e7ecae29e09d4c221c54a98be~OmcP_LJC_2146121461euoutp01A
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200513133305eucas1p1aa1760055cdc49ff4321a57d67227f93~OmcPsFhgG0876608766eucas1p1z;
 Wed, 13 May 2020 13:33:05 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 47.C5.61286.117FBBE5; Wed, 13
 May 2020 14:33:05 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133304eucas1p2d24ddf9d7d60aad254486010db86e6bc~OmcPXj3u32581325813eucas1p2L;
 Wed, 13 May 2020 13:33:04 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133304eusmtrp19607ff2c6360b25ea2a6dfa1ac9ca55e~OmcPWzvCN1049110491eusmtrp1F;
 Wed, 13 May 2020 13:33:04 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-43-5ebbf7113423
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C7.37.07950.017FBBE5; Wed, 13
 May 2020 14:33:04 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133304eusmtip15529af41e9a69e66f77087c52417587e~OmcOpSeCB0741507415eusmtip1h;
 Wed, 13 May 2020 13:33:04 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:19 +0200
Message-Id: <20200513133245.6408-12-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHec/Z2c6Gq+MUfVFTWBQkObMSTliR0IdDhei3irJWHqblVDbv
 Ui2Hdy3Lwktms4SlzpY6VFzLprOlxrxMh5pmoiQKonktEW3zmH37Pf8Lz8vDi6MCI+aBR8XE
 07IYcbSQzWM1ff7T6+e8rg8/pu7gkQWWLoSsL9Fi5HbTE5QcXF1gk9W1nQj5orARIVVtQaTa
 qgWkoRIhVwYnEbJhyoaR1tZyNllnGueQxsVpjGwrs3HO7ac0FRpAGdZULOrNh1mEal77gVEV
 XWHURJ4ZoRqrHlDftqZQqmhYDSj9iIJNPdLVAGq5wTvU6SrvdAQdHZVIy/zP3uRFlhamxlkP
 JA91b6AKMA1zAY5D4iQ0WFi5gIcLiLcAKkZKEGZYAXBz6RfGDMsA5myO2h3uTiPbquQ4WECo
 AWzRHN1rzBZbdkJsIgDmzueyHexKZAD4pcDJEUIJEwoHVDbgMFyIUKj6ubrDLOIQtLY0Yw7m
 E2fgQrWWzWzzgbXvP6EO5tr1ubG2ncdCwsaBWb+fYUzoPHxetr3LLnDOrOMw7AV7ivJ3C0oA
 Jy11HGbIB9CaXgKYVBAcs2ywHedAiSNQ2+rPyMFQ/zIfYa60Dw7POztk1I5Pm4pRRubD7EwB
 kz4My8zv9tYa+wZ2IxQcmopjDtQB4MMqI1YIfMr+71IBUAPc6QS5VELLA2LoJJFcLJUnxEhE
 t2OlDcD+sXq2zEstYHXgVjsgcCB04pOj+nABJk6Up0jbAcRRoSs/RGuX+BHilFRaFntDlhBN
 y9uBJ84SuvNPvJ69LiAk4nj6Lk3H0bJ/LoJzPRSgqTjdreq+oTMh0BpWqulpNHK3TN2qyylF
 nvWv0rKu9eVV1sbytJG66Kz4nI/HhSzbeMjFqJryGZNUcu9Slu8FY3JbWmY/N/jKks48UeFG
 JIV8zYCaRFGE/tTQdK/YoB/i9n5/3D9TPrKZZFn0UuIvlYXe60GiwT6//sDtOweFLHmkOMAX
 lcnFfwHtUAIcVAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsVy+t/xu7oC33fHGfx6YGrRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlnMnrCZyWLBfmuL5ZfXM1rsXchk8eXKQyaLTY+vsVpc3jWHzWLt
 kbvsFgc/PGG12D/rGrsDv8eaeWsYPfZ+W8DisXjPSyaP7d8esHrMOxnocb/7OJPH5iX1Hrf/
 PWb2mHxjOaPH7psNbB59W1YxenzeJBfAE6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdo
 bB5rZWSqpG9nk5Kak1mWWqRvl6CXMXNCVcFl2Yqrp34xNzA+kehi5OSQEDCR6LjczN7FyMUh
 JLCUUaJr+mQWiISMxMlpDawQtrDEn2tdbBBFnxgl/m6fxASSYBMwlOh6C5EQEehklJjW/ZEd
 JMEscIZZ4vcGbxBbWMBP4u+Op2BxFgFVics7toNN5RWwlXi/cj0bxAZ5idUbDjCD2JxA8Vd3
 9oNdISSQL7F38T62CYx8CxgZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgTG0LZjP7fsYOx6
 F3yIUYCDUYmH1+LW7jgh1sSy4srcQ4wSHMxKIrx+64FCvCmJlVWpRfnxRaU5qcWHGE2BjprI
 LCWanA+M77ySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYxb56gI
 9O9/bBOxiKkz5qeT7eWWpau46w4+WX5aXMmzczFr5a6L/DdL3i7srNyyZ4LLLYXjU4UUfi+8
 sCWzqfPC2ZXbtnk7cn201meVKlv8P+QXd36wDEN0WeTXw0brn/zZtHDJe/OrLdW7xC5Pzr1y
 qYKbVUnLpqpChZHx0KtfDU5MW86Z3TuqxFKckWioxVxUnAgAkBX5ZrcCAAA=
X-CMS-MailID: 20200513133304eucas1p2d24ddf9d7d60aad254486010db86e6bc
X-Msg-Generator: CA
X-RootMTR: 20200513133304eucas1p2d24ddf9d7d60aad254486010db86e6bc
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133304eucas1p2d24ddf9d7d60aad254486010db86e6bc
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133304eucas1p2d24ddf9d7d60aad254486010db86e6bc@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 12/38] drm: i915: fix common struct
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
dW5jdGlvbi4KClRoaXMgZHJpdmVyIGNyZWF0aXZlbHkgdXNlcyBzZ190YWJsZS0+b3JpZ19uZW50
cyB0byBzdG9yZSB0aGUgc2l6ZSBvZiB0aGUKYWxsb2NhdGVkIHNjYXR0ZXJsaXN0IGFuZCBpZ25v
cmVzIHRoZSBudW1iZXIgb2YgdGhlIGVudHJpZXMgcmV0dXJuZWQgYnkKZG1hX21hcF9zZyBmdW5j
dGlvbi4gVGhlIHNnX3RhYmxlLT5vcmlnX25lbnRzIGlzIChtaXMpdXNlZCB0byBwcm9wZXJseQpm
cmVlIHRoZSAob3ZlcilhbGxvY2F0ZWQgc2NhdHRlcmxpc3QuCgpUaGlzIHBhdGNoIG9ubHkgaW50
cm9kdWNlcyB0aGUgY29tbW9uIERNQS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJhdGluZwpkaXJlY3Rs
eSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgdG8gdGhlIGRtYWJ1ZiByZWxhdGVkIGZ1
bmN0aW9ucywKc28gdGhlIG90aGVyIGRyaXZlcnMsIHdoaWNoIG1pZ2h0IHNoYXJlIGJ1ZmZlcnMg
d2l0aCBpOTE1IGNvdWxkIHJlbHkgb24KdGhlIHByb3Blcmx5IHNldCBuZW50cyBhbmQgb3JpZ19u
ZW50cyB2YWx1ZXMuCgpTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dz
a2lAc2Ftc3VuZy5jb20+Ci0tLQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjUg
MDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1
c2UnIHRocmVhZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvMjAyMDA1MTMx
MzIxMTQuNjA0Ni0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS9ULwotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyAgICAgICB8IDExICsrKy0tLS0tLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfZG1hYnVmLmMgfCAgNyArKyst
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCmluZGV4IDdkYjVhNzku
LjZjNjc4MTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9k
bWFidWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMK
QEAgLTQ4LDEyICs0OCw5IEBAIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUgKmk5MTVfZ2VtX21hcF9k
bWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lCiAJCXNyYyA9IHNnX25l
eHQoc3JjKTsKIAl9CiAKLQlpZiAoIWRtYV9tYXBfc2dfYXR0cnMoYXR0YWNobWVudC0+ZGV2LAot
CQkJICAgICAgc3QtPnNnbCwgc3QtPm5lbnRzLCBkaXIsCi0JCQkgICAgICBETUFfQVRUUl9TS0lQ
X0NQVV9TWU5DKSkgewotCQlyZXQgPSAtRU5PTUVNOworCXJldCA9IGRtYV9tYXBfc2d0YWJsZShh
dHRhY2htZW50LT5kZXYsIHN0LCBkaXIsIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOworCWlmIChy
ZXQpCiAJCWdvdG8gZXJyX2ZyZWVfc2c7Ci0JfQogCiAJcmV0dXJuIHN0OwogCkBAIC03Myw5ICs3
MCw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX3VubWFwX2RtYV9idWYoc3RydWN0IGRtYV9idWZf
YXR0YWNobWVudCAqYXR0YWNobWVudCwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqID0gZG1hX2J1Zl90b19vYmooYXR0YWNobWVudC0+ZG1hYnVmKTsKIAotCWRtYV91bm1hcF9z
Z19hdHRycyhhdHRhY2htZW50LT5kZXYsCi0JCQkgICBzZy0+c2dsLCBzZy0+bmVudHMsIGRpciwK
LQkJCSAgIERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOworCWRtYV91bm1hcF9zZ3RhYmxlKGF0dGFj
aG1lbnQtPmRldiwgc2csIGRpciwgRE1BX0FUVFJfU0tJUF9DUFVfU1lOQyk7CiAJc2dfZnJlZV90
YWJsZShzZyk7CiAJa2ZyZWUoc2cpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL21vY2tfZG1hYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL21vY2tfZG1hYnVmLmMKaW5kZXggZGViYWY3Yi4uYmUzMGIyNyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2RtYWJ1Zi5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19kbWFidWYuYwpAQCAtMjgs
MTAgKzI4LDkgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqbW9ja19tYXBfZG1hX2J1ZihzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2htZW50LAogCQlzZyA9IHNnX25leHQoc2cpOwog
CX0KIAotCWlmICghZG1hX21hcF9zZyhhdHRhY2htZW50LT5kZXYsIHN0LT5zZ2wsIHN0LT5uZW50
cywgZGlyKSkgewotCQllcnIgPSAtRU5PTUVNOworCWVyciA9IGRtYV9tYXBfc2d0YWJsZShhdHRh
Y2htZW50LT5kZXYsIHN0LCBkaXIsIDApOworCWlmIChlcnIpCiAJCWdvdG8gZXJyX3N0OwotCX0K
IAogCXJldHVybiBzdDsKIApAQCAtNDYsNyArNDUsNyBAQCBzdGF0aWMgdm9pZCBtb2NrX3VubWFw
X2RtYV9idWYoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWVudCwKIAkJCSAgICAg
ICBzdHJ1Y3Qgc2dfdGFibGUgKnN0LAogCQkJICAgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9u
IGRpcikKIHsKLQlkbWFfdW5tYXBfc2coYXR0YWNobWVudC0+ZGV2LCBzdC0+c2dsLCBzdC0+bmVu
dHMsIGRpcik7CisJZG1hX3VubWFwX3NndGFibGUoYXR0YWNobWVudC0+ZGV2LCBzdCwgZGlyLCAw
KTsKIAlzZ19mcmVlX3RhYmxlKHN0KTsKIAlrZnJlZShzdCk7CiB9Ci0tIAoxLjkuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMu
bGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
