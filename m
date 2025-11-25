Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFD/JC4A4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BA4410C5F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:28:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4980340515
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:28:45 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id E56B93F76E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 07:57:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=wiytCc83;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=phasta@mailbox.org;
	dmarc=pass (policy=reject) header.from=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4dFw5C0Zyxz9tQ4;
	Tue, 25 Nov 2025 08:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1764057423; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Jk7ztPL7YSIA3VCwiNrpEATpAWtKi603tJYUZ86CHOU=;
	b=wiytCc83j76MOqzzPz78DkT0ynmw5j3Nosh6aH3HUEWY7m9PLGBrJ3Cj5dage8TunkwV1t
	/1VVayokeM59Eyxmwv332iDpBFt1pHeu/Zukn5/bUSKWclGNaFMr4pBkj+4BE7xB3Kl0g0
	2YBlnaOjEc6Z5wOxocLNLyWi+I49cfSjTrmKw1fOgDC635JsKV+RdpDE4ZwYn2UsmkASi3
	oe/oHDmBmVh5xBImLdozBJi/rAWZdB19AuMzDJ7xkKazBD+cChP/dYwfjYDf41mkF5bl6G
	ZvVlRTTARWx6s+H+yeCEfkFwUCarGthz+DTMPcwhHDTmj+LF3q5yQ59NiuhP3Q==
Message-ID: <fb3474073493184043804bb0e0aee6ff17d23ad3.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
	faith@gfxstrand.net, sumit.semwal@linaro.org
Date: Tue, 25 Nov 2025 08:56:59 +0100
In-Reply-To: <20251120150018.27385-4-christian.koenig@amd.com>
References: <20251120150018.27385-1-christian.koenig@amd.com>
	 <20251120150018.27385-4-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 8d110ef1e6bfbfb33a7
X-MBO-RS-META: qzqqu3wiwoyepzka4pksfhn8byu7rz5r
X-Spamd-Bar: ----
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XI3QCM2WL3OLGCTJ3TVWM6QA6JNGTDZN
X-Message-ID-Hash: XI3QCM2WL3OLGCTJ3TVWM6QA6JNGTDZN
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:54 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] drm/vgem: use the reasonable maximum timeout defined by the dma_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XI3QCM2WL3OLGCTJ3TVWM6QA6JNGTDZN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[3415];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,ffwll.ch,gfxstrand.net,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.901];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mailbox.org:mid,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email]
X-Rspamd-Queue-Id: 35BA4410C5F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTIwIGF0IDE1OjQxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBJbnN0ZWFkIG9mIDEwIHNlY29uZHMganVzdCB1c2UgdGhlIHJlYXNvbmFibGUgbWF4aW11
bSB0aW1lb3V0IGRlZmluZWQgYnkNCg0KSXQncyBub3QgMTAgInNlY29uZHMiLCBpdCdzIDEwICJI
WiINCg0KUC4NCg0KPiB0aGUgZG1hX2ZlbmNlIGZyYW1ld29yay4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gLS0tDQo+
IMKgZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9mZW5jZS5jIHwgOSArKysrKy0tLS0NCj4gwqAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZmVuY2UuYyBiL2RyaXZlcnMvZ3B1
L2RybS92Z2VtL3ZnZW1fZmVuY2UuYw0KPiBpbmRleCAwN2RiMzE5YzNkN2YuLjFjYTE0YjgzNDc5
ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9mZW5jZS5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZmVuY2UuYw0KPiBAQCAtMjcsOCArMjcsNiBA
QA0KPiDCoA0KPiDCoCNpbmNsdWRlICJ2Z2VtX2Rydi5oIg0KPiDCoA0KPiAtI2RlZmluZSBWR0VN
X0ZFTkNFX1RJTUVPVVQgKDEwKkhaKQ0KPiAtDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
