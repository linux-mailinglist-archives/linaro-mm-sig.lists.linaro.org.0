Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1362A1C5169
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:56:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CB8A66078
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:56:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2FAAE66227; Tue,  5 May 2020 08:56:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A5D66650F;
	Tue,  5 May 2020 08:47:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5360266227
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 45AE366076; Tue,  5 May 2020 08:46:40 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 27E9366076
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:31 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084630euoutp02d1aaaea863d3ab2ecb2ad74bcb4aab78~MFXvgJZ-O2628726287euoutp02d
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:30 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200505084630euoutp02d1aaaea863d3ab2ecb2ad74bcb4aab78~MFXvgJZ-O2628726287euoutp02d
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200505084630eucas1p1cb2107de9a66d414e9041526ee473613~MFXvUFf5x2422924229eucas1p18;
 Tue,  5 May 2020 08:46:30 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9E.01.60698.6E721BE5; Tue,  5
 May 2020 09:46:30 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b~MFXu05eIF1948219482eucas1p2Q;
 Tue,  5 May 2020 08:46:29 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084629eusmtrp124d65a6a9a9d8be703fa6427f75aa98a~MFXu0Isly0942509425eusmtrp1D;
 Tue,  5 May 2020 08:46:29 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-38-5eb127e692ea
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 57.14.08375.5E721BE5; Tue,  5
 May 2020 09:46:29 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084629eusmtip1a56cd20ec71b7a3ecae72184bf9fc36e~MFXuRtPEk0686606866eusmtip1J;
 Tue,  5 May 2020 08:46:28 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:59 +0200
Message-Id: <20200505084614.30424-10-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGe89tZ+LsOA1fNAxGJZaXRKMDhiX04RB9iBCMSGvlSU23bCct
 /dJIM52amtFFKzSs2bxPWV4rtblUtFArr3nNamRFm6YSs52O2bff/3mf5/+8vLwkKm3F3clY
 5QVWpZTHywgHzNC5/Np3zqs2ctfcCEHn9HUhdO2dapxeNeSj9ODCd4J+Um5E6OLnwbR1cAqh
 9TPvcHqg6R5BV74cF9GrLQ0iuu3HLE5fr+wn9kuYigcVgGkYLwVM62Ixxuh1mQTzdHESZyay
 TAhTV3qZGbXNoEzBkBYwzcNqgrlerwOMRe952PGYw94oNj42iVX5h5x0iDGXGEFCrvSSJc+E
 q8H9jRogJiEVBJtqWxANcCClVBmAj/LTcGGwAljYqEWFwQJgr/Yu/i/yLevXWkQLoK3DANYj
 091tgHcRVADUzGsInl2pqwC+ynHkTSg1i8Chpcq/q1yoMKjRmEU8Y9Q2qFv8hPEsoUJgWo4Z
 CHVbYHnNC5RnsV2f6R8j+EWQ6hbBioU6TDAdgB36XkRgF2g21YsE3gx7CrIxIZAK4FRfpUgY
 sgEcuHJnrSIYjvWt2NeS9vt5w+omf0EOhW9HLSJehpQTHJp35mXUjjcMt1FBlsCMdKng3g4L
 TVXrtW1v+lGBGai7MbH2qEYAx01qLA9sKfxfVgyADrixiZwimuUClexFP06u4BKV0X6nzyn0
 wP6pemymhQbw7PepdkCRQOYoOWqpjpTi8iQuWdEOIInKXCWPl2oipZIoeXIKqzp3QpUYz3Lt
 wIPEZG6SwIdfIqRUtPwCG8eyCazq3ylCit3VIHMxnTOqrTv3THuHdRWdiLfuKziu7rMe+rC8
 EjQ1MmSzNZ+/ObXhSPiw9UxnvuK7z0hwbJn4Z7TnwblS6cnVjSlV5nDXiN1JJUzL+8ZG32uG
 MHO2c8D07OSu1LyvuUomtNPDZ6Loc9RWr/w4Rf14pzjcCXGRNN2qv3225mOGdtOSDONi5AE7
 UBUn/wMce5yEUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xu7pP1TfGGfy8rmzRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzWLtkbvsFv/37GC3OPjhCatF
 39pLbA68HmvmrWH02HF3CaPH3m8LWDw2repk89j+7QGrx/3u40wem5fUe9z+95jZY/KN5Ywe
 u282sHn0bVnF6PF5k1wAT5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
 TUpqTmZZapG+XYJexquFRxkL+oUqPk84ztrAOJe/i5GTQ0LAROJd93emLkYuDiGBpYwSO7s7
 GSESMhInpzWwQtjCEn+udbFBFH1ilJjbOYsdJMEmYCjR9RYiISLQySgxrfsjWIJZ4A2TxKWr
 ESC2sECQxKaGVrBJLAKqEqu+PWcBsXkF7CRael9BbZOXWL3hADOIzQkUf3zpDhuILSRQKPHh
 /HfWCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRGzbZjPzfvYLy0MfgQowAHoxIP
 b8Tn9XFCrIllxZW5hxglOJiVRHiX/dgQJ8SbklhZlVqUH19UmpNafIjRFOioicxSosn5wIjO
 K4k3NDU0t7A0NDc2NzazUBLn7RA4GCMkkJ5YkpqdmlqQWgTTx8TBKdXAKLBEP/e4ZvpVuzvr
 ko6ZP8j6OrkvlVO52mOj1YS+uLpLJ1KyLs5+Mvf/9YMVgVtE/x4PNNnKqGg1MZIj3i5x1tpV
 yxeaPA0SlQ2yLbYqfJf8vf7F8x+ur/1fHkhh0omvFPH6fZC1R/ZAz2/LnZ1z49PvFpawid90
 SFM8e0BqWoVL9r3wXIMeJZbijERDLeai4kQAAmqGlbACAAA=
