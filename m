Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 25931497249
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Jan 2022 15:53:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53E753EE40
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 23 Jan 2022 14:53:56 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id AB6543EB7E
	for <linaro-mm-sig@lists.linaro.org>; Sun, 23 Jan 2022 14:53:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 54BE260DEF;
	Sun, 23 Jan 2022 14:53:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 143BFC340E5;
	Sun, 23 Jan 2022 14:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1642949626;
	bh=NlqeqdlzZkwmSO6UBqpoKdysTSPFuzO+t4FlaSqxRD4=;
	h=Subject:To:Cc:From:Date:From;
	b=Ytj8QrVHIIaNUmGpVcoNBt7kzBMDDP3T0iA6dV2J0JP/Q8MedZ4A9W1tzxawlC56t
	 KpwU6AMAnvBiBzPPLT3i7FdxyVskOVCuk0G4sozyjZONpv72obqByGxqJsVcPp2hby
	 fBg4kx/TpCfCnx2tgCzziHEv3/z1L/13iN3d5/1Y=
To: chris@chris-wilson.co.uk,christian.koenig@amd.com,dri-devel@lists.freedesktop.org,gregkh@linuxfoundation.org,gustavo@padovan.org,linaro-mm-sig@lists.linaro.org,sumit.semwal@linaro.org,thomas.hellstrom@linux.intel.com
From: <gregkh@linuxfoundation.org>
Date: Sun, 23 Jan 2022 15:52:20 +0100
Message-ID: <1642949540167146@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
Message-ID-Hash: TBYQG3NLI6TKJL5QGDVUAQIEATR5J5DO
X-Message-ID-Hash: TBYQG3NLI6TKJL5QGDVUAQIEATR5J5DO
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Patch "dma_fence_array: Fix PENDING_ERROR leak in dma_fence_array_signaled()" has been added to the 5.16-stable tree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TBYQG3NLI6TKJL5QGDVUAQIEATR5J5DO/>
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
ZWFrIGluIGRtYV9mZW5jZV9hcnJheV9zaWduYWxlZCgpDQoNCnRvIHRoZSA1LjE2LXN0YWJsZSB0
cmVlIHdoaWNoIGNhbiBiZSBmb3VuZCBhdDoNCiAgICBodHRwOi8vd3d3Lmtlcm5lbC5vcmcvZ2l0
Lz9wPWxpbnV4L2tlcm5lbC9naXQvc3RhYmxlL3N0YWJsZS1xdWV1ZS5naXQ7YT1zdW1tYXJ5DQoN
ClRoZSBmaWxlbmFtZSBvZiB0aGUgcGF0Y2ggaXM6DQogICAgIGRtYV9mZW5jZV9hcnJheS1maXgt
cGVuZGluZ19lcnJvci1sZWFrLWluLWRtYV9mZW5jZV9hcnJheV9zaWduYWxlZC5wYXRjaA0KYW5k
IGl0IGNhbiBiZSBmb3VuZCBpbiB0aGUgcXVldWUtNS4xNiBzdWJkaXJlY3RvcnkuDQoNCklmIHlv
dSwgb3IgYW55b25lIGVsc2UsIGZlZWxzIGl0IHNob3VsZCBub3QgYmUgYWRkZWQgdG8gdGhlIHN0
YWJsZSB0cmVlLA0KcGxlYXNlIGxldCA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4ga25vdyBhYm91
dCBpdC4NCg0KDQo+RnJvbSA5NWQzNTgzODg4MGZiMDQwY2NiOWZlNGE0ODgxNmJkMGM4YjYyZGY1
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogPT9VVEYtOD9xP1Rob21hcz0yMEhlbGxz
dHI9QzM9QjZtPz0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KRGF0ZTogTW9u
LCAyOSBOb3YgMjAyMSAxNjoyNzoyNyArMDEwMA0KU3ViamVjdDogZG1hX2ZlbmNlX2FycmF5OiBG
aXggUEVORElOR19FUlJPUiBsZWFrIGluIGRtYV9mZW5jZV9hcnJheV9zaWduYWxlZCgpDQpNSU1F
LVZlcnNpb246IDEuMA0KQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04DQpD
b250ZW50LVRyYW5zZmVyLUVuY29kaW5nOiA4Yml0DQoNCkZyb206IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCg0KY29tbWl0IDk1ZDM1ODM4ODgw
ZmIwNDBjY2I5ZmU0YTQ4ODE2YmQwYzhiNjJkZjUgdXBzdHJlYW0uDQoNCklmIGEgZG1hX2ZlbmNl
X2FycmF5IGlzIHJlcG9ydGVkIHNpZ25hbGVkIGJ5IGEgY2FsbCB0bw0KZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkKCksIGl0IG1heSBsZWFrIHRoZSBQRU5ESU5HX0VSUk9SIHN0YXR1cy4NCg0KRml4IHRo
aXMgYnkgY2xlYXJpbmcgdGhlIFBFTkRJTkdfRVJST1Igc3RhdHVzIGlmIHdlIHJldHVybiB0cnVl
IGluDQpkbWFfZmVuY2VfYXJyYXlfc2lnbmFsZWQoKS4NCg0KdjI6DQotIFVwZGF0ZSBDYyBsaXN0
LCBhbmQgYWRkIFItYi4NCg0KRml4ZXM6IDFmNzBiOGI4MTJmMyAoImRtYS1mZW5jZTogUHJvcGFn
YXRlIGVycm9ycyB0byBkbWEtZmVuY2UtYXJyYXkgY29udGFpbmVyIikNCkNjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNl
bXdhbEBsaW5hcm8ub3JnPg0KQ2M6IEd1c3Rhdm8gUGFkb3ZhbiA8Z3VzdGF2b0BwYWRvdmFuLm9y
Zz4NCkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzog
IkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzogbGludXgt
bWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KQ2M6IDxzdGFibGVAdmdlci5r
ZXJuZWwub3JnPiAjIHY1LjQrDQpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhv
bWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjExMTI5MTUyNzI3LjQ0ODkwOC0xLXRob21h
cy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tDQpTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhh
cnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPg0KLS0tDQogZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS1hcnJheS5jIHwgICAgNiArKysrKy0NCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UtYXJyYXkuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQpAQCAt
MTA0LDcgKzEwNCwxMSBAQCBzdGF0aWMgYm9vbCBkbWFfZmVuY2VfYXJyYXlfc2lnbmFsZWQoc3Ry
DQogew0KIAlzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5ICphcnJheSA9IHRvX2RtYV9mZW5jZV9hcnJh
eShmZW5jZSk7DQogDQotCXJldHVybiBhdG9taWNfcmVhZCgmYXJyYXktPm51bV9wZW5kaW5nKSA8
PSAwOw0KKwlpZiAoYXRvbWljX3JlYWQoJmFycmF5LT5udW1fcGVuZGluZykgPiAwKQ0KKwkJcmV0
dXJuIGZhbHNlOw0KKw0KKwlkbWFfZmVuY2VfYXJyYXlfY2xlYXJfcGVuZGluZ19lcnJvcihhcnJh
eSk7DQorCXJldHVybiB0cnVlOw0KIH0NCiANCiBzdGF0aWMgdm9pZCBkbWFfZmVuY2VfYXJyYXlf
cmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCg0KDQpQYXRjaGVzIGN1cnJlbnRseSBp
biBzdGFibGUtcXVldWUgd2hpY2ggbWlnaHQgYmUgZnJvbSB0aG9tYXMuaGVsbHN0cm9tQGxpbnV4
LmludGVsLmNvbSBhcmUNCg0KcXVldWUtNS4xNi9kbWFfZmVuY2VfYXJyYXktZml4LXBlbmRpbmdf
ZXJyb3ItbGVhay1pbi1kbWFfZmVuY2VfYXJyYXlfc2lnbmFsZWQucGF0Y2gNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
