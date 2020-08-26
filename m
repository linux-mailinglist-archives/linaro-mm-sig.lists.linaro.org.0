Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C91C02527CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 08:51:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA78B60749
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Aug 2020 06:51:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D9DF160C32; Wed, 26 Aug 2020 06:51:31 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8874666EA;
	Wed, 26 Aug 2020 06:37:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D8E49617D4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C60926186A; Wed, 26 Aug 2020 06:35:54 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by lists.linaro.org (Postfix) with ESMTPS id 9AB29619AC
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:40 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200826063539euoutp018a2090a6ae10d14fbfb7e185049c469a~uvewuqsZ12036420364euoutp01G
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Aug 2020 06:35:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200826063539euoutp018a2090a6ae10d14fbfb7e185049c469a~uvewuqsZ12036420364euoutp01G
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200826063539eucas1p163681e3b94d83d94f1030ebe516e2260~uvewVtVP01942019420eucas1p1x;
 Wed, 26 Aug 2020 06:35:39 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 03.5D.06318.BB2064F5; Wed, 26
 Aug 2020 07:35:39 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063539eucas1p2ed946c6214cdb8574ab288350db22f1a~uvewBaXKt0401804018eucas1p2j;
 Wed, 26 Aug 2020 06:35:39 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200826063539eusmtrp1dc9bf141cf03c4673abfd423c5e6a255~uvewAxgWX1091110911eusmtrp1f;
 Wed, 26 Aug 2020 06:35:39 +0000 (GMT)
X-AuditID: cbfec7f5-38bff700000018ae-ea-5f4602bb3e32
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 1A.D0.06314.AB2064F5; Wed, 26
 Aug 2020 07:35:39 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200826063538eusmtip25cde68f15a1e08c51df46c690f5e6122~uveveVu_j0474104741eusmtip2W;
 Wed, 26 Aug 2020 06:35:38 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Date: Wed, 26 Aug 2020 08:33:03 +0200
Message-Id: <20200826063316.23486-20-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200826063316.23486-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHO7t3d9e1xW1TPGgoDCyy0syii5o9MLtFoERQCGYzLz5yKpta
 +keaWvisdEGiKVME31PnI1PzsWzLVuarMEzTrMBKTZ3Ld3m9Wv99ft/f93u+h8PBEVE11woP
 Douk5WHSUAnGRxt0i28PNHM8/Q7m1kAyo7uLQ9ZkV3HJPw2ZCDkwP42R7bf7AVla/oJDqtpc
 SePAGIfUjL/nkv1NjzGysnOYR3b8+sI9IaASpnUYVZFfAahnJhVKPTGNcqlPaXoOVVsURw2t
 jSOUcrAYUM0f4jHqXl0ZoOY0Nt7bffhuAXRocDQtd3S/yg+a6fjJjSg0v5n3TgXiwRSRCsxw
 SByGuVkpSCrg4yKiBMClhRLADkYA5xdmUHaYA3CmRs/bijR1McwsigE0qqc2FhuRWR3JMEY4
 wdTJVIxhc+IOgC8zBEwAIZ5yYGFKy3oHjosJL2gc9WU8KGEHe/KWUUYWEu5wslbCdtnC8up2
 hGGzdVmfdh9jjoGElge/qUtR1uQBn+t0m5cTw+/6uk3eBQ3KdJQNJAI41l3JY4d0APsTsgHr
 coUfu5cwphkh9sKqJkdWPgkfavp4jAyJHXBwcicjI+uY1fAIYWUhTL4rYt27YY5e/a+2o6cP
 YZmCjROVm2+VCWB3wW/uA2Cb879MBUAZsKSjFLJAWuEcRt9wUEhliqiwQIdr4TINWP9HhjX9
 fCNoXfHXAgIHEoFQhZ32E3Gl0YoYmRZAHJGYC0+9MVwRCQOkMbG0PNxPHhVKK7TAGkcllkLn
 wglfEREojaSv03QELd/acnAzq3ig5H+OGxlZcb9k0Xs8RBUnr3cLb59YPa/8unx0/7ZXvefW
 KpP2HPJU1QmSRI12gyaH+eSikU5qSOaSt2RZbTgS/IO+JdGbLnj7nBWblhds1BbI5frXA64C
 e/VgYqvgojKkLd+6JdpYkOx/RrzqEetV4VCv2+fS4a2dhcfyhhe9JKgiSOpkj8gV0r/WTreF
 QwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsVy+t/xe7q7mdziDZ49ZLToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFgcbLjBYrVx9lsliw39riy5WHTBabHl9jtbi8aw6bxdojd9ktDn54wurA
 49H0/hibx5p5axg99n5bwOKx/dsDVo/73ceZPDYvqfe4/e8xs8fkG8sZPXbfbGDz6NuyitHj
 8ya5AO4oPZui/NKSVIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsE
 vYyPB9+wFiwSqZh7dQFjA+M7gS5GTg4JAROJXSePs3cxcnEICSxllGg42M8KkZCRODmtAcoW
 lvhzrYsNougTo8Tz47+ZQRJsAoYSXW8hEiICnYwS07o/go1iFtjPJHH5yCl2kCphAV+Jn5ff
 MoHYLAKqEhfm/mbpYuTg4BWwk3i7WQlig7zE6g0HwIZyAoWPd/ezgdhCArYSp9fOYJ7AyLeA
 kWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYIRsO/Zz8w7GSxuDDzEKcDAq8fAuYHONF2JN
 LCuuzD3EKMHBrCTC63T2dJwQb0piZVVqUX58UWlOavEhRlOgmyYyS4km5wOjN68k3tDU0NzC
 0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA6PZTM0m9zAFQav59o82v7/GUlUz
 0fbV/ktdO7zlo9oZ5rsWtAln/uT8MIHhaMoeryeS0za7N3nfvbd9XqBjnfd5ziBBdpupq+Lf
 ifvcjdr2NKfh3m07YZ7cNRLf15zZldP8w7y05RtrVuvO7A/WuiI6K7O3vtl2wPfk3rmRlcaa
 qjXCC7+H2yixFGckGmoxFxUnAgCW0JQipgIAAA==
