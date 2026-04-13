Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDVsMIVl5mkKvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:29 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4276A431DD0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:42:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50B2C406A9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:42:28 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id DD348402AE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Apr 2026 08:07:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=igalia.com header.s=20170329 header.b=VwjOXlYT;
	dmarc=pass (policy=none) header.from=igalia.com;
	spf=pass (lists.linaro.org: domain of tvrtko.ursulin@igalia.com designates 213.97.179.56 as permitted sender) smtp.mailfrom=tvrtko.ursulin@igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=lISybMQp+OaO/Lf3/XZqCWYYTxwbrtzYdJKyH0Xg9hQ=; b=VwjOXlYTFc6VCSbjzlF7+0xvAk
	tYTG6IZPhNQyxh9KJK5VwIPOdmtVTb+xwNW8JIIp/7Q64xhxubf9dPm3EGOdRA0eqKe9jvzb4rhZF
	L/97kXQkOaVBsNdWlm2NIinBKpOYwtCivc4wQFtY+/5rnXQ6aAivTUdmN1qSO7shHcsvIvy4NUqu+
	WN0G/mKIzYC1wHuEKlVvTuJiW8vIJ3EmVgTtMrMXxhXf6ZClGxLi+Y4G4lsvnD4Cm1k+JKhUZ+Ytw
	QfM9lfK85d9jqO7a5/1ZhDtZsMrB6/NMwywgvEXLpCUaACgRc5vmVqycI1kY5mRWINoAAiHDaREpH
	ZVbfhYAw==;
Received: from [90.240.106.137] (helo=[192.168.0.101])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wCCJg-00FIUa-Jv; Mon, 13 Apr 2026 10:06:44 +0200
Message-ID: <6c83b204-0d6b-46d1-8b7e-375826c445b9@igalia.com>
Date: Mon, 13 Apr 2026 09:06:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <20260330133623.17704-1-tvrtko.ursulin@igalia.com>
 <20260331094944.772833c0@fedora>
 <918805b0-2cb9-454a-9048-84cc5bfc8798@igalia.com>
 <2fae926b-a25b-42bc-ab63-caf36505b33d@amd.com>
 <601a78ea-74e7-4b20-afeb-d822a362484a@igalia.com>
 <c09d9dc1-43d1-4d7a-93ef-9707f282ad07@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <c09d9dc1-43d1-4d7a-93ef-9707f282ad07@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: CLMWKEZFDF4PIUV6GW62RDPNZDC7CCIN
