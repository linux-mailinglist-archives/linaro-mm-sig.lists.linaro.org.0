Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 605A91D16D3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 16:02:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8260A65F85
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 14:01:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 738ED65F8F; Wed, 13 May 2020 14:01:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BF0796652F;
	Wed, 13 May 2020 13:36:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 663AC65F9E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:35:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 57910664FE; Wed, 13 May 2020 13:35:58 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
 [210.118.77.12])
 by lists.linaro.org (Postfix) with ESMTPS id 97DC265F9E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:19 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513133318euoutp02495fe1ee34400a344878b7c7486675c8~OmccYW1YT3223232232euoutp02B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 13:33:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513133318euoutp02495fe1ee34400a344878b7c7486675c8~OmccYW1YT3223232232euoutp02B
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513133318eucas1p256fff13241ad0b0efd432f88d4503660~OmccBUuO91009610096eucas1p2P;
 Wed, 13 May 2020 13:33:18 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 61.E8.60698.E17FBBE5; Wed, 13
 May 2020 14:33:18 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200513133317eucas1p27aead4025db2da13e5b7c3e14a7cd79d~OmcbevO8n1009510095eucas1p2M;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200513133317eusmtrp1c3a89fc45d96779f5cb8f8ed9477e74f~Omcbd-LdP1049110491eusmtrp1c;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-f3-5ebbf71ef101
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id A7.47.07950.D17FBBE5; Wed, 13
 May 2020 14:33:17 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513133317eusmtip1806f251d176c137ac006a6346916eb1b~OmcatiawH0693306933eusmtip1I;
 Wed, 13 May 2020 13:33:17 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 13 May 2020 15:32:36 +0200
Message-Id: <20200513133245.6408-29-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513133245.6408-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+85tx7XFaV38stJY9ygvzOCgXSnihHQBISLKXHnUSqduWimE
 o5jUvKAWWCpiGmXeplOnuMq0UtNakdeh5mXqTCnNy8qY1tYx++/3PO/z8rx8fCQqasKdyEuy
 SFYuk4aICT6mq5817HL+ofdz/212pBMNbxG69L4Gp3/rUlC6dWacoJ8WvEHo7BpverI9HtB3
 Uh7x6OnWfoTWmtpxuqU6k6ATSipwuuLLN4Quet3Dox9rrQhdOzGIH6CYwqxCwDy3ZGNMxu0H
 OKPNv0MwlZY+nOmNb0CYskexTNe8CWXudj4BjN6oJJik8nzATGmdTwrO8PcEsCGXrrJyt33+
 /OCM2UEkfHzN9bniZEwJjKvUwIGElCc056pwNeCTIioPwLaaAoIT0wB+zzXyODEF4JB5Dvm3
 8nnQjHKDJwBWJtWDxZVm/WtgTxGUB1R/VRN2XkmpAGxMFNgZpawoTMvcb+cVlC9U9yTidsao
 zXBgpNyWJ0khtRcOP/PgylxgQclL1M4ONnu0uwazd0FqgAcnzd0LFx2GI7kfFngFHG0o53G8
 DjbfTVhYuAVgv6GIx4kEAFtu3gdcyht2G379bUap7VBT7cbZB+F77QRmtyG1DHZ+Xc7dvwym
 6tJQzhbC23EiLr0FpjcUL9bWfvyEcszA0YlUjHufVwCWDXTxkoFL+v+ybADygSMbpQgNYhUS
 GXvNVSENVUTJglwvhoVqge2HNc83zFSBF9YLdYAigVgg7OvQ+4lw6VVFdGgdgCQqXik8rrFZ
 wgBpdAwrDzsvjwphFXVgLYmJHYWSnC/nRFSQNJK9wrLhrPzfFCEdnJTg6LbCZI38nXaJ0aLy
 Uvm36XbfO0+srjFa0w96KQ+Mx5kOmy77VB3aOTuZOcQ//thnQ2xcWlpS38MbJaePCF0kljWe
 Tc8DT+XUW9wjIqeO9cmm9V6CE2M/ayURPXm7Z3rXb1zSmZFnHb5ytidm6VhHqSzQ7Nu6Se9/
 sjF961xxVsBFMaYIlnrsQOUK6R8rqz3eXQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsVy+t/xu7qy33fHGdxsMbPoPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HStm9Gic+ISdosvVx4yWWx6fI3V4vKuOWwWPRu2slps
 ffmOyWLtkbvsFss2/WGyOPjhCauDgMeaeWsYPfZ+W8DiMbtjJqvHplWdbB7bvz1g9bjffZzJ
 Y/OSeo/b/x4ze0y+sZzRY/fNBjaPvi2rGD0+b5IL4InSsynKLy1JVcjILy6xVYo2tDDSM7S0
 0DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy5j98wlTwXvJir/rJrA0MN4U7WLk5JAQMJG4
 9+Q5cxcjF4eQwFJGiV2fpjBDJGQkTk5rYIWwhSX+XOtigyj6xChxs3kNG0iCTcBQoustREJE
 oJNRYlr3R3YQh1mghUXiw6eHLCBVwgKBEtt/TAQbyyKgKvHoxRagDg4OXgFbiWd7DCE2yEus
 3nAArIQTKPzqzn6wViGBfIm9i/exTWDkW8DIsIpRJLW0ODc9t9hIrzgxt7g0L10vOT93EyMw
 prYd+7llB2PXu+BDjAIcjEo8vBa3dscJsSaWFVfmHmKU4GBWEuH1Ww8U4k1JrKxKLcqPLyrN
 SS0+xGgKdNNEZinR5HxgvOeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj
 4uCUamAsfB+pVv3A2GGfnsrm3kPb/7w4tr3gS3lyfZool0LcbMuLHEcSJu57HL68PXvxWxe7
 5xeeBLi/OrBrD8dKjmnLJ3s8aLhy9WDTiknTU0+ziu0Je/3q44/Gg0sDuuoOqDTZ1d7ybO3Z
 +l2rqd/70ppT964HalTpzGNpuu/V+fJTzLUVh6/Gb/v4W4mlOCPRUIu5qDgRAHMWcbK/AgAA
