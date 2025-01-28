Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 247BFA20C30
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jan 2025 15:41:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3185544963
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Jan 2025 14:41:57 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	by lists.linaro.org (Postfix) with ESMTPS id 8C0F84495B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Jan 2025 14:41:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of l.stach@pengutronix.de designates 185.203.201.7 as permitted sender) smtp.mailfrom=l.stach@pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1tcmmZ-0007SD-Lt; Tue, 28 Jan 2025 15:41:39 +0100
Message-ID: <e21418ab4f1e82d322569ef2d4a481c564a1040c.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	marek.olsak@amd.com, sumit.semwal@linaro.org
Date: Tue, 28 Jan 2025 15:41:38 +0100
In-Reply-To: <af78559c-057a-4d70-ab05-fcc943dce2e6@gmail.com>
References: <20250128100833.8973-1-christian.koenig@amd.com>
	 <6681c5a71cadaee237dc4bf47e12ffd0bfdd89b0.camel@pengutronix.de>
	 <af78559c-057a-4d70-ab05-fcc943dce2e6@gmail.com>
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linaro-mm-sig@lists.linaro.org
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8C0F84495B
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
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6]
Message-ID-Hash: VTQT5G6RDEKMA3TKV4Z7NU4YOLEV4UB7
X-Message-ID-Hash: VTQT5G6RDEKMA3TKV4Z7NU4YOLEV4UB7
X-MailFrom: l.stach@pengutronix.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix timeout handling in dma_resv_wait_timeout
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VTQT5G6RDEKMA3TKV4Z7NU4YOLEV4UB7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gRGllbnN0YWcsIGRlbSAyOC4wMS4yMDI1IHVtIDE1OjI4ICswMTAwIHNjaHJpZWIgQ2hyaXN0
aWFuIEvDtm5pZzoNCj4gQW0gMjguMDEuMjUgdW0gMTE6NDggc2NocmllYiBMdWNhcyBTdGFjaDoN
Cj4gPiBIaSBDaHJpc3RpYW4sDQo+ID4gDQo+ID4gQW0gRGllbnN0YWcsIGRlbSAyOC4wMS4yMDI1
IHVtIDExOjA4ICswMTAwIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoNCj4gPiA+IEV2ZW4gdGhl
IGtlcm5lbGRvYyBzYXlzIHRoYXQgd2l0aCBhIHplcm8gdGltZW91dCB0aGUgZnVuY3Rpb24gc2hv
dWxkIG5vdA0KPiA+ID4gd2FpdCBmb3IgYW55dGhpbmcsIGJ1dCBzdGlsbCByZXR1cm4gMSB0byBp
bmRpY2F0ZSB0aGF0IHRoZSBmZW5jZXMgYXJlDQo+ID4gPiBzaWduYWxlZCBub3cuDQo+ID4gPiAN
Cj4gPiA+IFVuZm9ydHVuYXRlbHkgdGhhdCBpc24ndCB3aGF0IHdhcyBpbXBsZW1lbnRlZCwgaW5z
dGVhZCBvZiBvbmx5IHJldHVybmluZw0KPiA+ID4gMSB3ZSBhbHNvIHdhaXRlZCBmb3IgYXQgbGVh
c3Qgb25lIGppZmZpZXMuDQo+ID4gPiANCj4gPiA+IEZpeCB0aGF0IGJ5IGFkanVzdGluZyB0aGUg
aGFuZGxpbmcgdG8gd2hhdCB0aGUgZnVuY3Rpb24gaXMgYWN0dWFsbHkNCj4gPiA+IGRvY3VtZW50
ZWQgdG8gZG8uDQo+ID4gPiANCj4gPiA+IFJlcG9ydGVkLWJ5OiBNYXJlayBPbMWhw6FrIDxtYXJl
ay5vbHNha0BhbWQuY29tPg0KPiA+ID4gUmVwb3J0ZWQtYnk6IEx1Y2FzIFN0YWNoIDxsLnN0YWNo
QHBlbmd1dHJvbml4LmRlPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8
Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiA+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwu
b3JnPg0KPiA+ID4gLS0tDQo+ID4gPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMTEg
KysrKysrLS0tLS0NCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4gPiA+IGluZGV4IDVmOGQw
MTA1MTZmMC4uYWU5MmQ5ZDIzOTRkIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+ID4g
PiBAQCAtNjg0LDExICs2ODQsMTIgQEAgbG9uZyBkbWFfcmVzdl93YWl0X3RpbWVvdXQoc3RydWN0
IGRtYV9yZXN2ICpvYmosIGVudW0gZG1hX3Jlc3ZfdXNhZ2UgdXNhZ2UsDQo+ID4gPiAgIAlkbWFf
cmVzdl9pdGVyX2JlZ2luKCZjdXJzb3IsIG9iaiwgdXNhZ2UpOw0KPiA+ID4gICAJZG1hX3Jlc3Zf
Zm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQoJmN1cnNvciwgZmVuY2UpIHsNCj4gPiA+ICAgDQo+ID4g
PiAtCQlyZXQgPSBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLCBpbnRyLCByZXQpOw0KPiA+
ID4gLQkJaWYgKHJldCA8PSAwKSB7DQo+ID4gPiAtCQkJZG1hX3Jlc3ZfaXRlcl9lbmQoJmN1cnNv
cik7DQo+ID4gPiAtCQkJcmV0dXJuIHJldDsNCj4gPiA+IC0JCX0NCj4gPiA+ICsJCXJldCA9IGRt
YV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIGludHIsIHRpbWVvdXQpOw0KPiA+ID4gKwkJaWYg
KHJldCA8PSAwKQ0KPiA+ID4gKwkJCWJyZWFrOw0KPiA+ID4gKw0KPiA+ID4gKwkJLyogRXZlbiBm
b3IgemVybyB0aW1lb3V0IHRoZSByZXR1cm4gdmFsdWUgaXMgMSAqLw0KPiA+ID4gKwkJdGltZW91
dCA9IG1pbih0aW1lb3V0LCByZXQpOw0KPiA+IFRoaXMgbWluIGNvbnN0cnVjdCBhbmQgdGhlIGNv
bW1lbnQgY29uZnVzZWQgbWUgYSBiaXQgYXQgZmlyc3QuIEkgdGhpbmsNCj4gPiBpdCB3b3VsZCBi
ZSBlYXNpZXIgdG8gcmVhZCBhcw0KPiA+IA0KPiA+IC8qIFdpdGggYSB6ZXJvIHRpbWVvdXQgZG1h
X2ZlbmNlX3dhaXRfdGltZW91dCBtYWtlcyB1cCBhDQo+ID4gICAqIHBvc2l0aXZlIHJldHVybiB2
YWx1ZSBmb3IgYWxyZWFkeSBzaWduYWxlZCBmZW5jZXMuDQo+ID4gICAqLw0KPiA+IGlmICh0aW1l
b3V0KQ0KPiA+IAl0aW1lb3V0ID0gcmV0Ow0KPiANCj4gR29vZCBwb2ludCwgZ29pbmcgdG8gY2hh
bmdlIHRoYXQuDQo+IA0KPiA+IA0KPiA+IEFsc28gcGxlYXNlIGNoYW5nZSB0aGUgaW5pdGlhbGl6
YXRpb24gb2YgcmV0IG9uIHRvcCBvZiB0aGUgZnVuY3Rpb24gdG8NCj4gPiByZXQgPSAxIHNvIGl0
IGhhcyB0aGUgcmlnaHQgdmFsdWUgd2hlbiBubyBmZW5jZXMgYXJlIHByZXNlbnQuIE5vdyB0aGF0
DQo+ID4geW91IHVzZSB0aGUgdGltZW91dCB2YXJpYWJsZSBmb3IgdGhlIGZlbmNlIHdhaXQsIHRo
ZXJlIGlzIG5vIHBvaW50IGluDQo+ID4gaW5pdGlhbGl6aW5nIHJldCB0byB0aGUgdGltZW91dC4N
Cj4gDQo+IFdoZW4gbm8gZmVuY2VzIGFyZSBwcmVzZW50IHJldHVybmluZyAxIHdvdWxkIGJlIGlu
Y29ycmVjdCBpZiB0aGUgdGltZW91dCANCj4gdmFsdWUgd2FzIG5vbiB6ZXJvLg0KPiANCj4gT25s
eSB3aGVuIHRoZSB0aW1lb3V0IHZhbHVlIGlzIHplcm8gd2Ugc2hvdWxkIHJldHVybiAxIHRvIGlu
ZGljYXRlIHRoYXQgDQo+IHRoZXJlIGlzIG5vdGhpbmcgdG8gd2FpdCBmb3IuDQo+IA0KVWgsIHll
YSBkaWRuJ3QgdGhpbmsgYWJvdXQgdGhpcy4NCg0KSG9uZXN0bHksIG1ha2luZyB1cCB0aGlzIHBv
c2l0aXZlIHJldHVybiB2YWx1ZSByZXF1aXJlcyBvbmUgdG8gdGhpbmsNCnJlYWxseSBoYXJkIGFi
b3V0IHRob3NlIGNvZGUgcGF0aHMuIFRoaXMgd291bGQgYWxsIGJlIG11Y2ggY2xlYW5lciBhbmQN
CnRoZSBjaGFpbmluZyBvZiBtdWx0aXBsZSB3YWl0cywgbGlrZSBpbiB0aGUgZnVuY3Rpb24gY2hh
bmdlZCBoZXJlLA0Kd291bGQgYmUgbXVjaCBtb3JlIG5hdHVyYWwgd2hlbiBhIDAgcmV0dXJuIHdv
dWxkIGFsc28gYmUgdHJlYXRlZCBhcyBhDQpvcmRpbmFyeSBzdWNjZXNzZnVsIHdhaXQgYW5kIHRp
bWVvdXRzIHdvdWxkIGJlIHNpZ25hbGVkIHdpdGggRVRJTUVET1VULg0KQnV0IHRoYXQncyBhIGxh
cmdlIGNoYW5nZSB3aXRoIGxvdHMgb2YgY2FsbHNpdGVzIHRvIGF1ZGl0LCBtYXliZSBmb3INCmFu
b3RoZXIgZGF5Lg0KDQpSZWdhcmRzLA0KTHVjYXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
