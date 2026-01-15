Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPN+DycM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E45B241196A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 061B7405D3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:19:50 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id CB70E3F7FD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Jan 2026 08:03:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=IZRUNcVj;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.47 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47edffe5540so6112375e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Jan 2026 00:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1768464180; x=1769068980; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xcbLu2kQiM96qvHxOV6cgsDqK/+n86xJwLTUNrTYpaE=;
        b=IZRUNcVjuiOfiae4GiExRJPAjHBPhcLdKipBVKECfsN8JwetNtLzhbup6ODu8XgAEc
         d7ksoA5mWQoDA0XlnL1mDYtUhpWxBf8aWR22ehbfIbPOvr/0mD/2B5cZRKsVOdRi/V1P
         1TNsdMCkIL7EqIMUHXIv9Z9e13HxN3B+8wV0cZsaHc6VIpSrbad40Yb4GDYAfUo6Ywfp
         WIxJnhjB2j989yagtOc2KZCrwEyMyOPxwTuy+C/Kwfy3SYtg3GCZTJujogMMJhGlWgke
         BA94U6/45tetslG4tPueJxBTB+jeLvZpDpdITNJQABfl6ZafkGdmfFMh+2xDRTazQJla
         ZnGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768464180; x=1769068980;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xcbLu2kQiM96qvHxOV6cgsDqK/+n86xJwLTUNrTYpaE=;
        b=YJcv5VEWj/hunmmBc6nsRcktETinqGkBV+bX5Gemp9s8QLdJgGCbSC1yfL3gNkCqsx
         GiXIZi8XOGMY8xeVNiN2HxXO9nzV/Nw53hVwwcKfGhGQQUAgyg6GSxE4bo16LCuZxVOu
         MZegp/JgBnVCiR9hlHbT1y+8CCHOVIg22Ec1rDFYRAjg30mQ4rUx7AS4tIxWxL3Ds5WQ
         kfp5yhBIS8Djc2LruGeDINdA2XsEIPV4RtKC/SgXIpc5BMMg3S9Y8SGRuRBVLESB5nPS
         RRlBHsdvriW8uEX1nMKnVdUaExdERHpeIwJLOJtv5tUy2Z8Nsu/UfqtZO3wO9sq9KTmc
         JMWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEh72PdkG+sSF/eyFysoA5TvOhoPmPT86w4fU2Kc9hc5/yGsrnTy7WwAb5TwHxqMQet40Xdnvy7bM2kyAk@lists.linaro.org
X-Gm-Message-State: AOJu0YzIkaZVQajKvww9w/15q0l0MRTFSJYuvBTGIo0Ryyw/Gvl1Kfjw
	f3fS8+6TtNZOPd/cOl9aLRQa+sW9tjaAYe7e8Uyq+LpAYmLWfQ8OW+yVyFQawo5+7r4=
X-Gm-Gg: AY/fxX7y2+etnpWqCa8XU6aWmI/tJ8LWX/Uqy2IAxs5mwRE0buhkyFMbSDnYmdyExBX
	ytZYF4X9Jl3XI2DLccA6duelHehn6+6siHi4wRXd/sBx3F2tN8tpq+UNGyLbjKgU8Ov+ybV71T2
	qhbmwR6YRMJLJW5Vbsw//W9kpyvugAdTSkJk6iVIw1yoKnp8/KPXh93KMR6CpkBP/tjYE/kHDvF
	nP2sC8qdigCTV0f46HDZQ5aoIAXozFy1HaoNfndOZYsm9H9uwwcWFsjggowJ203AcO/SkFNH+bz
	ulVbCCicTQ2Pg5FvR5F+J+nEXjqgncYH3uYFLTG1KdDSueul6/LxR/4vsO3/LpoRp0WdKTytsSf
	qyeGpvoOug0wuZ/jdQkKDlsNjEd4Lyv8tJXiVVk41xVQgYsRgHLkxXQ+2g3UhAPNUjgO06OA+LU
	nFB6bapXxpWXAiJdc6vhJywa5UIzljQuuh