X-CMS-MailID: 20200826063539eucas1p2ed946c6214cdb8574ab288350db22f1a
X-Msg-Generator: CA
X-RootMTR: 20200826063539eucas1p2ed946c6214cdb8574ab288350db22f1a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200826063539eucas1p2ed946c6214cdb8574ab288350db22f1a
References: <20200826063316.23486-1-m.szyprowski@samsung.com>
 <CGME20200826063539eucas1p2ed946c6214cdb8574ab288350db22f1a@eucas1p2.samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: [Linaro-mm-sig] [PATCH v9 19/32] drm: v3d: fix common struct
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
PG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IEVyaWMgQW5ob2x0IDxlcmlj
QGFuaG9sdC5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3YzZC92M2RfbW11LmMgfCAxMyArKysr
KystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92M2QvdjNkX21tdS5jIGIvZHJpdmVycy9n
cHUvZHJtL3YzZC92M2RfbW11LmMKaW5kZXggM2I4MWVhMjhjMGJiLi41YTQ1MzUzMjkwMWYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS92M2QvdjNkX21tdS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS92M2QvdjNkX21tdS5jCkBAIC05MCwxOCArOTAsMTcgQEAgdm9pZCB2M2RfbW11X2luc2Vy
dF9wdGVzKHN0cnVjdCB2M2RfYm8gKmJvKQogCXN0cnVjdCB2M2RfZGV2ICp2M2QgPSB0b192M2Rf
ZGV2KHNobWVtX29iai0+YmFzZS5kZXYpOwogCXUzMiBwYWdlID0gYm8tPm5vZGUuc3RhcnQ7CiAJ
dTMyIHBhZ2VfcHJvdCA9IFYzRF9QVEVfV1JJVEVBQkxFIHwgVjNEX1BURV9WQUxJRDsKLQl1bnNp
Z25lZCBpbnQgY291bnQ7Ci0Jc3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2w7CisJc3RydWN0IHNnX2Rt
YV9wYWdlX2l0ZXIgZG1hX2l0ZXI7CiAKLQlmb3JfZWFjaF9zZyhzaG1lbV9vYmotPnNndC0+c2ds
LCBzZ2wsIHNobWVtX29iai0+c2d0LT5uZW50cywgY291bnQpIHsKLQkJdTMyIHBhZ2VfYWRkcmVz
cyA9IHNnX2RtYV9hZGRyZXNzKHNnbCkgPj4gVjNEX01NVV9QQUdFX1NISUZUOworCWZvcl9lYWNo
X3NndGFibGVfZG1hX3BhZ2Uoc2htZW1fb2JqLT5zZ3QsICZkbWFfaXRlciwgMCkgeworCQlkbWFf
YWRkcl90IGRtYV9hZGRyID0gc2dfcGFnZV9pdGVyX2RtYV9hZGRyZXNzKCZkbWFfaXRlcik7CisJ
CXUzMiBwYWdlX2FkZHJlc3MgPSBkbWFfYWRkciA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7CiAJCXUz
MiBwdGUgPSBwYWdlX3Byb3QgfCBwYWdlX2FkZHJlc3M7CiAJCXUzMiBpOwogCi0JCUJVR19PTihw
YWdlX2FkZHJlc3MgKyAoc2dfZG1hX2xlbihzZ2wpID4+IFYzRF9NTVVfUEFHRV9TSElGVCkgPj0K
KwkJQlVHX09OKHBhZ2VfYWRkcmVzcyArIChQQUdFX1NJWkUgPj4gVjNEX01NVV9QQUdFX1NISUZU
KSA+PQogCQkgICAgICAgQklUKDI0KSk7Ci0KLQkJZm9yIChpID0gMDsgaSA8IHNnX2RtYV9sZW4o
c2dsKSA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7IGkrKykKKwkJZm9yIChpID0gMDsgaSA8IFBBR0Vf
U0laRSA+PiBWM0RfTU1VX1BBR0VfU0hJRlQ7IGkrKykKIAkJCXYzZC0+cHRbcGFnZSsrXSA9IHB0
ZSArIGk7CiAJfQogCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
