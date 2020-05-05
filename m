Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF1F1C5135
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:49:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A41661999
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:49:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4996E66055; Tue,  5 May 2020 08:49:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 37B626615F;
	Tue,  5 May 2020 08:46:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E780A61999
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D8B096615F; Tue,  5 May 2020 08:46:32 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id ECA7661999
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:26 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084626euoutp01ea4d4c43cf8c83f0df4b1a564e66f3a7~MFXrnZmoZ0374903749euoutp01D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084626euoutp01ea4d4c43cf8c83f0df4b1a564e66f3a7~MFXrnZmoZ0374903749euoutp01D
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084625eucas1p1a8113069f3d213d0b48a64bc1f1e3c3a~MFXrT_kcc2424624246eucas1p1z;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 77.32.60679.1E721BE5; Tue,  5
 May 2020 09:46:25 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00~MFXrB5SI71348713487eucas1p2R;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200505084625eusmtrp2b3e6346435845a0bbc1711ba1e415204~MFXrBLYGm0573005730eusmtrp2E;
 Tue,  5 May 2020 08:46:25 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-2c-5eb127e1cc63
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B2.21.07950.1E721BE5; Tue,  5
 May 2020 09:46:25 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084624eusmtip10730825044d8cb0f9ddd84924e6f66d1~MFXqYDOGP0695906959eusmtip1B;
 Tue,  5 May 2020 08:46:24 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:52 +0200
Message-Id: <20200505084614.30424-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEKsWRmVeSWpSXmKPExsWy7djP87oP1TfGGay5bmjRe+4kk8W0O7tZ
 LZaub2S32DhjPavF2/tA7v9tE5ktlnw5z2px5et7NouVq48yWSzYb23x5cpDJotNj6+xWlze
 NYfNYu2Ru+wWBz88YXXg92i99JfNY828NYwee78tYPHY/u0Bq8f97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1ZxejxeZNcAHcUl01Kak5mWWqRvl0CV8ah7X+YC05KVtyZ9JyxgXGvaBcj
 J4eEgIlE26RtzF2MXBxCAisYJbYvW8QE4XxhlNhz/DxU5jOjxOeff1hhWs7PWwBVtZxR4ubj
 jexwLau3XmIDqWITMJToetsFZosItDJKnOjlASliFjjBLPG++zZYQlggSGLGzO3MIDaLgKrE
 v7bF7CA2r4CtxLtlp5gh1slLrN5wAMzmFLCTeHzpDhvIIAmBS+wS63Z0sEMUuUj0TjkMZQtL
 vDq+BcqWkfi/cz4TREMzo8TDc2vZIZweRonLTTMYIaqsJe6c+wU0lgPoPk2J9bv0IcKOEju2
 r2UCCUsI8EnceCsIEmYGMidtm84MEeaV6GgTgqhWk5h1fB3c2oMXLkHd7yFxePInFkgIHWWU
 2NX+lXECo/wshGULGBlXMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525iBKas0/+Of9nBuOtP
 0iFGAQ5GJR7eiM/r44RYE8uKK3MPMUpwMCuJ8C77sSFOiDclsbIqtSg/vqg0J7X4EKM0B4uS
 OK/xopexQgLpiSWp2ampBalFMFkmDk6pBka5s/rptx7lH958Jc1s9h/77GMhvb6LXrx59nKf
 Eo+0W8yEaWub5eeZGk82O/TUnetut9jC13emn19kqjg5eMZMtzkaYRLhp6ySznHXdSrszPvk
 9zVUXpSH1SP15BpNhpq2+ztE5H9N3ME/MffrFe6rW8s3+/fzqjWsVso5f3nu+j6TXFnHiC4l
 luKMREMt5qLiRADC4lkjVQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMIsWRmVeSWpSXmKPExsVy+t/xu7oP1TfGGRz8L2PRe+4kk8W0O7tZ
 LZaub2S32DhjPavF2/tA7v9tE5ktlnw5z2px5et7NouVq48yWSzYb23x5cpDJotNj6+xWlze
 NYfNYu2Ru+wWBz88YXXg92i99JfNY828NYwee78tYPHY/u0Bq8f97uNMHpuX1Hvc/veY2WPy
 jeWMHrtvNrB59G1ZxejxeZNcAHeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWR
 qZK+nU1Kak5mWWqRvl2CXsah7X+YC05KVtyZ9JyxgXGvaBcjJ4eEgInE+XkLmLoYuTiEBJYy
 Six59YgNIiEjcXJaAyuELSzx51oXG0TRJ0aJaYd/MoEk2AQMJbreQiREBDqBEt0f2UEcZoEL
 zBJ/Pu1nBqkSFgiQOHTnBTuIzSKgKvGvbTGYzStgK/Fu2SlmiBXyEqs3HACzOQXsJB5fugN2
 hpBAocSH899ZJzDyLWBkWMUoklpanJueW2ykV5yYW1yal66XnJ+7iREYQduO/dyyg7HrXfAh
 RgEORiUe3g1f18cJsSaWFVfmHmKU4GBWEuFd9mNDnBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJL
 iSbnA6M7ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDY2T3588v
 LoRsvnioWkXmwM9uKck+SVtRtY8dP3v+Sk8WbZW4/iCszSl70Wdf4SOZMZUzglLDRSNu6Jns
 /b6ofI5vFQ9L+P/SLXacn2vVpSVOmi5fnx+bprLec0dgzIozcYdZVj6+6vDp9e/nzsXWwq9n
 bX/rm7X+ueSNOk3f5aymu1/b7XsvqcRSnJFoqMVcVJwIAJs5Bli2AgAA
