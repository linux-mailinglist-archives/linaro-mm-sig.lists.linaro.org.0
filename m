Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AED692527F8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:59:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB845617F1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:59:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BD7BA60C37; Wed, 26 Aug 2020 06:59:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19C7D66706;
	Wed, 26 Aug 2020 06:38:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D7F0C60749
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:37:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CC12E61813; Wed, 26 Aug 2020 06:37:00 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id E5CE960749
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:46 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063546euoutp01aafda4029cf5a93acf85f12972bb7922~uve2ku5aK2036820368euoutp01U
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063546euoutp01aafda4029cf5a93acf85f12972bb7922~uve2ku5aK2036820368euoutp01U
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200826063545eucas1p2edc9ac63ec56f99bab8e271eff5440e2~uve2OSvwE0399203992eucas1p2k;
 Wed, 26 Aug 2020 06:35:45 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id EC.33.06456.1C2064F5; Wed, 26
 Aug 2020 07:35:45 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063545eucas1p22eb2c7a643a299f3e1696b4c5bae0694~uve150Ac60404404044eucas1p2q;
 Wed, 26 Aug 2020 06:35:45 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200826063545eusmtrp22c87e823ad4305913648d2839e77db20~uve15K6oO0466204662eusmtrp2h;
 Wed, 26 Aug 2020 06:35:45 +0000 (GMT)
X-AuditID: cbfec7f2-7efff70000001938-e2-5f4602c1d2a3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8D.53.06017.1C2064F5; Wed, 26
 Aug 2020 07:35:45 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063544eusmtip2f6851b137f50729822df24f66abac75d~uve1WBhZ00474104741eusmtip2Y;
 Wed, 26 Aug 2020 06:35:44 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:13 +0200
Message-Id: <20200826063316.23486-30-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDKsWRmVeSWpSXmKPExsWy7djPc7oHmdziDWZO0LHoPXeSyeLRqhvM
 FhtnrGe1+L9tIrPFla/v2SxWrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbTD3/ndni
 4IcnrA68HmvmrWH02PttAYvHzll32T163rSwemz/9oDV4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dz6tqxi9Pi8SS6AJ4rLJiU1J7MstUjfLoEr49zHhcwFd0Qr2r/sYGtg/CHYxcjJISFg
 InFj1nPmLkYuDiGBFYwSL0/8Y4RwvjBKPJz/mQXC+cwo8b/rCjtMy+eVM6BaljNKXFt+mh2u
 5cGfr2BVbAKGEl1vu9hAbBGBVkaJE708IDazwDsmiSOftUBsYQEfiRl7rzOC2CwCqhJvp30F
 q+cVsJPYNeEYG8Q2eYnVGw4wg9icQPHj3f1sIMskBM6xS+w70MYEUeQisffQf6gGYYlXx7dA
 nSoj8X/nfCaIhmagh86tZYdwehglLjfNYISospa4c+4XUDcH0HmaEut36UOEHSUW3gBp5gCy
 +SRuvBWEeIBPYtK26cwQYV6JjjYhiGo1iVnH18GtPXjhEjOE7SHRPvE6EySAJjJKXHndwzaB
 UX4WwrIFjIyrGMVTS4tz01OLDfNSy/WKE3OLS/PS9ZLzczcxAtPU6X/HP+1g/Hop6RCjAAej
 Eg/vAjbXeCHWxLLiytxDjBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJW
 SCA9sSQ1OzW1ILUIJsvEwSnVwOi6/5TRnxlG6xMi6/hW6+7La3jWu9n5kFk893O9E0/n5h2z
 71GO/as6PU3Mvk/7+6dZ80wsWKSUZ7e/nLtv+SITgSuvzcw+V0ywmrh9W92kqy5Gn/NPXA89
 NOMIn1e88Y1ohi53wUWBr2sqsq9cmTLNzvPfY//AhM2/c6caz1Le89Tk4pqzkppKLMUZiYZa
 zEXFiQBVLYjGTwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xe7oHmdziDdZ/F7XoPXeSyeLRqhvM
 FhtnrGe1+L9tIrPFla/v2SxWrj7KZLFgv7XFlysPmSw2Pb7GanF51xw2i7VH7rJbTD3/ndni
 4IcnrA68HmvmrWH02PttAYvHzll32T163rSwemz/9oDV4373cSaPzUvqPW7/e8zsMfnGckaP
 3Tcb2Dz6tqxi9Pi8SS6AJ0rPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/O
 JiU1J7MstUjfLkEv49zHhcwFd0Qr2r/sYGtg/CHYxcjJISFgIvF55QzmLkYuDiGBpYwSE96t
 ZYJIyEicnNbACmELS/y51sUGYgsJfGKU6P4aDmKzCRhKdL0FiXNxiAh0MkpM6/7IDuIwC3xj
 kpi09BZYh7CAj8SMvdcZQWwWAVWJt9O+gsV5Bewkdk04xgaxQV5i9YYDzCA2J1D8eHc/1DZb
 idNrZzBPYORbwMiwilEktbQ4Nz232EivODG3uDQvXS85P3cTIzBqth37uWUHY9e74EOMAhyM
 Sjy8C9hc44VYE8uKK3MPMUpwMCuJ8DqdPR0nxJuSWFmVWpQfX1Sak1p8iNEU6KiJzFKiyfnA
 iM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cDYN/lbUUdep/dj
 FaGTWZMlzJrm1krxL436zJLa/WRNbKiwln+a5oxivsxank18Nppmhkn3T9w9M1lv0+y3wSIq
 ToIznoa822efuObxseUbnjBt55+y9mbG8Z5d6jMU1Nau/N0yqzM8zbF1b8dE09tSMXsMVnut
 bynW034hoNuz8UbAoQoTQSclluKMREMt5qLiRABTDpensAIAAA==
