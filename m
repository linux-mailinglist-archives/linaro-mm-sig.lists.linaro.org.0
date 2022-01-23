Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A3C497257
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Jan 2022 16:06:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 24324401CC
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Jan 2022 15:06:16 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 53C943ED63
	for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jan 2022 15:06:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 27628B80CF9;
	Sun, 23 Jan 2022 15:06:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BA37C340E4;
	Sun, 23 Jan 2022 15:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1642950362;
	bh=n4RBE4n/TBUC0hV5O1x8V7tnhKSYMzDVfOowVCLVucw=;
	h=Subject:To:Cc:From:Date:From;
	b=nYjaMRwtHC3idcXnHtLNF/tNVsqWXlmbDlOtCadQuAHC71dvfxoSLfI2OFB4lGhip
	 mJbbIVdDkJunuMTajrqCX+kij1lrXpOyMgp2LC0H8CdnZ3D2nDPQaWS1Yxk01YU+Bj
	 L9YzNjjrpD9/BrwWwTxqafO1mk19mJ6KB6TXIKi8=
To: chris@chris-wilson.co.uk,christian.koenig@amd.com,dri-devel@lists.freedesktop.org,gregkh@linuxfoundation.org,gustavo@padovan.org,linaro-mm-sig@lists.linaro.org,sumit.semwal@linaro.org,thomas.hellstrom@linux.intel.com
From: <gregkh@linuxfoundation.org>
Date: Sun, 23 Jan 2022 16:05:56 +0100
Message-ID: <1642950356255202@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
Message-ID-Hash: 2U7CJFZGUJMN7BIQ6GETFBEEWBZRM3BH
X-Message-ID-Hash: 2U7CJFZGUJMN7BIQ6GETFBEEWBZRM3BH
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Patch "dma_fence_array: Fix PENDING_ERROR leak in dma_fence_array_signaled()" has been added to the 5.4-stable tree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2U7CJFZGUJMN7BIQ6GETFBEEWBZRM3BH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGlzIGlzIGEgbm90ZSB0byBsZXQgeW91IGtub3cgdGhhdCBJJ3ZlIGp1c3QgYWRkZWQgdGhl
IHBhdGNoIHRpdGxlZA0KDQogICAgZG1hX2ZlbmNlX2FycmF5OiBGaXggUEVORElOR19FUlJPUiBs
ZWFrIGluIGRtYV9mZW5jZV9hcnJheV9zaWduYWxlZCgpDQoNCnRvIHRoZSA1LjQtc3RhYmxlIHRy
ZWUgd2hpY2ggY2FuIGJlIGZvdW5kIGF0Og0KICAgIGh0dHA6Ly93d3cua2VybmVsLm9yZy9naXQv
P3A9bGludXgva2VybmVsL2dpdC9zdGFibGUvc3RhYmxlLXF1ZXVlLmdpdDthPXN1bW1hcnkNCg0K
VGhlIGZpbGVuYW1lIG9mIHRoZSBwYXRjaCBpczoNCiAgICAgZG1hX2ZlbmNlX2FycmF5LWZpeC1w
ZW5kaW5nX2Vycm9yLWxlYWstaW4tZG1hX2ZlbmNlX2FycmF5X3NpZ25hbGVkLnBhdGNoDQphbmQg
aXQgY2FuIGJlIGZvdW5kIGluIHRoZSBxdWV1ZS01LjQgc3ViZGlyZWN0b3J5Lg0KDQpJZiB5b3Us
IG9yIGFueW9uZSBlbHNlLCBmZWVscyBpdCBzaG91bGQgbm90IGJlIGFkZGVkIHRvIHRoZSBzdGFi
bGUgdHJlZSwNCnBsZWFzZSBsZXQgPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+IGtub3cgYWJvdXQg
aXQuDQoNCg0KPkZyb20gOTVkMzU4Mzg4ODBmYjA0MGNjYjlmZTRhNDg4MTZiZDBjOGI2MmRmNSBN
b24gU2VwIDE3IDAwOjAwOjAwIDIwMDENCkZyb206ID0/VVRGLTg/cT9UaG9tYXM9MjBIZWxsc3Ry
PUMzPUI2bT89IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCkRhdGU6IE1vbiwg
MjkgTm92IDIwMjEgMTY6Mjc6MjcgKzAxMDANClN1YmplY3Q6IGRtYV9mZW5jZV9hcnJheTogRml4
IFBFTkRJTkdfRVJST1IgbGVhayBpbiBkbWFfZmVuY2VfYXJyYXlfc2lnbmFsZWQoKQ0KTUlNRS1W
ZXJzaW9uOiAxLjANCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOA0KQ29u
dGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdA0KDQpGcm9tOiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+DQoNCmNvbW1pdCA5NWQzNTgzODg4MGZi
MDQwY2NiOWZlNGE0ODgxNmJkMGM4YjYyZGY1IHVwc3RyZWFtLg0KDQpJZiBhIGRtYV9mZW5jZV9h
cnJheSBpcyByZXBvcnRlZCBzaWduYWxlZCBieSBhIGNhbGwgdG8NCmRtYV9mZW5jZV9pc19zaWdu
YWxlZCgpLCBpdCBtYXkgbGVhayB0aGUgUEVORElOR19FUlJPUiBzdGF0dXMuDQoNCkZpeCB0aGlz
IGJ5IGNsZWFyaW5nIHRoZSBQRU5ESU5HX0VSUk9SIHN0YXR1cyBpZiB3ZSByZXR1cm4gdHJ1ZSBp
bg0KZG1hX2ZlbmNlX2FycmF5X3NpZ25hbGVkKCkuDQoNCnYyOg0KLSBVcGRhdGUgQ2MgbGlzdCwg
YW5kIGFkZCBSLWIuDQoNCkZpeGVzOiAxZjcwYjhiODEyZjMgKCJkbWEtZmVuY2U6IFByb3BhZ2F0
ZSBlcnJvcnMgdG8gZG1hLWZlbmNlLWFycmF5IGNvbnRhaW5lciIpDQpDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13
YWxAbGluYXJvLm9yZz4NCkNjOiBHdXN0YXZvIFBhZG92YW4gPGd1c3Rhdm9AcGFkb3Zhbi5vcmc+
DQpDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6ICJD
aHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KQ2M6IGxpbnV4LW1l
ZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
CkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCkNjOiA8c3RhYmxlQHZnZXIua2Vy
bmVsLm9yZz4gIyB2NS40Kw0KU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21h
cy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZy
ZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDIxMTEyOTE1MjcyNy40NDg5MDgtMS10aG9tYXMu
aGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbQ0KU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0
bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UtYXJyYXkuYyB8ICAgIDYgKysrKystDQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KDQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LWFycmF5LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtYXJyYXkuYw0KQEAgLTEw
NCw3ICsxMDQsMTEgQEAgc3RhdGljIGJvb2wgZG1hX2ZlbmNlX2FycmF5X3NpZ25hbGVkKHN0cg0K
IHsNCiAJc3RydWN0IGRtYV9mZW5jZV9hcnJheSAqYXJyYXkgPSB0b19kbWFfZmVuY2VfYXJyYXko
ZmVuY2UpOw0KIA0KLQlyZXR1cm4gYXRvbWljX3JlYWQoJmFycmF5LT5udW1fcGVuZGluZykgPD0g
MDsNCisJaWYgKGF0b21pY19yZWFkKCZhcnJheS0+bnVtX3BlbmRpbmcpID4gMCkNCisJCXJldHVy
biBmYWxzZTsNCisNCisJZG1hX2ZlbmNlX2FycmF5X2NsZWFyX3BlbmRpbmdfZXJyb3IoYXJyYXkp
Ow0KKwlyZXR1cm4gdHJ1ZTsNCiB9DQogDQogc3RhdGljIHZvaWQgZG1hX2ZlbmNlX2FycmF5X3Jl
bGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQoNCg0KUGF0Y2hlcyBjdXJyZW50bHkgaW4g
c3RhYmxlLXF1ZXVlIHdoaWNoIG1pZ2h0IGJlIGZyb20gdGhvbWFzLmhlbGxzdHJvbUBsaW51eC5p
bnRlbC5jb20gYXJlDQoNCnF1ZXVlLTUuNC9kbWFfZmVuY2VfYXJyYXktZml4LXBlbmRpbmdfZXJy
b3ItbGVhay1pbi1kbWFfZmVuY2VfYXJyYXlfc2lnbmFsZWQucGF0Y2gNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
