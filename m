Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIEcBBEJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:06:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 972AB41154E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:06:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7A76404EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:06:39 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by lists.linaro.org (Postfix) with ESMTPS id BA9983F78A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 09:20:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=fYvLo0CB;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.221.46 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa4so2221352f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 01:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1765790449; x=1766395249; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1o4Ukwhz+1DIRK/ie31cNZ2qDgxL/4NJIT90teDlHCk=;
        b=fYvLo0CBWBw0q9073YEoDzJdywgQBqixjG5NM56Ps70pvCgxBD5wdW+klbMFjcPRmA
         N7zva8R3TAv9tL+FISo6nmVMtIIUC/sUOBnaq/KfAMi9zVIYfrcMxN+H3w2/l0WGzoCb
         9omvP5CCjfw3zBvVrlocry5qAlyVMTeDq8/dACIO09fdL0GhyNCpM9nQQw2wpptZ0Xf2
         SGLfJfDSlLdmamkgAKgZSgrKWhNKMwob10Th0irXQBqahCNYGnw/3kVvlFo7BD1MG/3H
         U4wbIxzwT2jW4iL5Wr1/DtxB60St5h0caIPQKIgwfEdyP3fAtQp7ShKM9p/SkDHT8CVF
         +Jow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765790449; x=1766395249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1o4Ukwhz+1DIRK/ie31cNZ2qDgxL/4NJIT90teDlHCk=;
        b=wX6dMTPqJesAG9auSncu0j7Vh82nD8jC/pkNJlF/vGZHsuWPx1VdmjH58mTTGUI1W+
         Xxx6TaSxAbTqbmESFTeSXOGZty7wdu/VUr5UlrlmnTEMaPLA6VNb1EzleCxyyKRlpDyg
         EXiWkjh1Pn0LIBX4bfoL/OLOtxdxz/BFt9eAySaDOgvUDSg1VokVgYDhLEdC61exNMwK
         AhtbvA2GTTCAIWiWwYC98BXto/GCCE7HJMj65bhVMjDzbIu9P358emaYEdzhfHFY/7xD
         E6UL0chpNDKTLGE8/2OufCyEB4fozVthGwfumOKtQy7RH1NQ6K9Bs8/jpAjE/Ccvi0Od
         rPkA==
X-Forwarded-Encrypted: i=1; AJvYcCWO+cbl5qgOsaTzxkPtfBrwapRcTH3hOuo3JljGz/hCtmdxN0EZOV214gGLh3R2lwbez/5ZjvyWk6EpLVFC@lists.linaro.org
X-Gm-Message-State: AOJu0YzUKytmuBXUcR3VHBxPiuTdbhvo0y1dMxre9BiTWx3mDmVpJVN9
	JouRTV/a8KesH4mGR4J6VC7A45upXCvZBRSvdjd9Qfr0ZGud84N6oH8lp1Y9xYCqSV4=
X-Gm-Gg: AY/fxX60ymyi2pSf5d+ZVHoQGbSBYgWjDWc+vOoEKAWG1VYfO9NTTKNJCw00caM8ln4
	TLMah2MWyzFzliTu1g9mGoA/TsP13r+KQP9oC1uAaFWh0OgYRpxnFYFtyZ+WX76OPesvJsLJ0WS
	QcapRsrcRb8WRd/wOKgpqDrIOVXUPYItTu0oYYf/MiBXbkpAxzlBE47TeaXOwGB52Z+6sRUCT/I
	qHKSwyf3u5tNiOYeBzdQJAtjAF++PKl4YdMn43r8jVobfl098xymSf5SALSqabQC8sOO49vfGmA
	StcsCK5bOBgU6J6WO8Fi/GWbmh63NnxJeDIL4PoZQWYVLGhoxvlbf9ntOqh5jUAav4hefbBEF3m
	IOAQntjxQV1hQLSZM77rJsrEcKmPUR+I8uSD4zDJzYdqvNw3HL+xYXu2OazwSCAG6ZItDXegdY4
	zzy6E+O1knngIa9J9J+Ci4K9ni3kXVsZdq