X-Message-ID-Hash: CLMWKEZFDF4PIUV6GW62RDPNZDC7CCIN
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:42:22 +0000
CC: dri-devel@lists.freedesktop.org, kernel-dev@igalia.com, Philipp Stanner <phasta@kernel.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Move signalling tracepoint to before ops detach
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CLMWKEZFDF4PIUV6GW62RDPNZDC7CCIN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[177];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:email,linaro.org:email,igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: 4276A431DD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMy8wNC8yMDI2IDA3OjUyLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiA0LzEw
LzI2IDE3OjM3LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+DQo+PiBPbiAxMC8wNC8yMDI2IDA5
OjU4LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IE9uIDQvOS8yNiAxNTo1OCwgVHZydGtv
IFVyc3VsaW4gd3JvdGU6DQo+Pj4+DQo+Pj4+IE9uIDMxLzAzLzIwMjYgMDg6NDksIEJvcmlzIEJy
ZXppbGxvbiB3cm90ZToNCj4+Pj4+IE9uIE1vbiwgMzAgTWFyIDIwMjYgMTQ6MzY6MjMgKzAxMDAN
Cj4+Pj4+IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPiB3cm90ZToN
Cj4+Pj4+DQo+Pj4+Pj4gTW92ZSB0aGUgc2lnbmFsbGluZyB0cmFjZXBvaW50IHRvIGJlZm9yZSBm
ZW5jZS0+b3BzIGFyZSByZXNldCBvdGhlcndpc2UNCj4+Pj4+PiB0cmFjZXBvaW50IHdpbGwgZGVy
ZWZlcmVuY2UgYSBudWxsIHBvaW50ZXIuDQo+Pj4+Pg0KPj4+Pj4gSSBzdXNwZWN0IG90aGVyIHRy
YWNlIHBvaW50cyBhcmUgaW1wYWN0ZWQgdG9vDQo+Pj4+PiAodHJhY2VfZG1hX2ZlbmNlX2Rlc3Ry
b3koKSBpcywgYXQgdGhlIHZlcnkgbGVhc3QpLg0KPj4+Pg0KPj4+PiBJbmRlZWQuIEkgd29uZGVy
IHdoeSB0aGF0IGRpZCBub3QgdHJpZ2dlciBmb3IgbWUsIHdoaWxlIHRoZSBvbmUgSSBmaXggaGVy
ZSB3YXMgYW4gaW5zdGEtY3Jhc2guLi4NCj4+Pg0KPj4+IFlvdSBuZWVkIHRvIGFjdHVhbGx5IGVu
YWJsZSB0aGUgdHJhY2UgcG9pbnRzIGFuZCBhdCBsZWFzdCBmb3IgdGhlIGRlc3Ryb3kgb25lIG5v
Ym9keSBpcyB1c3VhbGx5IGludGVyZXN0ZWQgaW4gdGhhdC4NCj4+DQo+PiBSaWdodCwgYnV0IEkg
d2FzIHByZXR0eSBzdXJlIEkgd2FzIGVuYWJsaW5nIHBlcmYgcmVjb3JkIC1lICdkbWFfZmVuY2U6
Kicgd2hlbiBJIGhpdCB0aGlzLiBBbnl3YXksIGl0IGRvZXNuJ3QgbWF0dGVyLCBJIGNvdWxkIGJl
IG1pc3JlbWVtYmVyaW5nLg0KPj4NCj4+Pj4NCj4+Pj4gVG8gZml4IHRyYWNlX2RtYV9mZW5jZV9k
ZXN0cm95IEkgdGhpbmsgd2UgbmVlZCBhIG5ldyB0cmFjZXBvaW50IGRlZmluaXRpb24gaWUuIG1v
dmUgaXQgYXdheSBmcm9tIHRoZSBleGlzdGluZyBldmVudCBjbGFzcyAtIG1ha2UgaXQganVzdCBs
b2cgdGhlIGNvbnRleHQgYW5kIHNlcW5vLg0KPj4+Pg0KPj4+PiBBbnlvbmUgaGFzIGEgYmV0dGVy
IGlkZWE/DQo+Pj4NCj4+PiBUaGUgaWRlYSBvZiB0cmFjaW5nIHdpdGhvdXQgYWNjZXNzaW5nIGZl
bmNlLT5vcHMgc291bmRzIHZhbGlkIHRvIG1lLg0KPj4+DQo+Pj4gQWx0ZXJuYXRpdmVseSB3ZSBj
b3VsZCBjYWxsIGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKCkgYW5kIGRtYV9mZW5jZV9kcml2ZXJf
bmFtZSgpIGZyb20gdGhlIHRyYWNlcG9pbnQgYXMgd2VsbCwgYnV0IHRoYXQgbWVhbnMgdGhlIHRy
YWNlcG9pbnRzIG5vdyByZXF1aXJlIGEgUkNVIHJlYWQgc2lkZSBsb2NrLg0KPj4NCj4+IFdlIGNv
dWxkIHBvc3NpYmx5IHVzZSB0aGUgaGVscGVycy4gSSBhbSBub3Qgc3VyZSBpZiBSQ1UgYW5ub3Rh
dGlvbiB3b3VsZCBoYXZlIHRvIGJlIGNhc3RlZCBhd2F5IHRvIGtlZXAgc3BhcnNlIGhhcHB5LCBi
dXQgbW9yZSBpbXBvcnRhbnRseSwgSSB0aGluayBpdCB3b3VsZCBub3QgYmUgc2FmZS4NCj4+DQo+
PiAgwqAgdGhyZWFkIEHCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0aHJl
YWQgQg0KPj4NCj4+ICDCoCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWTCoMKgwqDC
oMKgwqDCoCBkbWFfZmVuY2VfdGltZWxpbmVfbmFtZQ0KPj4gIMKgwqDCoCAuLsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3BzID0gcmN1X2RlcmVmZXJlbmNl
KGZlbmNlLT5vcHMpOw0KPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKCFkbWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKGZlbmNlKSkNCj4+ICDC
oMKgwqAgdGVzdF9hbmRfc2V0X2JpdA0KPj4gIMKgwqDCoCAuLg0KPj4gIMKgwqDCoCBSQ1VfSU5J
VF9QT0lOVEVSKGZlbmNlLT5vcHMsIE5VTEwpOw0KPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gKGNvbnN0IGNoYXIgX19yY3Ug
KilvcHMtPmdldF9kcml2ZXJfbmFtZShmZW5jZSk7IC8vIE9PUFMhDQo+Pg0KPj4gQXBvbG9naWVz
IGZvciBsb25nIGxpbmUgbGVuZ3RoLCBpdCBkaWQgbm90IGZpdCBvdGhlcndpc2UuDQo+Pg0KPj4g
TG9va3MgbGlrZSB3ZSBtaXNzZWQgdGhpcy4gT3IgaXQgaXMgbWUgd2hvIGlzIG1pc3Npbmcgc29t
ZXRoaW5nPw0KPiANCj4gU2VlIGZ1bmN0aW9uIGRtYV9mZW5jZV9kcml2ZXJfbmFtZSgpIGFuZCBk
bWFfZmVuY2VfdGltZWxpbmVfbmFtZSgpOg0KPiANCj4gb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZl
bmNlLT5vcHMpOw0KPiBpZiAoIWRtYV9mZW5jZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZmVuY2UpKQ0K
PiAJcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopb3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2Up
Ow0KPiANCj4gV2UgZmlyc3QgZ3JhYiB0aGUgb3BzIHBvaW50ZXIgYW5kIHRoZW4gY2hlY2sgaWYg
dGhlIGZlbmNlIGlzIHNpZ25hbGVkIG9yIG5vdC4gU2luY2Ugd2UgZmlyc3Qgc2V0IHRoZSBzaWdu
YWxlZCBmbGFnIGFuZCB0aGVuIE5VTEwgdGhlIG9wcyBwb2ludGVyIGluIHRoZSBvdGhlciB0aHJl
YWQgd2Ugc2hvdWxkIGJlIHNhdmUgaGVyZS4NCj4gDQo+IENvdWxkIG9ubHkgYmUgdGhhdCB0ZXN0
X2JpdCgpIGlzIG5vdCBhIG1lbW9yeSBiYXJyaWVyLCBidXQgc2V0X2JpdCgpIGlzIHNvIHRoYXQg
d291bGQgYmUgYSBiaXQgc3VycHJpc2luZy4NCg0KWW91IGFyZSByaWdodCwgSSBnb3QgY29uZnVz
ZWQganVtcGluZyBiYWNrIGFuZCBmb3J0aCBiZXR3ZWVuIHBhdGNoZXMgDQpsYXN0IHdlZWsuDQoN
ClNvIGNoYW5naW5nIHRvIGhlbHBlcnMgb24gdG9wIG9mIHRoZSBjaGFuZ2UgZnJvbSB0aGlzIHBh
dGNoIHNob3VsZCBiZSANCmVub3VnaC4NCg0KSSBvbmx5IG5lZWQgdG8gY2hlY2sgaWYgdGhlIF9f
cmN1IG5lZWRzIHRvIGJlIGNhc3RlZCBhd2F5IGluIHRoZSANCnRyYWNlcG9pbnRzIGFzc2lnbm1l
bnRzIGluIGNhc2UgaXQgY2FuIHVwc2V0IHNwYXJzZS4gSSB3aWxsIHNlbmQgYSB2MiANCndoZW4g
SSBkbyB0aGF0Lg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCj4gDQo+IEFsdGVybmF0aXZlbHkgSSB3
b3VsZCBiZSBmaW5lIHRvIHN3aXRjaGluZyB0ZXN0aW5nIG9wcyBmb3IgTlVMTCBpbnN0ZWFkIG9m
IGNhbGxpbmcgZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZygpLg0KPiANCj4gUmVnYXJkcywN
Cj4gQ2hyaXN0aWFuLg0KPiANCj4+IFJlZ2FyZHMsDQo+Pg0KPj4gVHZydGtvDQo+Pg0KPj4+Pj4+
IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29t
Pg0KPj4+Pj4+IEZpeGVzOiA1NDFjOGYyNDY4YjkgKCJkbWEtYnVmOiBkZXRhY2ggZmVuY2Ugb3Bz
IG9uIHNpZ25hbCB2MyIpDQo+Pj4+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4+Pj4+PiBDYzogUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFAa2VybmVs
Lm9yZz4NCj4+Pj4+PiBDYzogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFi
b3JhLmNvbT4NCj4+Pj4+PiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+Pj4+Pj4g
Q2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPj4+Pj4+IC0tLQ0KPj4+Pj4+ICDC
oMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDMgKystDQo+Pj4+Pj4gIMKgwqAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPj4+Pj4+DQo+Pj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYw0KPj4+Pj4+IGluZGV4IDE4MjZiYTczMDk0Yy4uMWMxZWFlY2FmMWIw
IDEwMDY0NA0KPj4+Pj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4+Pj4+
ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPj4+Pj4+IEBAIC0zNjMsNiArMzYz
LDggQEAgdm9pZCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsDQo+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAmZmVuY2UtPmZsYWdzKSkpDQo+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHJldHVybjsNCj4+Pj4+PiAgwqDCoCArwqDCoMKgIHRyYWNlX2RtYV9mZW5jZV9zaWduYWxl
ZChmZW5jZSk7DQo+Pj4+Pj4gKw0KPj4+Pj4+ICDCoMKgwqDCoMKgwqAgLyoNCj4+Pj4+PiAgwqDC
oMKgwqDCoMKgwqAgKiBXaGVuIG5laXRoZXIgYSByZWxlYXNlIG5vciBhIHdhaXQgb3BlcmF0aW9u
IGlzIHNwZWNpZmllZCBzZXQgdGhlIG9wcw0KPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoCAqIHBvaW50
ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ugc3RydWN0dXJlIHRvIGJlY29tZSBpbmRlcGVu
ZGVudA0KPj4+Pj4+IEBAIC0zNzcsNyArMzc5LDYgQEAgdm9pZCBkbWFfZmVuY2Vfc2lnbmFsX3Rp
bWVzdGFtcF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+Pj4+Pj4gIMKgwqAgwqDC
oMKgwqDCoCBmZW5jZS0+dGltZXN0YW1wID0gdGltZXN0YW1wOw0KPj4+Pj4+ICDCoMKgwqDCoMKg
wqAgc2V0X2JpdChETUFfRkVOQ0VfRkxBR19USU1FU1RBTVBfQklULCAmZmVuY2UtPmZsYWdzKTsN
Cj4+Pj4+PiAtwqDCoMKgIHRyYWNlX2RtYV9mZW5jZV9zaWduYWxlZChmZW5jZSk7DQo+Pj4+Pj4g
IMKgwqAgwqDCoMKgwqDCoCBsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoY3VyLCB0bXAsICZjYl9s
aXN0LCBub2RlKSB7DQo+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgIElOSVRfTElTVF9IRUFE
KCZjdXItPm5vZGUpOw0KPj4+Pj4NCj4+Pj4NCj4+Pg0KPj4NCj4gDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