X-CMS-MailID: 20200826063545eucas1p22eb2c7a643a299f3e1696b4c5bae0694
X-Msg-Generator: CA
X-RootMTR: 20200826063545eucas1p22eb2c7a643a299f3e1696b4c5bae0694
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063545eucas1p22eb2c7a643a299f3e1696b4c5bae0694
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063545eucas1p22eb2c7a643a299f3e1696b4c5bae0694@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Alexandre Bounine <alex.bou9@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matt Porter <mporter@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 29/32] rapidio: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KLS0tCiBkcml2ZXJzL3JhcGlkaW8vZGV2aWNlcy9y
aW9fbXBvcnRfY2Rldi5jIHwgMTEgKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYXBpZGlvL2Rl
dmljZXMvcmlvX21wb3J0X2NkZXYuYyBiL2RyaXZlcnMvcmFwaWRpby9kZXZpY2VzL3Jpb19tcG9y
dF9jZGV2LmMKaW5kZXggYTMwMzQyOTQyZTI2Li44OWViM2QyMTI2NTIgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvcmFwaWRpby9kZXZpY2VzL3Jpb19tcG9ydF9jZGV2LmMKKysrIGIvZHJpdmVycy9yYXBp
ZGlvL2RldmljZXMvcmlvX21wb3J0X2NkZXYuYwpAQCAtNTczLDggKzU3Myw3IEBAIHN0YXRpYyB2
b2lkIGRtYV9yZXFfZnJlZShzdHJ1Y3Qga3JlZiAqcmVmKQogCQkJcmVmY291bnQpOwogCXN0cnVj
dCBtcG9ydF9jZGV2X3ByaXYgKnByaXYgPSByZXEtPnByaXY7CiAKLQlkbWFfdW5tYXBfc2cocmVx
LT5kbWFjaC0+ZGV2aWNlLT5kZXYsCi0JCSAgICAgcmVxLT5zZ3Quc2dsLCByZXEtPnNndC5uZW50
cywgcmVxLT5kaXIpOworCWRtYV91bm1hcF9zZ3RhYmxlKHJlcS0+ZG1hY2gtPmRldmljZS0+ZGV2
LCAmcmVxLT5zZ3QsIHJlcS0+ZGlyLCAwKTsKIAlzZ19mcmVlX3RhYmxlKCZyZXEtPnNndCk7CiAJ
aWYgKHJlcS0+cGFnZV9saXN0KSB7CiAJCXVucGluX3VzZXJfcGFnZXMocmVxLT5wYWdlX2xpc3Qs
IHJlcS0+bnJfcGFnZXMpOwpAQCAtODE0LDcgKzgxMyw2IEBAIHJpb19kbWFfdHJhbnNmZXIoc3Ry
dWN0IGZpbGUgKmZpbHAsIHUzMiB0cmFuc2Zlcl9tb2RlLAogCXN0cnVjdCBtcG9ydF9kZXYgKm1k
ID0gcHJpdi0+bWQ7CiAJc3RydWN0IGRtYV9jaGFuICpjaGFuOwogCWludCByZXQ7Ci0JaW50IG5l
bnRzOwogCiAJaWYgKHhmZXItPmxlbmd0aCA9PSAwKQogCQlyZXR1cm4gLUVJTlZBTDsKQEAgLTkz
MCwxNSArOTI4LDE0IEBAIHJpb19kbWFfdHJhbnNmZXIoc3RydWN0IGZpbGUgKmZpbHAsIHUzMiB0
cmFuc2Zlcl9tb2RlLAogCQkJCXhmZXItPm9mZnNldCwgeGZlci0+bGVuZ3RoKTsKIAl9CiAKLQlu
ZW50cyA9IGRtYV9tYXBfc2coY2hhbi0+ZGV2aWNlLT5kZXYsCi0JCQkgICByZXEtPnNndC5zZ2ws
IHJlcS0+c2d0Lm5lbnRzLCBkaXIpOwotCWlmIChuZW50cyA9PSAwKSB7CisJcmV0ID0gZG1hX21h
cF9zZ3RhYmxlKGNoYW4tPmRldmljZS0+ZGV2LCAmcmVxLT5zZ3QsIGRpciwgMCk7CisJaWYgKHJl
dCkgewogCQlybWNkX2Vycm9yKCJGYWlsZWQgdG8gbWFwIFNHIGxpc3QiKTsKIAkJcmV0ID0gLUVG
QVVMVDsKIAkJZ290byBlcnJfcGc7CiAJfQogCi0JcmV0ID0gZG9fZG1hX3JlcXVlc3QocmVxLCB4
ZmVyLCBzeW5jLCBuZW50cyk7CisJcmV0ID0gZG9fZG1hX3JlcXVlc3QocmVxLCB4ZmVyLCBzeW5j
LCByZXEtPnNndC5uZW50cyk7CiAKIAlpZiAocmV0ID49IDApIHsKIAkJaWYgKHN5bmMgPT0gUklP
X1RSQU5TRkVSX0FTWU5DKQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