X-Received: by 2002:a05:600c:4e0f:b0:47d:4fbe:e6cc with SMTP id 5b1f17b1804b1-47ee32fc6f7mr64282815e9.13.1768464179538;
        Thu, 15 Jan 2026 00:02:59 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f428cebdcsm32679625e9.12.2026.01.15.00.02.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 00:02:59 -0800 (PST)
Message-ID: <42d9230d-d39b-4ffd-aa73-112a984bd50b@ursulin.net>
Date: Thu, 15 Jan 2026 08:02:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260113152125.47380-1-christian.koenig@amd.com>
 <20260113152125.47380-7-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260113152125.47380-7-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EES5UJZEEDPBZH6VW44ISOPB4XEY2GBC
X-Message-ID-Hash: EES5UJZEEDPBZH6VW44ISOPB4XEY2GBC
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:07 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 06/10] dma-buf/selftests: test RCU ops and inline lock v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EES5UJZEEDPBZH6VW44ISOPB4XEY2GBC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[2192];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,intel.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.129];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,igalia.com:email]
X-Rspamd-Queue-Id: E45B241196A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMy8wMS8yMDI2IDE1OjE2LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBEcm9wIHRo
ZSBtb2NrX2ZlbmNlIGFuZCB0aGUga21lbV9jYWNoZSwgaW5zdGVhZCB1c2UgdGhlIGlubGluZSBs
b2NrIGFuZA0KPiB0ZXN0IGlmIHRoZSBvcHMgYXJlIHByb3Blcmx5IGRyb3BwZWQgYWZ0ZXIgc2ln
bmFsaW5nLg0KPiANCj4gdjI6IG1vdmUgdGhlIFJDVSBjaGVjayB0byB0aGUgZW5kIG9mIHRoZSB0
ZXN0DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+DQo+IC0tLQ0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyB8
IDQ0ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1m
ZW5jZS5jDQo+IGluZGV4IDVkMGQ5YWJjNmUyMS4uMGQ5ZDUyNGQ3OWI2IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVm
L3N0LWRtYS1mZW5jZS5jDQo+IEBAIC0xNCw0MyArMTQsMjYgQEANCj4gICANCj4gICAjaW5jbHVk
ZSAic2VsZnRlc3QuaCINCj4gICANCj4gLXN0YXRpYyBzdHJ1Y3Qga21lbV9jYWNoZSAqc2xhYl9m
ZW5jZXM7DQo+IC0NCj4gLXN0YXRpYyBzdHJ1Y3QgbW9ja19mZW5jZSB7DQo+IC0Jc3RydWN0IGRt
YV9mZW5jZSBiYXNlOw0KPiAtCXN0cnVjdCBzcGlubG9jayBsb2NrOw0KPiAtfSAqdG9fbW9ja19m
ZW5jZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKSB7DQo+IC0JcmV0dXJuIGNvbnRhaW5lcl9vZihmLCBz
dHJ1Y3QgbW9ja19mZW5jZSwgYmFzZSk7DQo+IC19DQo+IC0NCj4gICBzdGF0aWMgY29uc3QgY2hh
ciAqbW9ja19uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+ICAgew0KPiAgIAlyZXR1cm4gIm1v
Y2siOw0KPiAgIH0NCj4gICANCj4gLXN0YXRpYyB2b2lkIG1vY2tfZmVuY2VfcmVsZWFzZShzdHJ1
Y3QgZG1hX2ZlbmNlICpmKQ0KPiAtew0KPiAtCWttZW1fY2FjaGVfZnJlZShzbGFiX2ZlbmNlcywg
dG9fbW9ja19mZW5jZShmKSk7DQo+IC19DQo+IC0NCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGRt
YV9mZW5jZV9vcHMgbW9ja19vcHMgPSB7DQo+ICAgCS5nZXRfZHJpdmVyX25hbWUgPSBtb2NrX25h
bWUsDQo+ICAgCS5nZXRfdGltZWxpbmVfbmFtZSA9IG1vY2tfbmFtZSwNCj4gLQkucmVsZWFzZSA9
IG1vY2tfZmVuY2VfcmVsZWFzZSwNCj4gICB9Ow0KPiAgIA0KPiAgIHN0YXRpYyBzdHJ1Y3QgZG1h
X2ZlbmNlICptb2NrX2ZlbmNlKHZvaWQpDQo+ICAgew0KPiAtCXN0cnVjdCBtb2NrX2ZlbmNlICpm
Ow0KPiArCXN0cnVjdCBkbWFfZmVuY2UgKmY7DQo+ICAgDQo+IC0JZiA9IGttZW1fY2FjaGVfYWxs
b2Moc2xhYl9mZW5jZXMsIEdGUF9LRVJORUwpOw0KPiArCWYgPSBrbWFsbG9jKHNpemVvZigqZiks
IEdGUF9LRVJORUwpOw0KPiAgIAlpZiAoIWYpDQo+ICAgCQlyZXR1cm4gTlVMTDsNCj4gICANCj4g
LQlzcGluX2xvY2tfaW5pdCgmZi0+bG9jayk7DQo+IC0JZG1hX2ZlbmNlX2luaXQoJmYtPmJhc2Us
ICZtb2NrX29wcywgJmYtPmxvY2ssIDAsIDApOw0KPiAtDQo+IC0JcmV0dXJuICZmLT5iYXNlOw0K
PiArCWRtYV9mZW5jZV9pbml0KGYsICZtb2NrX29wcywgTlVMTCwgMCwgMCk7DQo+ICsJcmV0dXJu
IGY7DQo+ICAgfQ0KPiAgIA0KPiAgIHN0YXRpYyBpbnQgc2FuaXR5Y2hlY2sodm9pZCAqYXJnKQ0K
PiBAQCAtMTAwLDYgKzgzLDExIEBAIHN0YXRpYyBpbnQgdGVzdF9zaWduYWxpbmcodm9pZCAqYXJn
KQ0KPiAgIAkJZ290byBlcnJfZnJlZTsNCj4gICAJfQ0KPiAgIA0KPiArCWlmIChyY3VfZGVyZWZl
cmVuY2VfcHJvdGVjdGVkKGYtPm9wcywgdHJ1ZSkpIHsNCj4gKwkJcHJfZXJyKCJGZW5jZSBvcHMg
bm90IGNsZWFyZWQgb24gc2lnbmFsXG4iKTsNCj4gKwkJZ290byBlcnJfZnJlZTsNCj4gKwl9DQo+
ICsNCj4gICAJZXJyID0gMDsNCj4gICBlcnJfZnJlZToNCj4gICAJZG1hX2ZlbmNlX3B1dChmKTsN
Cj4gQEAgLTU0MCwxOSArNTI4LDcgQEAgaW50IGRtYV9mZW5jZSh2b2lkKQ0KPiAgIAkJU1VCVEVT
VCh0ZXN0X3N0dWIpLA0KPiAgIAkJU1VCVEVTVChyYWNlX3NpZ25hbF9jYWxsYmFjayksDQo+ICAg
CX07DQo+IC0JaW50IHJldDsNCj4gICANCj4gICAJcHJfaW5mbygic2l6ZW9mKGRtYV9mZW5jZSk9
JXp1XG4iLCBzaXplb2Yoc3RydWN0IGRtYV9mZW5jZSkpOw0KPiAtDQo+IC0Jc2xhYl9mZW5jZXMg
PSBLTUVNX0NBQ0hFKG1vY2tfZmVuY2UsDQo+IC0JCQkJIFNMQUJfVFlQRVNBRkVfQllfUkNVIHwN
Cj4gLQkJCQkgU0xBQl9IV0NBQ0hFX0FMSUdOKTsNCj4gLQlpZiAoIXNsYWJfZmVuY2VzKQ0KPiAt
CQlyZXR1cm4gLUVOT01FTTsNCj4gLQ0KPiAtCXJldCA9IHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsN
Cj4gLQ0KPiAtCWttZW1fY2FjaGVfZGVzdHJveShzbGFiX2ZlbmNlcyk7DQo+IC0NCj4gLQlyZXR1
cm4gcmV0Ow0KPiArCXJldHVybiBzdWJ0ZXN0cyh0ZXN0cywgTlVMTCk7DQo+ICAgfQ0KDQpSZXZp
ZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQoNClJl
Z2FyZHMsDQoNClR2cnRrbw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
