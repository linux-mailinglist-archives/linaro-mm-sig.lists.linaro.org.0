Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FABA208EE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jan 2025 11:48:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8425B3F50E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jan 2025 10:48:39 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	by lists.linaro.org (Postfix) with ESMTPS id 13E083F50E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jan 2025 10:48:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of l.stach@pengutronix.de designates 185.203.201.7 as permitted sender) smtp.mailfrom=l.stach@pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1tcj8i-0007Cn-GY; Tue, 28 Jan 2025 11:48:16 +0100
Message-ID: <6681c5a71cadaee237dc4bf47e12ffd0bfdd89b0.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	marek.olsak@amd.com, sumit.semwal@linaro.org
Date: Tue, 28 Jan 2025 11:48:15 +0100
In-Reply-To: <20250128100833.8973-1-christian.koenig@amd.com>
References: <20250128100833.8973-1-christian.koenig@amd.com>
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 13E083F50E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[185.203.201.7:from];
	ONCE_RECEIVED(0.20)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:209379, ipnet:185.203.200.0/22, country:DE];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DMARC_NA(0.00)[pengutronix.de];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
Message-ID-Hash: EUEAQ35EAUPLMWXMRR562X7GY6KUAIGY
X-Message-ID-Hash: EUEAQ35EAUPLMWXMRR562X7GY6KUAIGY
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix timeout handling in dma_resv_wait_timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EUEAQ35EAUPLMWXMRR562X7GY6KUAIGY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpBbSBEaWVuc3RhZywgZGVtIDI4LjAxLjIwMjUgdW0gMTE6MDggKzAx
MDAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBFdmVuIHRoZSBrZXJuZWxkb2Mgc2F5cyB0
aGF0IHdpdGggYSB6ZXJvIHRpbWVvdXQgdGhlIGZ1bmN0aW9uIHNob3VsZCBub3QNCj4gd2FpdCBm
b3IgYW55dGhpbmcsIGJ1dCBzdGlsbCByZXR1cm4gMSB0byBpbmRpY2F0ZSB0aGF0IHRoZSBmZW5j
ZXMgYXJlDQo+IHNpZ25hbGVkIG5vdy4NCj4gDQo+IFVuZm9ydHVuYXRlbHkgdGhhdCBpc24ndCB3
aGF0IHdhcyBpbXBsZW1lbnRlZCwgaW5zdGVhZCBvZiBvbmx5IHJldHVybmluZw0KPiAxIHdlIGFs
c28gd2FpdGVkIGZvciBhdCBsZWFzdCBvbmUgamlmZmllcy4NCj4gDQo+IEZpeCB0aGF0IGJ5IGFk
anVzdGluZyB0aGUgaGFuZGxpbmcgdG8gd2hhdCB0aGUgZnVuY3Rpb24gaXMgYWN0dWFsbHkNCj4g
ZG9jdW1lbnRlZCB0byBkby4NCj4gDQo+IFJlcG9ydGVkLWJ5OiBNYXJlayBPbMWhw6FrIDxtYXJl
ay5vbHNha0BhbWQuY29tPg0KPiBSZXBvcnRlZC1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVu
Z3V0cm9uaXguZGU+DQo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMTEgKysrKysrLS0tLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJl
c3YuYw0KPiBpbmRleCA1ZjhkMDEwNTE2ZjAuLmFlOTJkOWQyMzk0ZCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1y
ZXN2LmMNCj4gQEAgLTY4NCwxMSArNjg0LDEyIEBAIGxvbmcgZG1hX3Jlc3Zfd2FpdF90aW1lb3V0
KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBlbnVtIGRtYV9yZXN2X3VzYWdlIHVzYWdlLA0KPiAgCWRt
YV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB1c2FnZSk7DQo+ICAJZG1hX3Jlc3ZfZm9y
X2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsNCj4gIA0KPiAtCQlyZXQgPSBk
bWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOw0KPiAtCQlpZiAocmV0IDw9
IDApIHsNCj4gLQkJCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOw0KPiAtCQkJcmV0dXJuIHJl
dDsNCj4gLQkJfQ0KPiArCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRy
LCB0aW1lb3V0KTsNCj4gKwkJaWYgKHJldCA8PSAwKQ0KPiArCQkJYnJlYWs7DQo+ICsNCj4gKwkJ
LyogRXZlbiBmb3IgemVybyB0aW1lb3V0IHRoZSByZXR1cm4gdmFsdWUgaXMgMSAqLw0KPiArCQl0
aW1lb3V0ID0gbWluKHRpbWVvdXQsIHJldCk7DQoNClRoaXMgbWluIGNvbnN0cnVjdCBhbmQgdGhl
IGNvbW1lbnQgY29uZnVzZWQgbWUgYSBiaXQgYXQgZmlyc3QuIEkgdGhpbmsNCml0IHdvdWxkIGJl
IGVhc2llciB0byByZWFkIGFzDQoNCi8qIFdpdGggYSB6ZXJvIHRpbWVvdXQgZG1hX2ZlbmNlX3dh
aXRfdGltZW91dCBtYWtlcyB1cCBhDQogKiBwb3NpdGl2ZSByZXR1cm4gdmFsdWUgZm9yIGFscmVh
ZHkgc2lnbmFsZWQgZmVuY2VzLg0KICovDQppZiAodGltZW91dCkNCgl0aW1lb3V0ID0gcmV0Ow0K
DQpBbHNvIHBsZWFzZSBjaGFuZ2UgdGhlIGluaXRpYWxpemF0aW9uIG9mIHJldCBvbiB0b3Agb2Yg
dGhlIGZ1bmN0aW9uIHRvDQpyZXQgPSAxIHNvIGl0IGhhcyB0aGUgcmlnaHQgdmFsdWUgd2hlbiBu
byBmZW5jZXMgYXJlIHByZXNlbnQuIE5vdyB0aGF0DQp5b3UgdXNlIHRoZSB0aW1lb3V0IHZhcmlh
YmxlIGZvciB0aGUgZmVuY2Ugd2FpdCwgdGhlcmUgaXMgbm8gcG9pbnQgaW4NCmluaXRpYWxpemlu
ZyByZXQgdG8gdGhlIHRpbWVvdXQuDQoNClJlZ2FyZHMsDQpMdWNhcw0KDQo+ICAJfQ0KPiAgCWRt
YV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOw0KPiAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
