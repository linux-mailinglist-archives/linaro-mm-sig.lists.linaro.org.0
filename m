Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2519EAC60
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Dec 2024 10:37:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DB4843F81
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Dec 2024 09:37:05 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 05DEB44A82
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Dec 2024 09:36:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=YP6fN6Gs;
	spf=pass (lists.linaro.org: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2052D5C5581;
	Tue, 10 Dec 2024 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7254C4CEDD;
	Tue, 10 Dec 2024 09:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1733823408;
	bh=O4daBKvxBPZfUXfSH0uYR+1Dpk3TWqXz8SdKYCwKPbQ=;
	h=Subject:To:Cc:From:Date:From;
	b=YP6fN6GsgILFO74HEoPXAqbl4ncMw6P1P4HhgcI9h2597ZgLpkGyPz3uAZ8wkOzbF
	 W9eifqwZed2lSibUv8xvb0S+Hf+vWDpod3+S34SKdOt0YMLjUvTmXbph8kgoUGfelz
	 AP2eFe/z6tRWOMoyf+w6EUOoe/hLRlZGYtosCF4U=
To: christian.koenig@amd.com,daniel.vetter@ffwll.ch,dri-devel@lists.freedesktop.org,friedrich.vock@gmx.de,gregkh@linuxfoundation.org,gustavo@padovan.org,linaro-mm-sig@lists.linaro.org,sumit.semwal@linaro.org,tvrtko.ursulin@igalia.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 10 Dec 2024 10:35:43 +0100
Message-ID: <2024121042-eggbeater-storage-afe2@gregkh>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore
X-Rspamd-Queue-Id: 05DEB44A82
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.50 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[139.178.84.217:from];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,ffwll.ch,lists.freedesktop.org,gmx.de,linuxfoundation.org,padovan.org,lists.linaro.org,linaro.org,igalia.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[dfw.source.kernel.org:rdns,dfw.source.kernel.org:helo];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linuxfoundation.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DTDXX2EXAFPEDEGU6INYOTLWIWY2F3UC
X-Message-ID-Hash: DTDXX2EXAFPEDEGU6INYOTLWIWY2F3UC
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Patch "dma-fence: Fix reference leak on fence merge failure path" has been added to the 6.1-stable tree
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DTDXX2EXAFPEDEGU6INYOTLWIWY2F3UC/>
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
Y2UgbWVyZ2UgZmFpbHVyZSBwYXRoDQoNCnRvIHRoZSA2LjEtc3RhYmxlIHRyZWUgd2hpY2ggY2Fu
IGJlIGZvdW5kIGF0Og0KICAgIGh0dHA6Ly93d3cua2VybmVsLm9yZy9naXQvP3A9bGludXgva2Vy
bmVsL2dpdC9zdGFibGUvc3RhYmxlLXF1ZXVlLmdpdDthPXN1bW1hcnkNCg0KVGhlIGZpbGVuYW1l
IG9mIHRoZSBwYXRjaCBpczoNCiAgICAgZG1hLWZlbmNlLWZpeC1yZWZlcmVuY2UtbGVhay1vbi1m
ZW5jZS1tZXJnZS1mYWlsdXJlLXBhdGgucGF0Y2gNCmFuZCBpdCBjYW4gYmUgZm91bmQgaW4gdGhl
IHF1ZXVlLTYuMSBzdWJkaXJlY3RvcnkuDQoNCklmIHlvdSwgb3IgYW55b25lIGVsc2UsIGZlZWxz
IGl0IHNob3VsZCBub3QgYmUgYWRkZWQgdG8gdGhlIHN0YWJsZSB0cmVlLA0KcGxlYXNlIGxldCA8
c3RhYmxlQHZnZXIua2VybmVsLm9yZz4ga25vdyBhYm91dCBpdC4NCg0KDQo+RnJvbSA5NDkyOTFj
NTMxNDAwOWI0ZjZlMjUyMzkxZWRiYjQwZmRkNWQ1NDE0IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAw
MQ0KRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQpEYXRl
OiBGcmksIDE1IE5vdiAyMDI0IDEwOjIxOjQ5ICswMDAwDQpTdWJqZWN0OiBkbWEtZmVuY2U6IEZp
eCByZWZlcmVuY2UgbGVhayBvbiBmZW5jZSBtZXJnZSBmYWlsdXJlIHBhdGgNCk1JTUUtVmVyc2lv
bjogMS4wDQpDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9VVRGLTgNCkNvbnRlbnQt
VHJhbnNmZXItRW5jb2Rpbmc6IDhiaXQNCg0KRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGlnYWxpYS5jb20+DQoNCmNvbW1pdCA5NDkyOTFjNTMxNDAwOWI0ZjZlMjUyMzkxZWRi
YjQwZmRkNWQ1NDE0IHVwc3RyZWFtLg0KDQpSZWxlYXNlIGFsbCBmZW5jZSByZWZlcmVuY2VzIGlm
IHRoZSBvdXRwdXQgZG1hLWZlbmNlLWFycmF5IGNvdWxkIG5vdCBiZQ0KYWxsb2NhdGVkLg0KDQpT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4N
CkZpeGVzOiAyNDVhNGE3YjUzMWMgKCJkbWEtYnVmOiBnZW5lcmFsaXplIGRtYV9mZW5jZSB1bndy
YXAgJiBtZXJnaW5nIHYzIikNCkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCkNj
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KQ2M6IEd1c3Rhdm8gUGFk
b3ZhbiA8Z3VzdGF2b0BwYWRvdmFuLm9yZz4NCkNjOiBGcmllZHJpY2ggVm9jayA8ZnJpZWRyaWNo
LnZvY2tAZ214LmRlPg0KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcNCkNjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2Ni4wKw0KUmV2aWV3ZWQtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkxpbms6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDI0MTExNTEwMjE1
My4xOTgwLTItdHVyc3VsaW5AaWdhbGlhLmNvbQ0KU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1I
YXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UtdW53cmFwLmMgfCAyICsrDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtdW53cmFwLmMNCmluZGV4IDYyOGFmNTFjODFhZi4u
YjE5ZDBhZGY2MDg2IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndy
YXAuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS11bndyYXAuYw0KQEAgLTE2NCw2
ICsxNjQsOCBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpfX2RtYV9mZW5jZV91bndyYXBfbWVyZ2UodW5z
aWduZWQgaW50IG51bV9mZW5jZXMsDQogCQkJCQlkbWFfZmVuY2VfY29udGV4dF9hbGxvYygxKSwN
CiAJCQkJCTEsIGZhbHNlKTsNCiAJaWYgKCFyZXN1bHQpIHsNCisJCWZvciAoaSA9IDA7IGkgPCBj
b3VudDsgaSsrKQ0KKwkJCWRtYV9mZW5jZV9wdXQoYXJyYXlbaV0pOw0KIAkJdG1wID0gTlVMTDsN
CiAJCWdvdG8gcmV0dXJuX3RtcDsNCiAJfQ0KLS0gDQoyLjQ3LjENCg0KDQoNClBhdGNoZXMgY3Vy
cmVudGx5IGluIHN0YWJsZS1xdWV1ZSB3aGljaCBtaWdodCBiZSBmcm9tIHR2cnRrby51cnN1bGlu
QGlnYWxpYS5jb20gYXJlDQoNCnF1ZXVlLTYuMS9kbWEtZmVuY2UtdXNlLWtlcm5lbC1zLXNvcnQt
Zm9yLW1lcmdpbmctZmVuY2VzLnBhdGNoDQpxdWV1ZS02LjEvZG1hLWJ1Zi1maXgtZG1hX2ZlbmNl
X2FycmF5X3NpZ25hbGVkLXY0LnBhdGNoDQpxdWV1ZS02LjEvZG1hLWZlbmNlLWZpeC1yZWZlcmVu
Y2UtbGVhay1vbi1mZW5jZS1tZXJnZS1mYWlsdXJlLXBhdGgucGF0Y2gNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
