Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id avuVAJNwVmpa5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:23:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0E97575E3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:23:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=igalia.com header.s=20170329 header.b=R6aAGpId;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1426401D8
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:23:29 +0000 (UTC)
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
	by lists.linaro.org (Postfix) with ESMTPS id 502D23F720
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Jul 2026 09:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5FTi8Mcjhkp1s4ZA67gqJXo3xQL1HNlKoGId7XEzJC0=; b=R6aAGpIdsRbOWzvrYHCu5CWmtZ
	D0q24Ya9J3+WSEUhWooOEvEKpxlMVSa53pcYD5+0a8d+n+SKFoYqrChB/IIWBpb0SGA7aI/H2Nf/3
	l/Naw8SsdtDGVrz80gOTpFLS0g0YfZcMUW04iyAscahFi1CfHywfBe3NZ0dWaWdx4o/D2qlEbQI6Y
	Qfwu6sB8qqPFHvN6KlwVVtxX8jbbkw6g3Yc9a1Z4/zUXKtZcjyQljKIhcXssJ6xOKaNb4pcusXg1Z
	AxgXoQJ9n4gZg8FppVoeM0noW6+VFREVM2p4VkbFmssPc7YqteC/yQnlAiWBQiCxGrp84JybsI0mR
	uXtxlbqg==;
Received: from [90.240.106.137] (helo=[192.168.0.116])
	by fanzine2.igalia.com with esmtpsa
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1wh204-00AWD1-1l; Tue, 07 Jul 2026 11:21:56 +0200
Message-ID: <9e6c5123-f8b2-4a06-9fb0-be84c39ddd77@igalia.com>
Date: Tue, 7 Jul 2026 10:21:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Tvrtko Ursulin <tursulin@ursulin.net>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Marco Pagani
 <marco.pagani@linux.dev>, Boris Brezillon <boris.brezillon@collabora.com>
References: <20260701085920.3253248-2-phasta@kernel.org>
 <20260701085920.3253248-3-phasta@kernel.org>
 <a4091099-1931-4ca2-a81a-9c3321b123a8@ursulin.net>
 <51fbde808bd059510d667d130afae179626303be.camel@mailbox.org>
 <ce33edbb-11dd-4722-bb87-d16155f35a75@igalia.com>
 <e9e12e30-80c1-4650-9d71-4107517bc956@igalia.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
In-Reply-To: <e9e12e30-80c1-4650-9d71-4107517bc956@igalia.com>
X-Spamd-Bar: ---
X-MailFrom: tvrtko.ursulin@igalia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3ZEGRTKBXR3J4UEFAA5CZYM3573JS532
X-Message-ID-Hash: 3ZEGRTKBXR3J4UEFAA5CZYM3573JS532
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:18:30 +0000
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] drm/sched: Protect entity->last_scheduled with spinlock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ZEGRTKBXR3J4UEFAA5CZYM3573JS532/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	DATE_IN_PAST(1.00)[176];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:tursulin@ursulin.net,m:matthew.brost@intel.com,m:dakr@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:marco.pagani@linux.dev,m:boris.brezillon@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,ursulin.net,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,linux.dev,collabora.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tvrtko.ursulin@igalia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,igalia.com:from_mime,igalia.com:mid,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A0E97575E3

