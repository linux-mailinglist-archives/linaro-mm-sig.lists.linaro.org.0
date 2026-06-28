Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zDD2EWhuVmqZ5QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:14:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C604F7573D6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:14:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E20A040A3F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:14:14 +0000 (UTC)
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
	by lists.linaro.org (Postfix) with ESMTPS id AC88A3F99D
	for <linaro-mm-sig@lists.linaro.org>; Sun, 28 Jun 2026 03:53:51 +0000 (UTC)
Received: from smtpclient.apple (unknown [117.182.74.7])
	by APP-01 (Coremail) with SMTP id qwCowAA33NRbmkBqExKqAw--.34181S8;
	Sun, 28 Jun 2026 11:53:45 +0800 (CST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81.1.8\))
From: WenTao Liang <vulab@iscas.ac.cn>
In-Reply-To: <20260626121825.35310-1-vulab@iscas.ac.cn>
Date: Sun, 28 Jun 2026 11:53:35 +0800
Message-Id: <CE05A9E5-BE2C-4180-B14E-74794C1286DF@iscas.ac.cn>
References: <20260626121825.35310-1-vulab@iscas.ac.cn>
To: sumit.semwal@linaro.org,
 christian.koenig@amd.com
X-Mailer: Apple Mail (2.3826.700.81.1.8)
X-CM-TRANSID: qwCowAA33NRbmkBqExKqAw--.34181S8
X-Coremail-Antispam: 1UD129KBjvJXoW7AF1kJw1DuF1kJFyDCF13CFg_yoW8XF4Upa
	95Kr4UKr98KFyxZw47AF4DtFyFkws5Jry8WF4jka4fZ3s8Za4UJw4vy3y2qFZ8Gr97GF43
	Jw15Cry5GF15AFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBCb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26rWj6s0DM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28IrcIa0xkI8VA2jI
	8067AKxVWUAVCq3wA2048vs2IY020Ec7CjxVAFwI0_Xr0E3s1l8cAvFVAK0II2c7xJM28C
	jxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW7JVWDJwA2z4x0Y4vE2Ix0cI
	8IcVCY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2
	z280aVCY1x0267AKxVWxJr0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2
	IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4U
	McvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCY1x0262kKe7AKxVWUAVWUtw
	CF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j
	6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkGc2Ij64
	vIr41lIxAIcVC0I7IYx2IY67AKxVWUCVW8JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Cr0_
	Gr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42
	IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxUgT7NUUUUU
X-Originating-IP: [117.182.74.7]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBwgMA2pAixEZfgABsW
X-Spamd-Bar: --
X-MailFrom: vulab@iscas.ac.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F4EGYIJ7DAGJGNKF5Q44OK4FX4P57YML
X-Message-ID-Hash: F4EGYIJ7DAGJGNKF5Q44OK4FX4P57YML
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:13:21 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] fix: dma-buf: fence_chains_init: error unwind path leaks   enable_sw_signaling reference
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F4EGYIJ7DAGJGNKF5Q44OK4FX4P57YML/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[397];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[iscas.ac.cn];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER(0.00)[vulab@iscas.ac.cn,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	HAS_XOIP(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vulab@iscas.ac.cn,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C604F7573D6

DQoNCj4gMjAyNuW5tDbmnIgyNuaXpSAyMDoxOO+8jFdlblRhbyBMaWFuZyA8dnVsYWJAaXNjYXMu
YWMuY24+IOWGmemBk++8mg0KPiANCj4gZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcgYWNx
dWlyZXMgYW4gZXh0cmEgcmVmZXJlbmNlIG9uIGVhY2ggY2hhaW4NCj4gIGZlbmNlLiBUaGUgZXJy
b3IgdW53aW5kIGxvb3AgY2FsbHMgZG1hX2ZlbmNlX3B1dCBvbmx5IG9uY2UgcGVyDQo+ICBjaGFp
bi9mZW5jZSB3aXRob3V0IGZpcnN0IHNpZ25hbGluZyB0aGUgZmVuY2UgdG8gdHJpZ2dlciB0aGUg
Y2FsbGJhY2sNCj4gIHRoYXQgcmVsZWFzZXMgdGhlIHNpZ25hbGluZyByZWZlcmVuY2UuIFRoaXMg
cHJldmVudHMgdGhlIGNoYWluIGZlbmNlIGtyZWYNCj4gIGZyb20gcmVhY2hpbmcgMCwgcGVybWFu
ZW50bHkgbGVha2luZyB0aGUgY2hhaW4gYW5kIGl0cyBjb250YWluZWQgZmVuY2UuDQo+IA0KPiBD
Yzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBGaXhlczogZGMyZjdlNjdhMjhhICgiZG1hLWJ1
ZjogRXhlcmNpc2UgZG1hLWZlbmNlLWNoYWluIHVuZGVyIHNlbGZ0ZXN0cyIpDQo+IFNpZ25lZC1v
ZmYtYnk6IFdlblRhbyBMaWFuZyA8dnVsYWJAaXNjYXMuYWMuY24+DQo+IC0tLQ0KPiBkcml2ZXJz
L2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWluLmMgfCA1ICsrKystDQo+IDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWluLmMgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1h
LWZlbmNlLWNoYWluLmMNCj4gaW5kZXggODIxMDIzZGQzNGRmLi43ZGMxOGUyOTQzODcgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtY2hhaW4uYw0KPiArKysgYi9k
cml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWluLmMNCj4gQEAgLTE1Miw3ICsxNTIsMTAg
QEAgc3RhdGljIGludCBmZW5jZV9jaGFpbnNfaW5pdChzdHJ1Y3QgZmVuY2VfY2hhaW5zICpmYywg
dW5zaWduZWQgaW50IGNvdW50LA0KPiANCj4gdW53aW5kOg0KPiAJZm9yIChpID0gMDsgaSA8IGNv
dW50OyBpKyspIHsNCj4gLQkJZG1hX2ZlbmNlX3B1dChmYy0+ZmVuY2VzW2ldKTsNCj4gKwkJaWYg
KGZjLT5mZW5jZXNbaV0pIHsNCj4gKwkJCWRtYV9mZW5jZV9zaWduYWwoZmMtPmZlbmNlc1tpXSk7
DQo+ICsJCQlkbWFfZmVuY2VfcHV0KGZjLT5mZW5jZXNbaV0pOw0KPiArCQl9DQo+IAkJZG1hX2Zl
bmNlX3B1dChmYy0+Y2hhaW5zW2ldKTsNCj4gCX0NCj4gCWt2ZnJlZShmYy0+ZmVuY2VzKTsNCj4g
LS0gDQo+IDIuMzkuNSAoQXBwbGUgR2l0LTE1NCkNCg0KUGxlYXNlIGlnbm9yZSB0aGlzIHBhdGNo
LiBJIHdpbGwgcmVzZW5kIGEgcHJvcGVyIHZlcnNpb24gYWZ0ZXINCmxlYXJuaW5nIHRoZSBrZXJu
ZWwgc3VibWlzc2lvbiBwcm9jZXNzLg0KDQpBcG9sb2dpZXMgZm9yIHRoZSBub2lzZS4NCg0KQmVz
dCByZWdhcmRzLA0KV2VuVGFvIExpYW5nDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
