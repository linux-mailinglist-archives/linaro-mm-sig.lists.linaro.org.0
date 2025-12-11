Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGmfMuQD4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A484112AB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C0E344C6C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:44:35 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id 966C73F99F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 15:13:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=DO0icqdq;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.208.42 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-63c489f1e6cso338378a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 07:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1765466014; x=1766070814; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BbT9v83NtGR/hvY9uvwIW4Jp2/W/9ozpkYxE5YX4fBc=;
        b=DO0icqdqmCrtzAWvE4e3IKTT+MPc+n0MQ2njpKVlJxdOYR3Va7zj2BvDrQyoWKmR67
         doV74b7q4ey4ECd+gXzTvAC/76oyhTHkfdjV3ksejjDnEhom0sUBn57G4by157Q6kNg7
         bvSatJK5gl2+5o1wz6FKG72LvbfR+75202L4CgLTGRWE/wb+lWDqZ6nkJhqTe6zsDvSR
         r5y+nZWIlD8/TI0HowKQhx+dfRoN3xlHJOA5Y23R5I19LoOHd8U36sbKY0Sid/2JRBIn
         uq9fpc22O3Hy5zBpL4ukQGlkMYJZuPxPtjF9TA4nEVsFiXkkkQJQ7xoID6/WrjbPg+py
         Yoxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765466014; x=1766070814;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BbT9v83NtGR/hvY9uvwIW4Jp2/W/9ozpkYxE5YX4fBc=;
        b=Di4hXXGnGYSuXFF67PuCU06qrJpglslZPKWuJtclJ6fAgI3pizVEiVFGBHVhC/xGGY
         PsFv16CWAM5n5/DEx5bz3gXTq56MbDIGh9A6TEGOhyjrZV1hMLJMvtzUoxeyWV+JLVlm
         KvBDwlfWO2lXhA2QEeO8v6eYTbH1ZIMiyh7LD3Fw3BtXkJW4F46Ks0MmOtCtn87FYGz5
         +V43Sx63fAKxGu3iU2X3BhFg4HA4QJ44oOqrHPbynjnC/A7kivTVRUxSN3SmsGzmtDvO
         0icd+MkjoDqCiwaAFqq9jf5G0geF3z4DUAxDutr8bUgoYGDXetHEpEkHXbBfxws1eo3j
         GnQg==
X-Forwarded-Encrypted: i=1; AJvYcCWt3XIT77RENcJkH8gyo+9rbSMcK5kOIfwgXiNed3/uOP2aCV4cs+/ADB/tJEXd7kndyfgV5CEncNsDeDgt@lists.linaro.org
X-Gm-Message-State: AOJu0YwBZRp8EvUObXIfbYnfwX3jXb8HDWMdvTXr6+9O0AGig8pfvvhq
	yq++uUX+MegBqsk0/y6w0pYG6rWw0hOnF37uuzfhYJBaUZ59YfeYly5ZEhQmvgnkxm3QdMxhBUy
	jU612UQQ=
X-Gm-Gg: AY/fxX5iiqeOGhc4fnab9tQH38lCCqonaac42E+InnXqNqsGR2uGQUCJ4bEHlGpgKul
	EMEsASWk/stOF5pZ97+XXzAfanjs3INvT94CB+JQniz9o98Qz1qoC/omLjB4Na/FunIRxU2t01e
	HomhSAkIoXYcRzqVdu7Cn7j9Xfuc2hooBjt3FJG/3Ko9OccPJMgRAbudoBZFKQsITRgFvJRi8gu
	+EwVEgDK40PHMPwO6PWrfXaqfMSrwcCv7kwzdst2TgNK3ruKkLmaqKrXxy1pApUGdpmYLykY3hS
	AXjlvNXQ7i6efU89k/towsRWBpZxAowuOvZRGsPVuMMmTUgMRoYWews5mi3a7a99CPtdeUFqGJC
	ewAvgn/fAR0ccRNU456EtqGbFKMgxLPDknDDOWhMX/AD0f2VGO0OFOtjAnfjSRmMoRQxMFnoZ94
	J5RMwRyMn2NYQDLVGiPCRSapSknkoX3py0FwNPyGc=
