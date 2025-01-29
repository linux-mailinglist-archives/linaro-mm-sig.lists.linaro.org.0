Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D046A21D8F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jan 2025 14:09:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D388644931
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Jan 2025 13:09:15 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	by lists.linaro.org (Postfix) with ESMTPS id 92C003F080
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Jan 2025 13:08:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of l.stach@pengutronix.de designates 185.203.201.7 as permitted sender) smtp.mailfrom=l.stach@pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1td7oL-0006hM-05; Wed, 29 Jan 2025 14:08:53 +0100
Message-ID: <5323c8d6d906fe1724eac606c94588d815580a40.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	marek.olsak@amd.com, sumit.semwal@linaro.org
Date: Wed, 29 Jan 2025 14:08:51 +0100
In-Reply-To: <20250129105841.1806-1-christian.koenig@amd.com>
References: <20250129105841.1806-1-christian.koenig@amd.com>
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 92C003F080
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ONCE_RECEIVED(0.20)[];
	R_SPF_ALLOW(-0.20)[+mx];
	RCVD_IN_DNSWL_MED(-0.20)[185.203.201.7:from];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:209379, ipnet:185.203.200.0/22, country:DE];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,linaro.org];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DNSWL_BLOCKED(0.00)[2a0a:edc0:0:900:1d::77:received];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[6]
Message-ID-Hash: AB6KPC5MGMQI4KYV6HAPS5M4BN672HOC
X-Message-ID-Hash: AB6KPC5MGMQI4KYV6HAPS5M4BN672HOC
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix timeout handling in dma_resv_wait_timeout v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AB6KPC5MGMQI4KYV6HAPS5M4BN672HOC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gTWl0dHdvY2gsIGRlbSAyOS4wMS4yMDI1IHVtIDExOjU4ICswMTAwIHNjaHJpZWIgQ2hyaXN0
aWFuIEvDtm5pZzoNCj4gRXZlbiB0aGUga2VybmVsZG9jIHNheXMgdGhhdCB3aXRoIGEgemVybyB0
aW1lb3V0IHRoZSBmdW5jdGlvbiBzaG91bGQgbm90DQo+IHdhaXQgZm9yIGFueXRoaW5nLCBidXQg
c3RpbGwgcmV0dXJuIDEgdG8gaW5kaWNhdGUgdGhhdCB0aGUgZmVuY2VzIGFyZQ0KPiBzaWduYWxl
ZCBub3cuDQo+IA0KPiBVbmZvcnR1bmF0ZWx5IHRoYXQgaXNuJ3Qgd2hhdCB3YXMgaW1wbGVtZW50
ZWQsIGluc3RlYWQgb2Ygb25seSByZXR1cm5pbmcNCj4gMSB3ZSBhbHNvIHdhaXRlZCBmb3IgYXQg
bGVhc3Qgb25lIGppZmZpZXMuDQo+IA0KPiBGaXggdGhhdCBieSBhZGp1c3RpbmcgdGhlIGhhbmRs
aW5nIHRvIHdoYXQgdGhlIGZ1bmN0aW9uIGlzIGFjdHVhbGx5DQo+IGRvY3VtZW50ZWQgdG8gZG8u
DQo+IA0KPiB2MjogaW1wcm92ZSBjb2RlIHJlYWRhYmlsaXR5DQo+IA0KPiBSZXBvcnRlZC1ieTog
TWFyZWsgT2zFocOhayA8bWFyZWsub2xzYWtAYW1kLmNvbT4NCj4gUmVwb3J0ZWQtYnk6IEx1Y2Fz
IFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPg0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IENjOiA8c3RhYmxlQHZnZXIu
a2VybmVsLm9yZz4NCg0KUmV2aWV3ZWQtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJv
bml4LmRlPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgfCAxMiArKysr
KysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KPiBpbmRleCA1ZjhkMDEwNTE2ZjAuLmM3OGNkYWUzZGVh
ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4gQEAgLTY4NCwxMSArNjg0LDEzIEBAIGxvbmcgZG1h
X3Jlc3Zfd2FpdF90aW1lb3V0KHN0cnVjdCBkbWFfcmVzdiAqb2JqLCBlbnVtIGRtYV9yZXN2X3Vz
YWdlIHVzYWdlLA0KPiAgCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1cnNvciwgb2JqLCB1c2FnZSk7
DQo+ICAJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsN
Cj4gIA0KPiAtCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQp
Ow0KPiAtCQlpZiAocmV0IDw9IDApIHsNCj4gLQkJCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3Ip
Ow0KPiAtCQkJcmV0dXJuIHJldDsNCj4gLQkJfQ0KPiArCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdF90
aW1lb3V0KGZlbmNlLCBpbnRyLCB0aW1lb3V0KTsNCj4gKwkJaWYgKHJldCA8PSAwKQ0KPiArCQkJ
YnJlYWs7DQo+ICsNCj4gKwkJLyogRXZlbiBmb3IgemVybyB0aW1lb3V0IHRoZSByZXR1cm4gdmFs
dWUgaXMgMSAqLw0KPiArCQlpZiAodGltZW91dCkNCj4gKwkJCXRpbWVvdXQgPSByZXQ7DQo+ICAJ
fQ0KPiAgCWRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOw0KPiAgDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
