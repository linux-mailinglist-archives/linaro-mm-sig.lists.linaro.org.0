Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 029449EAC77
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Dec 2024 10:38:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D327B43F81
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Dec 2024 09:38:07 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 4891944A81
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Dec 2024 09:37:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=NdxfWmaR;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 82409A40E1E;
	Tue, 10 Dec 2024 09:36:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57F4CC4CED6;
	Tue, 10 Dec 2024 09:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1733823474;
	bh=RJy5WgAWF6V7Wfx+qiylfxOTd4l0maxBzKTZQ49faVs=;
	h=Subject:To:Cc:From:Date:From;
	b=NdxfWmaR5qr89zzrZvns30PSHYRP5viqml5CeZeGOJa1xWx9TAjq4659Bts0O9rLY
	 alvNv1gfduESf35PGPn82H6/9hLPBpU29F69PGKpPRYaU9VoeEDFChFVVf3HSCIcpL
	 d3MQSkvTdkkVN26g6zTrEBwEyq3klF9t9J05Wa/k=
To: christian.koenig@amd.com,daniel.vetter@ffwll.ch,dri-devel@lists.freedesktop.org,friedrich.vock@gmx.de,gregkh@linuxfoundation.org,gustavo@padovan.org,linaro-mm-sig@lists.linaro.org,sumit.semwal@linaro.org,tvrtko.ursulin@igalia.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 10 Dec 2024 10:36:05 +0100
Message-ID: <2024121005-sphinx-ominous-4a08@gregkh>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore
X-Rspamd-Queue-Id: 4891944A81
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.50 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,ffwll.ch,lists.freedesktop.org,gmx.de,linuxfoundation.org,padovan.org,lists.linaro.org,linaro.org,igalia.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KIAENDVDEFRX6J5DZMZWWCUXVEUMZTZS
X-Message-ID-Hash: KIAENDVDEFRX6J5DZMZWWCUXVEUMZTZS
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Patch "dma-fence: Fix reference leak on fence merge failure path" has been added to the 6.12-stable tree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KIAENDVDEFRX6J5DZMZWWCUXVEUMZTZS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGlzIGlzIGEgbm90ZSB0byBsZXQgeW91IGtub3cgdGhhdCBJJ3ZlIGp1c3QgYWRkZWQgdGhl
IHBhdGNoIHRpdGxlZA0KDQogICAgZG1hLWZlbmNlOiBGaXggcmVmZXJlbmNlIGxlYWsgb24gZmVu
Y2UgbWVyZ2UgZmFpbHVyZSBwYXRoDQoNCnRvIHRoZSA2LjEyLXN0YWJsZSB0cmVlIHdoaWNoIGNh
biBiZSBmb3VuZCBhdDoNCiAgICBodHRwOi8vd3d3Lmtlcm5lbC5vcmcvZ2l0Lz9wPWxpbnV4L2tl
cm5lbC9naXQvc3RhYmxlL3N0YWJsZS1xdWV1ZS5naXQ7YT1zdW1tYXJ5DQoNClRoZSBmaWxlbmFt
ZSBvZiB0aGUgcGF0Y2ggaXM6DQogICAgIGRtYS1mZW5jZS1maXgtcmVmZXJlbmNlLWxlYWstb24t
ZmVuY2UtbWVyZ2UtZmFpbHVyZS1wYXRoLnBhdGNoDQphbmQgaXQgY2FuIGJlIGZvdW5kIGluIHRo
ZSBxdWV1ZS02LjEyIHN1YmRpcmVjdG9yeS4NCg0KSWYgeW91LCBvciBhbnlvbmUgZWxzZSwgZmVl
bHMgaXQgc2hvdWxkIG5vdCBiZSBhZGRlZCB0byB0aGUgc3RhYmxlIHRyZWUsDQpwbGVhc2UgbGV0
IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiBrbm93IGFib3V0IGl0Lg0KDQoNCj5Gcm9tIDk0OTI5
MWM1MzE0MDA5YjRmNmUyNTIzOTFlZGJiNDBmZGQ1ZDU0MTQgTW9uIFNlcCAxNyAwMDowMDowMCAy
MDAxDQpGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCkRh
dGU6IEZyaSwgMTUgTm92IDIwMjQgMTA6MjE6NDkgKzAwMDANClN1YmplY3Q6IGRtYS1mZW5jZTog
Rml4IHJlZmVyZW5jZSBsZWFrIG9uIGZlbmNlIG1lcmdlIGZhaWx1cmUgcGF0aA0KTUlNRS1WZXJz
aW9uOiAxLjANCkNvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNldD1VVEYtOA0KQ29udGVu
dC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdA0KDQpGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaWdhbGlhLmNvbT4NCg0KY29tbWl0IDk0OTI5MWM1MzE0MDA5YjRmNmUyNTIzOTFl
ZGJiNDBmZGQ1ZDU0MTQgdXBzdHJlYW0uDQoNClJlbGVhc2UgYWxsIGZlbmNlIHJlZmVyZW5jZXMg
aWYgdGhlIG91dHB1dCBkbWEtZmVuY2UtYXJyYXkgY291bGQgbm90IGJlDQphbGxvY2F0ZWQuDQoN
ClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29t
Pg0KRml4ZXM6IDI0NWE0YTdiNTMxYyAoImRtYS1idWY6IGdlbmVyYWxpemUgZG1hX2ZlbmNlIHVu
d3JhcCAmIG1lcmdpbmcgdjMiKQ0KQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPg0K
Q2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+DQpDYzogR3VzdGF2byBQ
YWRvdmFuIDxndXN0YXZvQHBhZG92YW4ub3JnPg0KQ2M6IEZyaWVkcmljaCBWb2NrIDxmcmllZHJp
Y2gudm9ja0BnbXguZGU+DQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZw0KQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY2LjArDQpSZXZpZXdlZC1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KTGluazog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjQxMTE1MTAy
MTUzLjE5ODAtMi10dXJzdWxpbkBpZ2FsaWEuY29tDQpTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2Fo
LUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPg0KLS0tDQogZHJpdmVycy9kbWEt
YnVmL2RtYS1mZW5jZS11bndyYXAuYyB8ICAgIDIgKysNCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspDQoNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCkBAIC0xNjQsNiArMTY0LDgg
QEAgcmVzdGFydDoNCiAJCQkJCWRtYV9mZW5jZV9jb250ZXh0X2FsbG9jKDEpLA0KIAkJCQkJMSwg
ZmFsc2UpOw0KIAlpZiAoIXJlc3VsdCkgew0KKwkJZm9yIChpID0gMDsgaSA8IGNvdW50OyBpKysp
DQorCQkJZG1hX2ZlbmNlX3B1dChhcnJheVtpXSk7DQogCQl0bXAgPSBOVUxMOw0KIAkJZ290byBy
ZXR1cm5fdG1wOw0KIAl9DQoNCg0KUGF0Y2hlcyBjdXJyZW50bHkgaW4gc3RhYmxlLXF1ZXVlIHdo
aWNoIG1pZ2h0IGJlIGZyb20gdHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbSBhcmUNCg0KcXVldWUt
Ni4xMi9kbWEtZmVuY2UtdXNlLWtlcm5lbC1zLXNvcnQtZm9yLW1lcmdpbmctZmVuY2VzLnBhdGNo
DQpxdWV1ZS02LjEyL2RtYS1idWYtZml4LWRtYV9mZW5jZV9hcnJheV9zaWduYWxlZC12NC5wYXRj
aA0KcXVldWUtNi4xMi9kbWEtZmVuY2UtZml4LXJlZmVyZW5jZS1sZWFrLW9uLWZlbmNlLW1lcmdl
LWZhaWx1cmUtcGF0aC5wYXRjaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