X-Google-Smtp-Source: AGHT+IHjcTzERCk8PEdyx93yJUqMMtWP3RFIUcEAwJCjucfiqKKlG3JtMT+NvXn4fwhWGnvcPZ9T8Q==
X-Received: by 2002:a05:6402:144c:b0:645:d07:8924 with SMTP id 4fb4d7f45d1cf-6498770bf04mr2104557a12.16.1765466014327;
        Thu, 11 Dec 2025 07:13:34 -0800 (PST)
Received: from [192.168.1.83] ([86.33.28.86])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-649820f77fbsm2698847a12.19.2025.12.11.07.13.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 07:13:33 -0800 (PST)
Message-ID: <9ef8686f-820f-41e9-985e-40411b4b9bd3@ursulin.net>
Date: Thu, 11 Dec 2025 16:13:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-10-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251211122407.1709-10-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OHCS44IHH2ZOFZLH2NZXN2EOWQQAQYQ5
X-Message-ID-Hash: OHCS44IHH2ZOFZLH2NZXN2EOWQQAQYQ5
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:45 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/19] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OHCS44IHH2ZOFZLH2NZXN2EOWQQAQYQ5/>
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
	DATE_IN_PAST(1.00)[3024];
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
	NEURAL_SPAM(0.00)[0.027];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,ursulin.net:mid]