X-CMS-MailID: 20200513133317eucas1p27aead4025db2da13e5b7c3e14a7cd79d
X-Msg-Generator: CA
X-RootMTR: 20200513133317eucas1p27aead4025db2da13e5b7c3e14a7cd79d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200513133317eucas1p27aead4025db2da13e5b7c3e14a7cd79d
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <CGME20200513133317eucas1p27aead4025db2da13e5b7c3e14a7cd79d@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v5 29/38] drm: rcar-du: fix common struct
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
b3cKYW5kIGNvcHkvcGFzdGUgc2FmZS4KCmRtYV9tYXBfc2d0YWJsZSgpIGZ1bmN0aW9uIHJldHVy
bnMgemVybyBvciBhbiBlcnJvciBjb2RlLCBzbyBhZGp1c3QgdGhlCnJldHVybiB2YWx1ZSBjaGVj
ayBmb3IgdGhlIHZzcDFfZHVfbWFwX3NnKCkgZnVuY3Rpb24uCgpTaWduZWQtb2ZmLWJ5OiBNYXJl
ayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0tLQpGb3IgbW9yZSBpbmZv
cm1hdGlvbiwgc2VlICdbUEFUQ0ggdjUgMDAvMzhdIERSTTogZml4IHN0cnVjdCBzZ190YWJsZSBu
ZW50cwp2cy4gb3JpZ19uZW50cyBtaXN1c2UnIHRocmVhZDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtaW9tbXUvMjAyMDA1MTMxMzIxMTQuNjA0Ni0xLW0uc3p5cHJvd3NraUBzYW1zdW5n
LmNvbS9ULwotLS0KIGRyaXZlcnMvZ3B1L2RybS9yY2FyLWR1L3JjYXJfZHVfdnNwLmMgIHwgMyAr
LS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdnNwMS92c3AxX2RybS5jIHwgOCArKysrLS0tLQog
MiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9kdV92c3AuYyBiL2RyaXZlcnMvZ3B1
L2RybS9yY2FyLWR1L3JjYXJfZHVfdnNwLmMKaW5kZXggNWU0ZmFmMi4uMmZjMTgxNiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL3JjYXItZHUvcmNhcl9kdV92c3AuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vcmNhci1kdS9yY2FyX2R1X3ZzcC5jCkBAIC0xOTcsOSArMTk3LDggQEAgaW50IHJj
YXJfZHVfdnNwX21hcF9mYihzdHJ1Y3QgcmNhcl9kdV92c3AgKnZzcCwgc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqZmIsCiAJCQlnb3RvIGZhaWw7CiAKIAkJcmV0ID0gdnNwMV9kdV9tYXBfc2codnNw
LT52c3AsIHNndCk7Ci0JCWlmICghcmV0KSB7CisJCWlmIChyZXQpIHsKIAkJCXNnX2ZyZWVfdGFi
bGUoc2d0KTsKLQkJCXJldCA9IC1FTk9NRU07CiAJCQlnb3RvIGZhaWw7CiAJCX0KIAl9CmRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZzcDEvdnNwMV9kcm0uYyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdnNwMS92c3AxX2RybS5jCmluZGV4IGE0YTQ1ZDYuLjg2ZDVlM2YgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdnNwMS92c3AxX2RybS5jCisrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdnNwMS92c3AxX2RybS5jCkBAIC05MTIsOCArOTEyLDggQEAg
aW50IHZzcDFfZHVfbWFwX3NnKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHNnX3RhYmxlICpz
Z3QpCiAJICogc2tpcCBjYWNoZSBzeW5jLiBUaGlzIHdpbGwgbmVlZCB0byBiZSByZXZpc2l0ZWQg
d2hlbiBzdXBwb3J0IGZvcgogCSAqIG5vbi1jb2hlcmVudCBidWZmZXJzIHdpbGwgYmUgYWRkZWQg
dG8gdGhlIERVIGRyaXZlci4KIAkgKi8KLQlyZXR1cm4gZG1hX21hcF9zZ19hdHRycyh2c3AxLT5i
dXNfbWFzdGVyLCBzZ3QtPnNnbCwgc2d0LT5uZW50cywKLQkJCQlETUFfVE9fREVWSUNFLCBETUFf
QVRUUl9TS0lQX0NQVV9TWU5DKTsKKwlyZXR1cm4gZG1hX21hcF9zZ3RhYmxlKHZzcDEtPmJ1c19t
YXN0ZXIsIHNndCwgRE1BX1RPX0RFVklDRSwKKwkJCSAgICAgICBETUFfQVRUUl9TS0lQX0NQVV9T
WU5DKTsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKHZzcDFfZHVfbWFwX3NnKTsKIApAQCAtOTIxLDgg
KzkyMSw4IEBAIHZvaWQgdnNwMV9kdV91bm1hcF9zZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBzZ190YWJsZSAqc2d0KQogewogCXN0cnVjdCB2c3AxX2RldmljZSAqdnNwMSA9IGRldl9nZXRf
ZHJ2ZGF0YShkZXYpOwogCi0JZG1hX3VubWFwX3NnX2F0dHJzKHZzcDEtPmJ1c19tYXN0ZXIsIHNn
dC0+c2dsLCBzZ3QtPm5lbnRzLAotCQkJICAgRE1BX1RPX0RFVklDRSwgRE1BX0FUVFJfU0tJUF9D
UFVfU1lOQyk7CisJZG1hX3VubWFwX3NndGFibGUodnNwMS0+YnVzX21hc3Rlciwgc2d0LCBETUFf
VE9fREVWSUNFLAorCQkJICBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsKIH0KIEVYUE9SVF9TWU1C
T0xfR1BMKHZzcDFfZHVfdW5tYXBfc2cpOwogCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