DQpPbiAwNi8wNy8yMDI2IDE1OjM3LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4gDQo+IA0KPiBP
biAwNi8wNy8yMDI2IDA5OjQ1LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+DQo+PiBPbiAwMy8w
Ny8yMDI2IDE1OjQ3LCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+Pj4gT24gRnJpLCAyMDI2LTA3
LTAzIGF0IDEyOjI3ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4gDQo+IDg+PA0KPiAN
Cj4+Pj4gSSBhbSBhbHNvIGhhcHB5IHRvIGdpdmUgaXQgYSBzcGluIG9uIHRoZSBTdGVhbSBEZWNr
IHRvIHNlZSBpZiBJIGNhbg0KPj4+PiBvYnNlcnZlIGFueXRoaW5nLg0KPj4+DQo+Pj4gQ291bGQg
YmUgaW50ZXJlc3RpbmcuDQo+Pg0KPj4gT2theSBJJ2xsIHRyeSB0byBkbyBpdCBpbiByZWFzb25h
YmxlIHRpbWUuIFlvdSBjYW4gZWl0aGVyIHJlc3BpbiBvciANCj4+IHdhaXQgZm9yIGl0LCBJIGRv
bid0IG1pbmQgZWl0aGVyIHdheS4NCj4gDQo+IE9uIHRoZSB0b3BpYyBvZiBiZW5jaG1hcmtpbmcs
IEkgZ2F2ZSBpdCBhIHF1aWNrIHNwaW4gYWdhaW5zdCBmb3VyIHVuc3luYyANCj4gaW5zdGFuY2Vz
IG9mIHZrZ2VhcnMuIFBvaW50IGJlaW5nIHNlZWluZyBpZiBzb21ldGhpbmcgY2FuIGJlIHNob3du
IG9uIA0KPiBtb3JlIGRhdGFjZW50ZXIgZGVwbG95bWVudHMgd2l0aCBtYW55IGNvcmVzIHN1Ym1p
dHRpbmcgYW5kIGxhcmdlIA0KPiBhZ2dyZWdhdGUgImZwcyIuDQo+IA0KPiB4IHN0b2NrLmZwcw0K
PiArIHBoYXN0YS5mcHMNCj4gKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rDQo+IHzCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHwNCj4gfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgK8KgICsrwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0KPiB8wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCArwqAgKyvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
DQo+IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCArwqDCoCAr
wqAgKysgK8KgIHjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHwNCj4gfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICsgKyArwqAgKysgK8KgIHjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCj4gfMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICvCoCArKysgKyArKysgK8KgIHjCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCj4g
fMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICvCoCArKysgKysrKysgK3gg
eMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfA0KPiB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgK8Kg
ICsrKyArKysrKysreCB4ICrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0KPiB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICsrwqAgKysrICsrKysrKyt4ICp4Knh4wqDCoMKgIHjCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCj4gfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCArK8KgICsrK3grKysrKysreHgqeCoqeMKgwqDCoCB4wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8DQo+IHzCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKyvCoCArKisqKysrKisrK3h4KngqKiogeCB4eMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0KPiB8wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB4wqAgKysrwqAgKyorKisqKyoqKyp4KioqKioqeHh4eHjCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCj4gfMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgeMKgIHh4KiorK8KgICoqKyorKioqKisqKioqKioqKnh4eHh4IHjCoMKgwqAg
eMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCj4gfMKgwqDCoMKgwqDCoMKgIHjC
oCAreHggeHgqKisrICsqKioqKioqKioqKioqKioqKip4eHh4eHh4IHjCoCB4eMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8DQo+IHzCoMKgwqDCoMKgIHggeHh4Kip4IHgqKioqKioqKioq
KioqKioqKioqKioqKioqKnh4Knh4eCB4eHh4eMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8DQo+IHx4eMKgwqDCoCB4eHh4eCoqeCoqKioqKioqKioqKioqKioqKioqKioqKioqKioqeCoq
eCoqeCp4KnjCoMKgIHggeCB4wqAgeMKgwqDCoCB4fA0KPiB8wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfHxfX19fX19fQV9fX0FfTXxfX19fX19fX3zCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCj4gKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rDQo+
ICDCoMKgwqAgTsKgwqDCoMKgwqDCoMKgwqDCoMKgIE1pbsKgwqDCoMKgwqDCoMKgwqDCoMKgIE1h
eMKgwqDCoMKgwqDCoMKgIE1lZGlhbsKgwqDCoMKgwqDCoMKgwqDCoMKgIEF2ZyAgICAgICAgDQo+
IFN0ZGRldg0KPiB4IDIxOMKgwqDCoMKgwqAgNTQ0Ni45ODTCoMKgwqDCoMKgIDU4NjIuNTc4wqDC
oMKgwqDCoCA1NjU2LjEyMcKgwqDCoMKgIDU2NDIuOTQyOcKgwqDCoMKgIDc2LjY2NzYxMw0KPiAr
IDIyN8KgwqDCoMKgwqAgNTUxMC40MzLCoMKgwqDCoMKgIDU3NjIuOTI2wqDCoMKgwqDCoCA1NjIw
Ljk5OcKgwqDCoMKgIDU2MjAuMzU4NcKgwqDCoMKgIDQ1LjQwNzIzNQ0KPiBEaWZmZXJlbmNlIGF0
IDk1LjAlIGNvbmZpZGVuY2UNCj4gIMKgwqDCoMKgLTIyLjU4NDQgKy8tIDExLjY1MzQNCj4gIMKg
wqDCoMKgLTAuNDAwMjI0JSArLy0gMC4yMDY1MTMlDQo+ICDCoMKgwqDCoChTdHVkZW50J3MgdCwg
cG9vbGVkIHMgPSA2Mi42OTg1KQ0KPiANCj4gTnVtYmVycyBhcmUgYXZlcmFnZSBGUFMgcGVyIHZr
Z2VhcnMgaW5zdGFuY2UuIFRvdGFsIHJ1biBlYWNoIGlzIGFyb3VuZCANCj4gNDAgc2Vjb25kcy4N
Cj4gDQo+IE1vcmUgbG9ja2luZyBkb2VzIGFwcGVhciB0byBzaG93IGEgc21hbGwgZGVjcmVhc2Ug
aW4gdGhyb3VnaHB1dCBhbmQsIA0KPiBjdXJpb3VzbHksIGEgdGlnaHRlciByYW5nZSBiZXR3ZWVu
IG1pbiBhbmQgbWF4LiBXaGV0aGVyIG9yIG5vdCB0aGF0IGlzIA0KPiB0ZWxsaW5nIHVzIHNvbWV0
aGluZyBhYm91dCB0aGUgbG9jayBjeWNsZXMgYW5kIGludGVyIGNvcmUgDQo+IHN5bmNocm9uaXNh
dGlvbiBJIGFtIG5vdCBzdXJlLiBDb3VsZCBiZSBqdXN0IG5vaXNlIGFuZCB0aGF0IG1vcmUgcnVu
cyANCj4gYXJlIG5lZWRlZC4gSSBjYW4gZG8gdGhhdCB0b21vcnJvdy4NCg0KSSB0aGluayBpdCdz
IG5vaXNlLiBSZXBlYXRlZCBtdWNoIGxvbmdlciBydW4sIHdpdGggZG91YmxlIHRoZSBjbGllbnRz
LCANCmFuZCB0aGlzIHRpbWUgcm91bmQgZ290IHRoaXM6DQoNCiAgICAgTiAgICAgICAgICAgTWlu
ICAgICAgICAgICBNYXggICAgICAgIE1lZGlhbiAgICAgICAgICAgQXZnICAgICAgICBTdGRkZXYN
CnggOTAwICAgICAgMjQ4My43NTEgICAgICAyNzk2LjMzOSAgICAgIDI2MjAuMTg0ICAgICAyNjIz
LjM2ODQgICAgIDQ5Ljg1MDY1MQ0KKyA5MDAgICAgICAyNDk2LjkyNiAgICAgIDI3NzMuNjQyICAg
ICAgMjYzMy4xMTQgICAgIDI2MzIuOTk0OSAgICAgNDguODQ4Njc1DQpEaWZmZXJlbmNlIGF0IDk1
LjAlIGNvbmZpZGVuY2UNCgk5LjYyNjUgKy8tIDQuNTU5OTENCgkwLjM2Njk1MiUgKy8tIDAuMTcz
ODE5JQ0KCShTdHVkZW50J3MgdCwgcG9vbGVkIHMgPSA0OS4zNTIyKQ0KDQpTbyBpdCBmbGlwLWZs
b3BwZWQgY29tcGFyZWQgdG8gdGhlIGxhc3QgcnVuIHdpdGggYSBzaW1pbGFyIHJlbGF0aXZlIA0K
ZGlmZmVyZW5jZS4NCg0KVGhlcmVmb3JlLCBmb3Igd2hhdCBJIGFtIGNvbmNlcm5lZCwgaXQgaXMg
b2theSB0byBnbyBhaGVhZCB3aXRoIHRoaXMgDQpzaW1wbGlmaWNhdGlvbi4gQXBhcnQgZnJvbSB0
aGUgaW1wcm92ZWQgY29tbWl0IG1lc3NhZ2UgSSB0aGluayBDaHJpc3RpYW4gDQpzaG91bGQgc3Rp
bGwgYWNrIG9uIGJlaGFsZiBvZiBBTUQgdGhvdWdoLg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