X-Google-Smtp-Source: AGHT+IFyXJ1T0HfnJe8lQuVzeAApVxSMprz7p6XFpEhr7U3JrRdPOjmtPXyV/Dptr1jZ0Rjmv9eRAA==
X-Received: by 2002:a05:6000:2909:b0:3e8:9e32:38f8 with SMTP id ffacd0b85a97d-42fb44ba107mr8549329f8f.14.1765790448487;
        Mon, 15 Dec 2025 01:20:48 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fbc6e3392sm16388637f8f.13.2025.12.15.01.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 01:20:47 -0800 (PST)
Message-ID: <e19284e2-ff38-415d-a44d-0ab610032d24@ursulin.net>
Date: Mon, 15 Dec 2025 09:20:47 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-10-christian.koenig@amd.com>
 <9ef8686f-820f-41e9-985e-40411b4b9bd3@ursulin.net>
 <587fb06e-cfac-4603-b074-a9b382ecea31@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <587fb06e-cfac-4603-b074-a9b382ecea31@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FOEWEF6ZLNVT24I5SN2DBYN6GKRP3ORX
X-Message-ID-Hash: FOEWEF6ZLNVT24I5SN2DBYN6GKRP3ORX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:43 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/19] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FOEWEF6ZLNVT24I5SN2DBYN6GKRP3ORX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[2934];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.447];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ursulin.net:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 972AB41154E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMi8xMi8yMDI1IDE1OjUwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxMi8x
MS8yNSAxNjoxMywgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+Pg0KPj4gT24gMTEvMTIvMjAyNSAx
MzoxNiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBVc2luZyB0aGUgaW5saW5lIGxvY2sg
aXMgbm93IHRoZSByZWNvbW1lbmRlZCB3YXkgZm9yIGRtYV9mZW5jZSBpbXBsZW1lbnRhdGlvbnMu
DQo+Pj4NCj4+PiBTbyB1c2UgdGhpcyBhcHByb2FjaCBmb3IgdGhlIHNjaGVkdWxlciBmZW5jZXMg
YXMgd2VsbCBqdXN0IGluIGNhc2UgaWYNCj4+PiBhbnlib2R5IHVzZXMgdGhpcyBhcyBibHVlcHJp
bnQgZm9yIGl0cyBvd24gaW1wbGVtZW50YXRpb24uDQo+Pj4NCj4+PiBBbHNvIHNhdmVzIGFib3V0
IDQgYnl0ZXMgZm9yIHRoZSBleHRlcm5hbCBzcGlubG9jay4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+PiAtLS0N
Cj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jIHwgNyArKyst
LS0tDQo+Pj4gIMKgIGluY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8IDQgLS0tLQ0KPj4+ICDCoCAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
c2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X2ZlbmNlLmMNCj4+PiBpbmRleCAwOGNjYmRlOGIyZjUuLjQ3NDcxYjllNDNmOSAxMDA2NDQNCj4+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMNCj4+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMNCj4+PiBAQCAtMTYxLDcg
KzE2MSw3IEBAIHN0YXRpYyB2b2lkIGRybV9zY2hlZF9mZW5jZV9zZXRfZGVhZGxpbmVfZmluaXNo
ZWQoc3RydWN0IGRtYV9mZW5jZSAqZiwNCj4+PiAgwqDCoMKgwqDCoCAvKiBJZiB3ZSBhbHJlYWR5
IGhhdmUgYW4gZWFybGllciBkZWFkbGluZSwga2VlcCBpdDogKi8NCj4+PiAgwqDCoMKgwqDCoCBp
ZiAodGVzdF9iaXQoRFJNX1NDSEVEX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmYtPmZs
YWdzKSAmJg0KPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAga3RpbWVfYmVmb3JlKGZlbmNlLT5kZWFk
bGluZSwgZGVhZGxpbmUpKSB7DQo+Pj4gLcKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJl
c3RvcmUoJmZlbmNlLT5sb2NrLCBmbGFncyk7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRtYV9mZW5j
ZV91bmxvY2tfaXJxcmVzdG9yZShmLCBmbGFncyk7DQo+Pg0KPj4gUmViYXNlIGVycm9yIEkgZ3Vl
c3MuIFB1bGwgaW50byB0aGUgbG9ja2luZyBoZWxwZXJzIHBhdGNoLg0KPiANCj4gTm8gdGhhdCBp
cyBhY3R1YWxseSBjb21wbGV0ZWx5IGludGVudGlvbmFsIGhlcmUuDQo+IA0KPiBQcmV2aW91c2x5
IHdlIGhhZCBhIHNlcGFyYXRlIGxvY2sgd2hpY2ggcHJvdGVjdGVkIGJvdGggdGhlIERNQS1mZW5j
ZXMgYXMgd2VsbCBhcyB0aGUgZGVhZGxpbmUgc3RhdGUuDQo+IA0KPiBOb3cgd2UgdHVybiB0aGF0
IHVwc2lkZSBkb3duIGJ5IGRyb3BwaW5nIHRoZSBzZXBhcmF0ZSBsb2NrIGFuZCBwcm90ZWN0aW5n
IHRoZSBkZWFkbGluZSBzdGF0ZSB3aXRoIHRoZSBkbWFfZmVuY2UgbG9jayBpbnN0ZWFkLg0KDQpJ
IGRvbid0IGZvbGxvdy4gVGhlIGNvZGUgaXMgY3VycmVudGx5IGxpa2UgdGhpczoNCg0Kc3RhdGlj
IHZvaWQgZHJtX3NjaGVkX2ZlbmNlX3NldF9kZWFkbGluZV9maW5pc2hlZChzdHJ1Y3QgZG1hX2Zl
bmNlICpmLA0KCQkJCQkJICBrdGltZV90IGRlYWRsaW5lKQ0Kew0KCXN0cnVjdCBkcm1fc2NoZWRf
ZmVuY2UgKmZlbmNlID0gdG9fZHJtX3NjaGVkX2ZlbmNlKGYpOw0KCXN0cnVjdCBkbWFfZmVuY2Ug
KnBhcmVudDsNCgl1bnNpZ25lZCBsb25nIGZsYWdzOw0KDQoJc3Bpbl9sb2NrX2lycXNhdmUoJmZl
bmNlLT5sb2NrLCBmbGFncyk7DQoNCgkvKiBJZiB3ZSBhbHJlYWR5IGhhdmUgYW4gZWFybGllciBk
ZWFkbGluZSwga2VlcCBpdDogKi8NCglpZiAodGVzdF9iaXQoRFJNX1NDSEVEX0ZFTkNFX0ZMQUdf
SEFTX0RFQURMSU5FX0JJVCwgJmYtPmZsYWdzKSAmJg0KCSAgICBrdGltZV9iZWZvcmUoZmVuY2Ut
PmRlYWRsaW5lLCBkZWFkbGluZSkpIHsNCgkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZmVuY2Ut
PmxvY2ssIGZsYWdzKTsNCgkJcmV0dXJuOw0KCX0NCg0KCWZlbmNlLT5kZWFkbGluZSA9IGRlYWRs
aW5lOw0KCXNldF9iaXQoRFJNX1NDSEVEX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmYt
PmZsYWdzKTsNCg0KCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmZlbmNlLT5sb2NrLCBmbGFncyk7
Li4uDQoNClRoZSBkaWZmIGNoYW5nZXMgb25lIG91dCBvZiB0aGUgdGhyZWUgbG9jay91bmxvY2sg
b3BlcmF0aW9ucy4gT3RoZXIgdHdvIA0KYXJlIGNoYW5nZWQgaW4gMy8xOS4gQWxsIHRocmVlIHNo
b3VsZCBzdXJlbHkgYmUgY2hhbmdlZCBpbiB0aGUgc2FtZSBwYXRjaC4NCg0KUmVnYXJkcywNCg0K
VHZydGtvDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+Pg0KPj4gUmVnYXJk
cywNCj4+DQo+PiBUdnJ0a28NCj4+DQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47DQo+
Pj4gIMKgwqDCoMKgwqAgfQ0KPj4+ICDCoCBAQCAtMjE3LDcgKzIxNyw2IEBAIHN0cnVjdCBkcm1f
c2NoZWRfZmVuY2UgKmRybV9zY2hlZF9mZW5jZV9hbGxvYyhzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0
eSAqZW50aXR5LA0KPj4+ICDCoCDCoMKgwqDCoMKgIGZlbmNlLT5vd25lciA9IG93bmVyOw0KPj4+
ICDCoMKgwqDCoMKgIGZlbmNlLT5kcm1fY2xpZW50X2lkID0gZHJtX2NsaWVudF9pZDsNCj4+PiAt
wqDCoMKgIHNwaW5fbG9ja19pbml0KCZmZW5jZS0+bG9jayk7DQo+Pj4gIMKgIMKgwqDCoMKgwqAg
cmV0dXJuIGZlbmNlOw0KPj4+ICDCoCB9DQo+Pj4gQEAgLTIzMCw5ICsyMjksOSBAQCB2b2lkIGRy
bV9zY2hlZF9mZW5jZV9pbml0KHN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKmZlbmNlLA0KPj4+ICDC
oMKgwqDCoMKgIGZlbmNlLT5zY2hlZCA9IGVudGl0eS0+cnEtPnNjaGVkOw0KPj4+ICDCoMKgwqDC
oMKgIHNlcSA9IGF0b21pY19pbmNfcmV0dXJuKCZlbnRpdHktPmZlbmNlX3NlcSk7DQo+Pj4gIMKg
wqDCoMKgwqAgZG1hX2ZlbmNlX2luaXQoJmZlbmNlLT5zY2hlZHVsZWQsICZkcm1fc2NoZWRfZmVu
Y2Vfb3BzX3NjaGVkdWxlZCwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmZmVu
Y2UtPmxvY2ssIGVudGl0eS0+ZmVuY2VfY29udGV4dCwgc2VxKTsNCj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBOVUxMLCBlbnRpdHktPmZlbmNlX2NvbnRleHQsIHNlcSk7DQo+Pj4g
IMKgwqDCoMKgwqAgZG1hX2ZlbmNlX2luaXQoJmZlbmNlLT5maW5pc2hlZCwgJmRybV9zY2hlZF9m
ZW5jZV9vcHNfZmluaXNoZWQsDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJmZl
bmNlLT5sb2NrLCBlbnRpdHktPmZlbmNlX2NvbnRleHQgKyAxLCBzZXEpOw0KPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5VTEwsIGVudGl0eS0+ZmVuY2VfY29udGV4dCArIDEsIHNl
cSk7DQo+Pj4gIMKgIH0NCj4+PiAgwqAgwqAgbW9kdWxlX2luaXQoZHJtX3NjaGVkX2ZlbmNlX3Ns
YWJfaW5pdCk7DQo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCBi
L2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPj4+IGluZGV4IGZiODgzMDFiM2M0NS4uYjc3
ZjI0YTc4M2UzIDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0K
Pj4+ICsrKyBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPj4+IEBAIC0yOTcsMTAgKzI5
Nyw2IEBAIHN0cnVjdCBkcm1fc2NoZWRfZmVuY2Ugew0KPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAqIGJlbG9uZ3MgdG8uDQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgICovDQo+Pj4gIMKgwqDC
oMKgwqAgc3RydWN0IGRybV9ncHVfc2NoZWR1bGVywqDCoMKgICpzY2hlZDsNCj4+PiAtwqDCoMKg
wqDCoMKgwqAgLyoqDQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqAgKiBAbG9jazogdGhlIGxvY2sgdXNl
ZCBieSB0aGUgc2NoZWR1bGVkIGFuZCB0aGUgZmluaXNoZWQgZmVuY2VzLg0KPj4+IC3CoMKgwqDC
oMKgwqDCoMKgICovDQo+Pj4gLcKgwqDCoCBzcGlubG9ja190wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBsb2NrOw0KPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgLyoqDQo+Pj4gIMKgwqDCoMKgwqDCoMKg
wqDCoMKgICogQG93bmVyOiBqb2Igb3duZXIgZm9yIGRlYnVnZ2luZw0KPj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqLw0KPj4NCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
