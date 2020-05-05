Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1741C50FD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 10:47:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 13AB866528
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 08:47:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F36236652E; Tue,  5 May 2020 08:47:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0052466218;
	Tue,  5 May 2020 08:46:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C359C60B02
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A45C866076; Tue,  5 May 2020 08:46:28 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id C654160F57
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:26 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084625euoutp01e94de307b0ad872934e2b55a6b32a173~MFXqwJA5C0374703747euoutp01D
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 08:46:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084625euoutp01e94de307b0ad872934e2b55a6b32a173~MFXqwJA5C0374703747euoutp01D
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084624eucas1p259ece9904ddb2ff19cde8d111e3a1357~MFXqJND-G1942419424eucas1p2B;
 Tue,  5 May 2020 08:46:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 06.32.60679.0E721BE5; Tue,  5
 May 2020 09:46:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050~MFXpz_Jfx2336923369eucas1p21;
 Tue,  5 May 2020 08:46:24 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084624eusmtrp1f7575e3c6e9734b2b0ad0a89f79fa220~MFXpx1HIA0942509425eusmtrp1y;
 Tue,  5 May 2020 08:46:24 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-25-5eb127e06c81
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 20.21.07950.0E721BE5; Tue,  5
 May 2020 09:46:24 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084623eusmtip1889e719913a78f767a219409dc8c3bf4~MFXpOhphi0686606866eusmtip1E;
 Tue,  5 May 2020 08:46:23 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Tue,  5 May 2020 10:45:50 +0200
Message-Id: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505083926.28503-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSbUhTcRTG+d+73V2nk9sU/GeaMagoUbMsLliSWXQ/REgQmZC58jat6WR3
 mgrl1BRbmi0jxUqG+JJOcy6dqclyqfOFlqmEkTWdVmhJolNMxWpes2+/55zn8BwOB0eF9VxP
 PC5BQcsTxFIRxucYun+99Rvb3RC1z2LaQeZbehGyobieS/42qFFyeOEnRlZruxBSYwwmbz/S
 8Uj78DhC6ifec8mh1scYWdf5iUd2zE5yj7pQkx2lCFVbWguo9kUNh2peHONS1jtmhHpenk59
 XJtAqcKRKkC1fVBi1N3GGkDN67eHO0fyD8fQ0rhkWh4QEs2P7dNOg8Rq75Sv7WpECaxQBXAc
 EkEw1xikAnxcSDwFMC/jNWCFHUD9aC2HFfMAdlunEBVwYicKslG2UQXgzOAXZHNktqUWc7gw
 IhCqZlTr7E5kA9iT7+JglGhFYEmW2JHtRkTAyneJjjKH2AkH9J95DhYQR6BVVYSxYT5Qq3uF
 OtiJCIErPcb1YEiYeDDb8H3DdBx2NU9usBucNjfyWPaC/YV5HHYgC8BxSx2PFXkADmUWA9YV
 DEcty5hjI5TYA+tbA9hyKJxruoWxR3KFIzNb2P1d4X1DEcqWBTA3R8i6d8ES87PN2I6BQZRl
 CtoKzOuHExJqADP0p+8Bn5L/WRoAaoAHncTES2hmfwJ93Z8RxzNJCRL/y7J4Pfj7Rv1rZvsL
 0Lp6yQQIHIhcBBHz9VFCrjiZSY03AYijIndB5ZIuSiiIEaem0XLZRXmSlGZMYBvOEXkIDpRN
 XRASErGCvkbTibT8XxfBnTyVIN0aZu+LnRjQDZvPbbUplir8yw/qvvUuP5mjHzz0u1ripu+Z
 7UyWS8JXKlaNHUUj2jGFJrOqzJZ7xnc0XBHhdTKyG2GO0U0vF8yPlFMyp5RoZLVBe8r5Zovw
 RFpOW+gsmWJdlbm0N19RS5Eb56XJAWFnf7RQbwy+hHev5ZBNxGFixYF7UTkj/gMYtX+JQgMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xu7oP1DfGGXw8x2bRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t0Tl7A7vFlysPmSw2Pb7GanF51xw2i7VH7rJbHPzwhNWB
 x+PJwXlMHmvmrWH02PttAYvH9m8PWD3udx9n8ti8pN7j9r/HzB6Tbyxn9Nh9s4HNo2/LKkaP
 z5vkArij9GyK8ktLUhUy8otLbJWiDS2M9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S
 9DJOrX7FWLBStuLZ3olMDYz3JboYOTkkBEwkOvpbmbsYuTiEBJYySmy4d4wVIiEjcXJaA5Qt
 LPHnWhcbiC0k8IlR4ttBZRCbTcBQoustSJyLQ0Sgk1FiWvdHdhCHWeAAk8Srtu2MIFXCAmES
 D2ZfYQexWQRUJS5sugdm8wrYStzvms4GsUFeYvWGA8wgNqeAncTvE/uZIbbZShy99YRlAiPf
 AkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIERsu3Yzy07GLveBR9iFOBgVOLh3fB1fZwQ
 a2JZcWXuIUYJDmYlEd5lPzbECfGmJFZWpRblxxeV5qQWH2I0BTpqIrOUaHI+MHrzSuINTQ3N
 LSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwBpcLJ5+SCD8Yz9wezZX78+7K
 iXvrghiF/imF7PyiYmEr75P6dHVFk1jP37est+tOXr6Q+3G2vtDuTAsrO7f1jF/Fv53+scun
 9r1mJc9K30X5vkt/c+4OKIhfYaSpGLU4Q1Q2xqCn/80/LZFrigdvW+h99nr87E38nuTe7BfL
 ZkRnbJlm5npTiaU4I9FQi7moOBEAhIgjf6YCAAA=