X-Rspamd-Queue-Id: 65A484112AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMS8xMi8yMDI1IDEzOjE2LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBVc2luZyB0
aGUgaW5saW5lIGxvY2sgaXMgbm93IHRoZSByZWNvbW1lbmRlZCB3YXkgZm9yIGRtYV9mZW5jZSBp
bXBsZW1lbnRhdGlvbnMuDQo+DQo+IFNvIHVzZSB0aGlzIGFwcHJvYWNoIGZvciB0aGUgc2NoZWR1
bGVyIGZlbmNlcyBhcyB3ZWxsIGp1c3QgaW4gY2FzZSBpZg0KPiBhbnlib2R5IHVzZXMgdGhpcyBh
cyBibHVlcHJpbnQgZm9yIGl0cyBvd24gaW1wbGVtZW50YXRpb24uDQo+DQo+IEFsc28gc2F2ZXMg
YWJvdXQgNCBieXRlcyBmb3IgdGhlIGV4dGVybmFsIHNwaW5sb2NrLg0KPg0KPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IC0tLQ0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyB8IDcgKysrLS0tLQ0K
PiAgIGluY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCAgICAgICAgICAgICB8IDQgLS0tLQ0KPiAg
IDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPg0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jIGIvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jDQo+IGluZGV4IDA4Y2NiZGU4YjJm
NS4uNDc0NzFiOWU0M2Y5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVy
L3NjaGVkX2ZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9m
ZW5jZS5jDQo+IEBAIC0xNjEsNyArMTYxLDcgQEAgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2ZlbmNl
X3NldF9kZWFkbGluZV9maW5pc2hlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmLA0KPiAgIAkvKiBJZiB3
ZSBhbHJlYWR5IGhhdmUgYW4gZWFybGllciBkZWFkbGluZSwga2VlcCBpdDogKi8NCj4gICAJaWYg
KHRlc3RfYml0KERSTV9TQ0hFRF9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQsICZmLT5mbGFn
cykgJiYNCj4gICAJICAgIGt0aW1lX2JlZm9yZShmZW5jZS0+ZGVhZGxpbmUsIGRlYWRsaW5lKSkg
ew0KPiAtCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZmZW5jZS0+bG9jaywgZmxhZ3MpOw0KPiAr
CQlkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZiwgZmxhZ3MpOw0KDQpSZWJhc2UgZXJyb3Ig
SSBndWVzcy4gUHVsbCBpbnRvIHRoZSBsb2NraW5nIGhlbHBlcnMgcGF0Y2guDQoNClJlZ2FyZHMs
DQoNClR2cnRrbw0KDQo+ICAgCQlyZXR1cm47DQo+ICAgCX0NCj4gICANCj4gQEAgLTIxNyw3ICsy
MTcsNiBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpkcm1fc2NoZWRfZmVuY2VfYWxsb2Moc3Ry
dWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSwNCj4gICANCj4gICAJZmVuY2UtPm93bmVyID0g
b3duZXI7DQo+ICAgCWZlbmNlLT5kcm1fY2xpZW50X2lkID0gZHJtX2NsaWVudF9pZDsNCj4gLQlz
cGluX2xvY2tfaW5pdCgmZmVuY2UtPmxvY2spOw0KPiAgIA0KPiAgIAlyZXR1cm4gZmVuY2U7DQo+
ICAgfQ0KPiBAQCAtMjMwLDkgKzIyOSw5IEBAIHZvaWQgZHJtX3NjaGVkX2ZlbmNlX2luaXQoc3Ry
dWN0IGRybV9zY2hlZF9mZW5jZSAqZmVuY2UsDQo+ICAgCWZlbmNlLT5zY2hlZCA9IGVudGl0eS0+
cnEtPnNjaGVkOw0KPiAgIAlzZXEgPSBhdG9taWNfaW5jX3JldHVybigmZW50aXR5LT5mZW5jZV9z
ZXEpOw0KPiAgIAlkbWFfZmVuY2VfaW5pdCgmZmVuY2UtPnNjaGVkdWxlZCwgJmRybV9zY2hlZF9m
ZW5jZV9vcHNfc2NoZWR1bGVkLA0KPiAtCQkgICAgICAgJmZlbmNlLT5sb2NrLCBlbnRpdHktPmZl
bmNlX2NvbnRleHQsIHNlcSk7DQo+ICsJCSAgICAgICBOVUxMLCBlbnRpdHktPmZlbmNlX2NvbnRl
eHQsIHNlcSk7DQo+ICAgCWRtYV9mZW5jZV9pbml0KCZmZW5jZS0+ZmluaXNoZWQsICZkcm1fc2No
ZWRfZmVuY2Vfb3BzX2ZpbmlzaGVkLA0KPiAtCQkgICAgICAgJmZlbmNlLT5sb2NrLCBlbnRpdHkt
PmZlbmNlX2NvbnRleHQgKyAxLCBzZXEpOw0KPiArCQkgICAgICAgTlVMTCwgZW50aXR5LT5mZW5j
ZV9jb250ZXh0ICsgMSwgc2VxKTsNCj4gICB9DQo+ICAgDQo+ICAgbW9kdWxlX2luaXQoZHJtX3Nj
aGVkX2ZlbmNlX3NsYWJfaW5pdCk7DQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9ncHVfc2No
ZWR1bGVyLmggYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgNCj4gaW5kZXggZmI4ODMwMWIz
YzQ1Li5iNzdmMjRhNzgzZTMgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVs
ZXIuaA0KPiArKysgYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgNCj4gQEAgLTI5NywxMCAr
Mjk3LDYgQEAgc3RydWN0IGRybV9zY2hlZF9mZW5jZSB7DQo+ICAgICAgICAgICAgKiBiZWxvbmdz
IHRvLg0KPiAgICAgICAgICAgICovDQo+ICAgCXN0cnVjdCBkcm1fZ3B1X3NjaGVkdWxlcgkqc2No
ZWQ7DQo+IC0gICAgICAgIC8qKg0KPiAtICAgICAgICAgKiBAbG9jazogdGhlIGxvY2sgdXNlZCBi
eSB0aGUgc2NoZWR1bGVkIGFuZCB0aGUgZmluaXNoZWQgZmVuY2VzLg0KPiAtICAgICAgICAgKi8N
Cj4gLQlzcGlubG9ja190CQkJbG9jazsNCj4gICAgICAgICAgIC8qKg0KPiAgICAgICAgICAgICog
QG93bmVyOiBqb2Igb3duZXIgZm9yIGRlYnVnZ2luZw0KPiAgICAgICAgICAgICovDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
