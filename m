Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E1361A064
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 19:58:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 134643F5C2
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Nov 2022 18:58:26 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 7F93A3EBC8
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Nov 2022 18:58:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of "SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org" designates 145.40.68.75 as permitted sender) smtp.mailfrom="SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org";
	dmarc=none
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6E787B82EFF;
	Fri,  4 Nov 2022 18:58:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA292C433D6;
	Fri,  4 Nov 2022 18:58:05 +0000 (UTC)
Date: Fri, 4 Nov 2022 14:58:04 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20221104145804.4ec8404e@rorschach.local.home>
In-Reply-To: <d916e29d-d098-c3f3-940a-37be6772ecb5@amd.com>
References: <20221104054053.431922658@goodmis.org>
	<20221104054914.085569465@goodmis.org>
	<20221104015444.57f73efb@rorschach.local.home>
	<d916e29d-d098-c3f3-940a-37be6772ecb5@amd.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 7F93A3EBC8
X-Spamd-Result: default: False [-7.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	FORGED_SENDER(0.30)[rostedt@goodmis.org,SRS0=@kernel.org];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.source.kernel.org:helo,ams.source.kernel.org:rdns];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	TAGGED_FROM(0.00)[Cc8=3E=goodmis.org=rostedt];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,SRS0=@kernel.org];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[goodmis.org];
	TO_DN_SOME(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[145.40.68.75:from]
Message-ID-Hash: NTZ3VE6KIXUDIAWZNRZGYAMDSGRXCCZQ
X-Message-ID-Hash: NTZ3VE6KIXUDIAWZNRZGYAMDSGRXCCZQ
X-MailFrom: SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v3 12/33] timers: dma-buf: Use timer_shutdown_sync() before freeing timer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NTZ3VE6KIXUDIAWZNRZGYAMDSGRXCCZQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCA0IE5vdiAyMDIyIDA4OjE1OjUzICswMTAwDQpDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KDQo+ID4gaW5kZXggZmI2ZTBhNmFlMmM5Li41
ZDNlN2I1MDM1MDEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5j
ZS5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQo+ID4gQEAgLTQx
Miw3ICs0MTIsNyBAQCBzdGF0aWMgaW50IHRlc3Rfd2FpdF90aW1lb3V0KHZvaWQgKmFyZykNCj4g
PiAgIA0KPiA+ICAgCWVyciA9IDA7DQo+ID4gICBlcnJfZnJlZToNCj4gPiAtCWRlbF90aW1lcl9z
eW5jKCZ3dC50aW1lcik7DQo+ID4gKwl0aW1lcl9zaHV0ZG93bl9zeW5jKCZ3dC50aW1lcik7ICAN
Cj4gDQo+IE1obSwgd2hhdCBleGFjdGx5IGlzIHRoZSBiZW5lZml0IG9mIHJlbmFtaW5nIHRoZSBm
dW5jdGlvbj8NCj4gDQo+IE5vdCB0aGF0IEknbSBhZ2FpbnN0IHRoZSBjaGFuZ2UsIGJ1dCBteSB0
aGlua2luZyBpcyBtb3JlIGlmIHRoZXJlIGFyZSANCj4gbW9yZSBmdW5jdGlvbnMgd2hpY2ggZG9u
J3QgcmUtYXJtIHRoZSB0aW1lIHRoYW4gdGhvc2Ugd2hpY2ggZG8gdGhhdCB0aGVuIA0KPiB3aHkg
bm90IGZvcmJpZCBpdCBpbiBnZW5lcmFsPw0KDQpUaW1lcnMgYXJlIG1vcmUgb2Z0ZW4gcmUtYXJt
ZWQgdGhlbiBub3QuIEkgaGFkIHRvIGxvb2sgZm9yIHRoZQ0KbG9jYXRpb25zIHdoZXJlIGRlbF90
aW1lciooKSB3YXMgY2FsbGVkIGp1c3QgYmVmb3JlIGZyZWVpbmcsIGFuZCBvdGhlcg0KbG9jYXRp
b25zIHdoZXJlIHRoZXkgYXJlIGZyZWVkIGxhdGVyLg0KDQpJIGRpZG4ndCByZW5hbWUgZGVsX3Rp
bWVyX3N5bmMoKSB0byB0aW1lcl9zaHV0ZG93bl9zeW5jKCksIHRoaXMgdmVyc2lvbg0KcmVuYW1l
ZCB0aGUgbmV3ICJkZWxfdGltZXJfc2h1dGRvd24oKSIgdG8gInRpbWVyX3NodXRkb3duX3N5bmMo
KSIuDQoNCk1heWJlIEknbSBqdXN0IGNvbmZ1c2VkIGF0IHdoYXQgeW91IGFyZSBhc2tpbmcuDQoN
Ci0tIFN0ZXZlDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