X-CMS-MailID: 20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00
X-Msg-Generator: CA
X-RootMTR: 20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p2b8ca16ff91ba9d6655f525ef85915d00@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Zhou <David1.Zhou@amd.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 03/25] drm: amdgpu: fix common struct
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

VGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9z
ZyByZXR1cm5zIHRoZQpudW1lciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRk
cmVzcyBzcGFjZS4gSG93ZXZlciB0aGUKc3Vic2VxdWVudCBjYWxscyB0byBkbWFfc3luY19zZ19m
b3Jfe2RldmljZSxjcHV9IGFuZCBkbWFfdW5tYXBfc2cgbXVzdCBiZQpjYWxsZWQgd2l0aCB0aGUg
b3JpZ2luYWwgbnVtYmVyIG9mIHRoZSBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUK
c2dfdGFibGUtPm5lbnRzIGluIHR1cm4gaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgZG1hX21hcF9z
ZyBjYWxsIGFzIHN0YXRlZAppbiBpbmNsdWRlL2xpbnV4L3NjYXR0ZXJsaXN0LmguIEEgY29tbW9u
IG1pc3Rha2Ugd2FzIHRvIGlnbm9yZSBhIHJlc3VsdApvZiB0aGUgZG1hX21hcF9zZyBmdW5jdGlv
biBhbmQgZG9uJ3QgdXNlIHRoZSBzZ190YWJsZS0+b3JpZ19uZW50cyBhdCBhbGwuCgpUbyBhdm9p
ZCBzdWNoIGlzc3VlcywgbGV0cyB1c2UgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJh
dGluZwpkaXJlY3RseSBvbiB0aGUgc3RydWN0IHNnX3RhYmxlIG9iamVjdHMgYW5kIGFkanVzdCBy
ZWZlcmVuY2VzIHRvIHRoZQpuZW50cyBhbmQgb3JpZ19uZW50cyByZXNwZWN0aXZlbHkuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0t
LQpGb3IgbW9yZSBpbmZvcm1hdGlvbiwgc2VlICdbUEFUQ0ggdjMgMDAvMjVdIERSTTogZml4IHN0
cnVjdCBzZ190YWJsZSBuZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDogaHR0cHM6
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kbWFfYnVmLmMgfCA2ICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3R0bS5jICAgICB8IDkgKysrLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RtYV9idWYuYwppbmRleCA0M2Q4ZWQ3Li5lY2E1NjI4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKQEAgLTMwNyw4ICszMDcsOCBAQCBzdGF0
aWMgc3RydWN0IHNnX3RhYmxlICphbWRncHVfZG1hX2J1Zl9tYXAoc3RydWN0IGRtYV9idWZfYXR0
YWNobWVudCAqYXR0YWNoLAogCQlpZiAoSVNfRVJSKHNndCkpCiAJCQlyZXR1cm4gc2d0OwogCi0J
CWlmICghZG1hX21hcF9zZ19hdHRycyhhdHRhY2gtPmRldiwgc2d0LT5zZ2wsIHNndC0+bmVudHMs
IGRpciwKLQkJCQkgICAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKSkKKwkJaWYgKGRtYV9tYXBf
c2d0YWJsZV9hdHRycyhhdHRhY2gtPmRldiwgc2d0LCBkaXIsCisJCQkJCSAgRE1BX0FUVFJfU0tJ
UF9DUFVfU1lOQykpCiAJCQlnb3RvIGVycm9yX2ZyZWU7CiAJCWJyZWFrOwogCkBAIC0zNDksNyAr
MzQ5LDcgQEAgc3RhdGljIHZvaWQgYW1kZ3B1X2RtYV9idWZfdW5tYXAoc3RydWN0IGRtYV9idWZf
YXR0YWNobWVudCAqYXR0YWNoLAogCXN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1
X3R0bV9hZGV2KGJvLT50Ym8uYmRldik7CiAKIAlpZiAoc2d0LT5zZ2wtPnBhZ2VfbGluaykgewot
CQlkbWFfdW5tYXBfc2coYXR0YWNoLT5kZXYsIHNndC0+c2dsLCBzZ3QtPm5lbnRzLCBkaXIpOwor
CQlkbWFfdW5tYXBfc2d0YWJsZShhdHRhY2gtPmRldiwgc2d0LCBkaXIpOwogCQlzZ19mcmVlX3Rh
YmxlKHNndCk7CiAJCWtmcmVlKHNndCk7CiAJfSBlbHNlIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV90dG0uYwppbmRleCBlZmYxZjczLi5mNzFmOTdmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCkBAIC0xMDQzLDcgKzEwNDMsNiBAQCBzdGF0aWMgaW50
IGFtZGdwdV90dG1fdHRfcGluX3VzZXJwdHIoc3RydWN0IHR0bV90dCAqdHRtKQogewogCXN0cnVj
dCBhbWRncHVfZGV2aWNlICphZGV2ID0gYW1kZ3B1X3R0bV9hZGV2KHR0bS0+YmRldik7CiAJc3Ry
dWN0IGFtZGdwdV90dG1fdHQgKmd0dCA9ICh2b2lkICopdHRtOwotCXVuc2lnbmVkIG5lbnRzOwog
CWludCByOwogCiAJaW50IHdyaXRlID0gIShndHQtPnVzZXJmbGFncyAmIEFNREdQVV9HRU1fVVNF
UlBUUl9SRUFET05MWSk7CkBAIC0xMDU4LDkgKzEwNTcsOCBAQCBzdGF0aWMgaW50IGFtZGdwdV90
dG1fdHRfcGluX3VzZXJwdHIoc3RydWN0IHR0bV90dCAqdHRtKQogCQlnb3RvIHJlbGVhc2Vfc2c7
CiAKIAkvKiBNYXAgU0cgdG8gZGV2aWNlICovCi0JciA9IC1FTk9NRU07Ci0JbmVudHMgPSBkbWFf
bWFwX3NnKGFkZXYtPmRldiwgdHRtLT5zZy0+c2dsLCB0dG0tPnNnLT5uZW50cywgZGlyZWN0aW9u
KTsKLQlpZiAobmVudHMgPT0gMCkKKwlyID0gZG1hX21hcF9zZ3RhYmxlKGFkZXYtPmRldiwgdHRt
LT5zZywgZGlyZWN0aW9uKTsKKwlpZiAocikKIAkJZ290byByZWxlYXNlX3NnOwogCiAJLyogY29u
dmVydCBTRyB0byBsaW5lYXIgYXJyYXkgb2YgcGFnZXMgYW5kIGRtYSBhZGRyZXNzZXMgKi8KQEAg
LTEwOTEsOCArMTA4OSw3IEBAIHN0YXRpYyB2b2lkIGFtZGdwdV90dG1fdHRfdW5waW5fdXNlcnB0
cihzdHJ1Y3QgdHRtX3R0ICp0dG0pCiAJCXJldHVybjsKIAogCS8qIHVubWFwIHRoZSBwYWdlcyBt
YXBwZWQgdG8gdGhlIGRldmljZSAqLwotCWRtYV91bm1hcF9zZyhhZGV2LT5kZXYsIHR0bS0+c2ct
PnNnbCwgdHRtLT5zZy0+bmVudHMsIGRpcmVjdGlvbik7Ci0KKwlkbWFfdW5tYXBfc2d0YWJsZShh
ZGV2LT5kZXYsIHR0bS0+c2csIGRpcmVjdGlvbik7CiAJc2dfZnJlZV90YWJsZSh0dG0tPnNnKTsK
IAogI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9BTURHUFVfVVNFUlBUUikKLS0gCjEuOS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