X-CMS-MailID: 20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050
X-Msg-Generator: CA
X-RootMTR: 20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <CGME20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v3 01/25] dma-mapping: add generic helpers
 for mapping sgtable objects
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

c3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0cnVjdHVyZSB1c2VkIGZvciBkZXNjcmliaW5n
IGEgbWVtb3J5CmJ1ZmZlci4gSXQgY29uc2lzdHMgb2YgYSBzY2F0dGVybGlzdCB3aXRoIG1lbW9y
eSBwYWdlcyBhbmQgRE1BIGFkZHJlc3Nlcwooc2dsIGVudHJ5KSwgYXMgd2VsbCBhcyB0aGUgbnVt
YmVyIG9mIHNjYXR0ZXJsaXN0IGVudHJpZXM6IENQVSBwYWdlcwoob3JpZ19uZW50cyBlbnRyeSkg
YW5kIERNQSBwYWdlcyAobmVudHMgZW50cnkpLgoKSXQgdHVybmVkIG91dCB0aGF0IGl0IHdhcyBh
IGNvbW1vbiBtaXN0YWtlIHRvIG1pc3VzZSBuZW50cyBhbmQgb3JpZ19uZW50cwplbnRyaWVzLCBj
YWxsIGRtYS1tYXBwaW5nIGZ1bmN0aW9ucyB3aXRoIGEgd3JvbmcgbnVtYmVyIG9mIGVudHJpZXMg
b3IKaWdub3JpbmcgdGhlIG51bWJlciBvZiBtYXBwZWQgZW50cmllcyByZXR1cm5lZCBieSB0aGUg
ZG1hX21hcF9zZwpmdW5jdGlvbi4KClRvIGF2b2lkIHN1Y2ggaXNzdWVzLCBsZXRzIGludHJvZHVj
ZSBhIGNvbW1vbiB3cmFwcGVycyBvcGVyYXRpbmcgZGlyZWN0bHkKb24gdGhlIHN0cnVjdCBzZ190
YWJsZSBvYmplY3RzLCB3aGljaCB0YWtlIGNhcmUgb2YgdGhlIHByb3BlciB1c2Ugb2YKdGhlIG5l
bnRzIGFuZCBvcmlnX25lbnRzIGVudHJpZXMuCgpTaWduZWQtb2ZmLWJ5OiBNYXJlayBTenlwcm93
c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Ci0tLQogaW5jbHVkZS9saW51eC9kbWEtbWFw
cGluZy5oIHwgMzIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvbGlu
dXgvaW9tbXUuaCAgICAgICB8ICA2ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtbWFwcGluZy5oIGIvaW5jbHVk
ZS9saW51eC9kbWEtbWFwcGluZy5oCmluZGV4IGI0MzExNmEuLjgzNjRjMjBkIDEwMDY0NAotLS0g
YS9pbmNsdWRlL2xpbnV4L2RtYS1tYXBwaW5nLmgKKysrIGIvaW5jbHVkZS9saW51eC9kbWEtbWFw
cGluZy5oCkBAIC02MDksNiArNjA5LDM2IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBkbWFfc3luY19z
aW5nbGVfcmFuZ2VfZm9yX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJcmV0dXJuIGRtYV9z
eW5jX3NpbmdsZV9mb3JfZGV2aWNlKGRldiwgYWRkciArIG9mZnNldCwgc2l6ZSwgZGlyKTsKIH0K
IAorc3RhdGljIGlubGluZSBpbnQgZG1hX21hcF9zZ3RhYmxlX2F0dHJzKHN0cnVjdCBkZXZpY2Ug
KmRldiwKKwlzdHJ1Y3Qgc2dfdGFibGUgKnNndCwgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGly
LCB1bnNpZ25lZCBsb25nIGF0dHJzKQoreworCWludCBuID0gZG1hX21hcF9zZ19hdHRycyhkZXYs
IHNndC0+c2dsLCBzZ3QtPm9yaWdfbmVudHMsIGRpciwgYXR0cnMpOworCisJaWYgKG4gPiAwKSB7
CisJCXNndC0+bmVudHMgPSBuOworCQlyZXR1cm4gMDsKKwl9CisJcmV0dXJuIC1FSU5WQUw7Cit9
CisKK3N0YXRpYyBpbmxpbmUgdm9pZCBkbWFfdW5tYXBfc2d0YWJsZV9hdHRycyhzdHJ1Y3QgZGV2
aWNlICpkZXYsCisJc3RydWN0IHNnX3RhYmxlICpzZ3QsIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9u
IGRpciwgdW5zaWduZWQgbG9uZyBhdHRycykKK3sKKwlkbWFfdW5tYXBfc2dfYXR0cnMoZGV2LCBz
Z3QtPnNnbCwgc2d0LT5vcmlnX25lbnRzLCBkaXIsIGF0dHJzKTsKK30KKworc3RhdGljIGlubGlu
ZSB2b2lkIGRtYV9zeW5jX3NndGFibGVfZm9yX2NwdShzdHJ1Y3QgZGV2aWNlICpkZXYsCisJc3Ry
dWN0IHNnX3RhYmxlICpzZ3QsIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcikKK3sKKwlkbWFf
c3luY19zZ19mb3JfY3B1KGRldiwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywgZGlyKTsKK30K
Kworc3RhdGljIGlubGluZSB2b2lkIGRtYV9zeW5jX3NndGFibGVfZm9yX2RldmljZShzdHJ1Y3Qg
ZGV2aWNlICpkZXYsCisJc3RydWN0IHNnX3RhYmxlICpzZ3QsIGVudW0gZG1hX2RhdGFfZGlyZWN0
aW9uIGRpcikKK3sKKwlkbWFfc3luY19zZ19mb3JfZGV2aWNlKGRldiwgc2d0LT5zZ2wsIHNndC0+
b3JpZ19uZW50cywgZGlyKTsKK30KKwogI2RlZmluZSBkbWFfbWFwX3NpbmdsZShkLCBhLCBzLCBy
KSBkbWFfbWFwX3NpbmdsZV9hdHRycyhkLCBhLCBzLCByLCAwKQogI2RlZmluZSBkbWFfdW5tYXBf
c2luZ2xlKGQsIGEsIHMsIHIpIGRtYV91bm1hcF9zaW5nbGVfYXR0cnMoZCwgYSwgcywgciwgMCkK
ICNkZWZpbmUgZG1hX21hcF9zZyhkLCBzLCBuLCByKSBkbWFfbWFwX3NnX2F0dHJzKGQsIHMsIG4s
IHIsIDApCkBAIC02MTcsNiArNjQ3LDggQEAgc3RhdGljIGlubGluZSB2b2lkIGRtYV9zeW5jX3Np
bmdsZV9yYW5nZV9mb3JfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwKICNkZWZpbmUgZG1hX3Vu
bWFwX3BhZ2UoZCwgYSwgcywgcikgZG1hX3VubWFwX3BhZ2VfYXR0cnMoZCwgYSwgcywgciwgMCkK
ICNkZWZpbmUgZG1hX2dldF9zZ3RhYmxlKGQsIHQsIHYsIGgsIHMpIGRtYV9nZXRfc2d0YWJsZV9h
dHRycyhkLCB0LCB2LCBoLCBzLCAwKQogI2RlZmluZSBkbWFfbW1hcF9jb2hlcmVudChkLCB2LCBj
LCBoLCBzKSBkbWFfbW1hcF9hdHRycyhkLCB2LCBjLCBoLCBzLCAwKQorI2RlZmluZSBkbWFfbWFw
X3NndGFibGUoZCwgcywgcikgZG1hX21hcF9zZ3RhYmxlX2F0dHJzKGQsIHMsIHIsIDApCisjZGVm
aW5lIGRtYV91bm1hcF9zZ3RhYmxlKGQsIHMsIHIpIGRtYV91bm1hcF9zZ3RhYmxlX2F0dHJzKGQs
IHMsIHIsIDApCiAKIGV4dGVybiBpbnQgZG1hX2NvbW1vbl9tbWFwKHN0cnVjdCBkZXZpY2UgKmRl
diwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCiAJCXZvaWQgKmNwdV9hZGRyLCBkbWFfYWRk
cl90IGRtYV9hZGRyLCBzaXplX3Qgc2l6ZSwKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvaW9t
bXUuaCBiL2luY2x1ZGUvbGludXgvaW9tbXUuaAppbmRleCA3ZWY4YjBiLi41MTA2YjY1IDEwMDY0
NAotLS0gYS9pbmNsdWRlL2xpbnV4L2lvbW11LmgKKysrIGIvaW5jbHVkZS9saW51eC9pb21tdS5o
CkBAIC00NjYsNiArNDY2LDEyIEBAIGV4dGVybiBzaXplX3QgaW9tbXVfbWFwX3NnX2F0b21pYyhz
dHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4sCiBleHRlcm4gdm9pZCBpb21tdV9zZXRfZmF1bHRf
aGFuZGxlcihzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4sCiAJCQlpb21tdV9mYXVsdF9oYW5k
bGVyX3QgaGFuZGxlciwgdm9pZCAqdG9rZW4pOwogCitzdGF0aWMgaW5saW5lIHNpemVfdCBpb21t
dV9tYXBfc2d0YWJsZShzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4sCisJCQl1bnNpZ25lZCBs
b25nIGlvdmEsIHN0cnVjdCBzZ190YWJsZSAqc2d0LCBpbnQgcHJvdCkKK3sKKwlyZXR1cm4gaW9t
bXVfbWFwX3NnKGRvbWFpbiwgaW92YSwgc2d0LT5zZ2wsIHNndC0+b3JpZ19uZW50cywgcHJvdCk7
Cit9CisKIGV4dGVybiB2b2lkIGlvbW11X2dldF9yZXN2X3JlZ2lvbnMoc3RydWN0IGRldmljZSAq
ZGV2LCBzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0KTsKIGV4dGVybiB2b2lkIGlvbW11X3B1dF9yZXN2
X3JlZ2lvbnMoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0KTsKIGV4
dGVybiB2b2lkIGdlbmVyaWNfaW9tbXVfcHV0X3Jlc3ZfcmVnaW9ucyhzdHJ1Y3QgZGV2aWNlICpk
ZXYsCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