X-CMS-MailID: 20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b
X-Msg-Generator: CA
X-RootMTR: 20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084629eucas1p23d2d6a53451e67e2b0a3544eb696008b@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 10/25] drm: panfrost: fix common struct
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
Ly9sa21sLm9yZy9sa21sLzIwMjAvNS81LzE4NwotLS0KIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9z
dC9wYW5mcm9zdF9nZW0uYyB8IDQgKystLQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZy
b3N0X21tdS5jIHwgNSArKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZy
b3N0X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2dlbS5jCmluZGV4
IDE3YjY1NGUuLjk1ZDdlODAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9w
YW5mcm9zdF9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZ2Vt
LmMKQEAgLTQxLDggKzQxLDggQEAgc3RhdGljIHZvaWQgcGFuZnJvc3RfZ2VtX2ZyZWVfb2JqZWN0
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQogCiAJCWZvciAoaSA9IDA7IGkgPCBuX3NndDsg
aSsrKSB7CiAJCQlpZiAoYm8tPnNndHNbaV0uc2dsKSB7Ci0JCQkJZG1hX3VubWFwX3NnKHBmZGV2
LT5kZXYsIGJvLT5zZ3RzW2ldLnNnbCwKLQkJCQkJICAgICBiby0+c2d0c1tpXS5uZW50cywgRE1B
X0JJRElSRUNUSU9OQUwpOworCQkJCWRtYV91bm1hcF9zZ3RhYmxlKHBmZGV2LT5kZXYsICZiby0+
c2d0c1tpXSwKKwkJCQkJCSAgRE1BX0JJRElSRUNUSU9OQUwpOwogCQkJCXNnX2ZyZWVfdGFibGUo
JmJvLT5zZ3RzW2ldKTsKIAkJCX0KIAkJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Bh
bmZyb3N0L3BhbmZyb3N0X21tdS5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0
X21tdS5jCmluZGV4IGVkMjhhZWIuLjk5MjYxMTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9wYW5mcm9zdC9wYW5mcm9zdF9tbXUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3Qv
cGFuZnJvc3RfbW11LmMKQEAgLTUxNywxMCArNTE3LDkgQEAgc3RhdGljIGludCBwYW5mcm9zdF9t
bXVfbWFwX2ZhdWx0X2FkZHIoc3RydWN0IHBhbmZyb3N0X2RldmljZSAqcGZkZXYsIGludCBhcywK
IAlpZiAocmV0KQogCQlnb3RvIGVycl9wYWdlczsKIAotCWlmICghZG1hX21hcF9zZyhwZmRldi0+
ZGV2LCBzZ3QtPnNnbCwgc2d0LT5uZW50cywgRE1BX0JJRElSRUNUSU9OQUwpKSB7Ci0JCXJldCA9
IC1FSU5WQUw7CisJcmV0ID0gZG1hX21hcF9zZ3RhYmxlKHBmZGV2LT5kZXYsIHNndCwgRE1BX0JJ
RElSRUNUSU9OQUwpOworCWlmIChyZXQpCiAJCWdvdG8gZXJyX21hcDsKLQl9CiAKIAltbXVfbWFw
X3NnKHBmZGV2LCBib21hcHBpbmctPm1tdSwgYWRkciwKIAkJICAgSU9NTVVfV1JJVEUgfCBJT01N
VV9SRUFEIHwgSU9NTVVfTk9FWEVDLCBzZ3QpOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
