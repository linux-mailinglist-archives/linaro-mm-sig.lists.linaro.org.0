Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMO1DtED4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6D3411284
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 88E5244A39
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:44:15 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id E2A203F8F8
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 14:53:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=wabY7toV;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.218.49 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b77030ffad9so29787566b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 06:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1765464824; x=1766069624; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KJmVtTUWRg/nWAOk10vIh00eEJeEeO5vakycm7y456g=;
        b=wabY7toVcRYBtzNeCTHVoIjAKL3umfqqOBKbBJIIAes4UM3wmJ5HJ512RJ5eNDZjkZ
         xExKKKhYdtfSHWExhtvpXu4kPzc3/2CmsMTpPvYBoxLUgfdsCvIo+6T5R2o2MH5wJSY+
         p6vMmgGhOJ/Kn8aA+fQXPYorUJvwJIxBAboIxWWGHq9cojqSZHrIxgKwUcNixelgBw+d
         JvYC/j0E0Hd+MuBLGu7wjqAUi5e8h5xDeUjOoHKzuBGbQkJL9uAGK3g+DKEJLACnkJF0
         KtYBSc13CXh24V2Egf7jSoPxXcPByQ+wPIKi4Ft35hx0mdwU1lWhnHQugUTON6Qh4oTE
         T45w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765464824; x=1766069624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KJmVtTUWRg/nWAOk10vIh00eEJeEeO5vakycm7y456g=;
        b=XBHScl9DCLYnrNnxyv2DcKPQGQwzkG2aQ/OwAW7mXykTCB4i6dGBzgSL9ESuj/c2wd
         79D2A3d0Wm0BS3k75ysAB0XPEH2IMzpDYz/B7+LFAojd7/Kno67xq2j9Fk5k36vtDVyT
         c9d/f8CqANihOCwbNm9Y3aNLOc8TgeBf6hIzlJ//dydPt2hloUQxczuMEt1xNHi2u5E9
         dI5iqOOo57PkIxos0Z43fw4usQa+pUc40EBhF6CED7X7dqONCWtQmuMrAuya8F4uhAv+
         nkLZDCSrPIpeijckeoIUjGdWqfgR8H3jEu7QimS6F9P+K+0P+i0yh4yNqCrRsAYO99TD
         HWEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmOf3J6Wgn3sIIoAnsasKMvMtFhL9u29GOkoEiRqkhTb536kfN5RNaEchTbrAnly3MlAPuSjSLUb3kH8G1@lists.linaro.org
X-Gm-Message-State: AOJu0Yy+ygwbK+sxgNpBUGcpI0P6fCugGMtQSne5ELD+Uel4Hpak0vkN
	ZBfIJaWdjX6Ahz9zp4wsd24UCUbswTNumpx9dpjNM/A5YxCpclPNDavAd/7s9FOeD2Y=
X-Gm-Gg: AY/fxX7cNe/jp4ZLBSb+TFnKdL5WKvS+YWP3NmRxn/LUiOw8Aj9SHlVz8oQIQ5deSbI
	EKY2CTtoqP0gfB2KJMOGwYgh+0aTcVgr63taDh0rELo5VFCetfhvs+Hl2A8DjyZ3lZieMGlsu9b
	+f28Gmp/JKNiklz6JMozhKwhd9y+U5Kd4ji2fKGheKLBgigXaDskoRTkcUpagKK88rcgq/psZkT
	OzUkLAadUvWmUKbq+1gMNj0BK0bfqVCK1pbuCYFZvZQM1fZZg3S1LmqrCkjbXKCRgnfgKOXtw7i
	GQrknsEgg9RmmuepVxCyPLVBJYa6TJTxKSjUhbtnpvmYq/ZtHLjsWXm+u3+5hU3joonX5N2MEns
	0dFz6uZaEtJEjvQi8TR1XxL4NvZrNnWsH2SU1hXW68eGLnWUufCGs3S5HiT+kix96AnDXl1SVqS
	6nj8tz7nMHpgKNXPxqglpxCqdGqzER
X-Google-Smtp-Source: AGHT+IGfEvX0L7YvYoHqcUSQGQSLB7W3XQ5xc6dQA/QTNHlW+NlIhJMuXoTTd+3JSMFUP/Bne2Jk/g==
X-Received: by 2002:a17:907:96a3:b0:b75:8b9f:de3a with SMTP id a640c23a62f3a-b7ce850ab79mr707957366b.59.1765464823546;
        Thu, 11 Dec 2025 06:53:43 -0800 (PST)
Received: from [192.168.1.83] ([86.33.28.86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa56c152sm286733366b.56.2025.12.11.06.53.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 06:53:43 -0800 (PST)
Message-ID: <346e3df8-5f3a-4394-9d90-4ba107294161@ursulin.net>
Date: Thu, 11 Dec 2025 15:53:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-5-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251211122407.1709-5-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZTGBRWX3TDBKN3WXH2FFOANSK3KRFUP4
X-Message-ID-Hash: ZTGBRWX3TDBKN3WXH2FFOANSK3KRFUP4
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:43 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 04/19] dma-buf/selftests: drop the mock_wait implementation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZTGBRWX3TDBKN3WXH2FFOANSK3KRFUP4/>
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
	NEURAL_SPAM(0.00)[0.160];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:email,ursulin.net:mid,igalia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: CE6D3411284
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMS8xMi8yMDI1IDEzOjE2LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBBY3R1YWxs
eSB0ZXN0IHRoZSBkb2N1bWVudGVkIGV4cGVjdGF0aW9uIG9mIGRtYV9mZW5jZV93YWl0KCkgaW5z
dGVhZCBvZg0KPiBjb21taW5nIHVwIHdpdGggYSBtb2NrX3dhaXQgaW1wbGVtZW50YXRpb24gd2hp
Y2ggdXNlcyB1bmRvY3VtZW50ZWQNCj4gYW5kIG5vbiBzdGFuZGFyZCByZXR1cm4gY29kZXMgYW5k
IGJlaGF2aW9yLg0KPg0KPiBBZGRpdGlvbmFsIHRvIHRoYXQgaW5jcmVhc2UgdGhlIHRpbWVvdXQg
dG8gb25lIHNlY29uZCwgb3RoZXJ3aXNlIHRoZQ0KPiB0ZXN0IGNhc2UgaXMgYSBiaXQgdW5yZWxp
YWJsZS4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMg
fCA1MSArKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZl
bmNlLmMNCj4gaW5kZXggNWNiOGY5MGE3NDQ4Li41ZDBkOWFiYzZlMjEgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYv
c3QtZG1hLWZlbmNlLmMNCj4gQEAgLTMzLDUwICszMyw5IEBAIHN0YXRpYyB2b2lkIG1vY2tfZmVu
Y2VfcmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPiAgIAlrbWVtX2NhY2hlX2ZyZWUoc2xh
Yl9mZW5jZXMsIHRvX21vY2tfZmVuY2UoZikpOw0KPiAgIH0NCj4gICANCj4gLXN0cnVjdCB3YWl0
X2NiIHsNCj4gLQlzdHJ1Y3QgZG1hX2ZlbmNlX2NiIGNiOw0KPiAtCXN0cnVjdCB0YXNrX3N0cnVj
dCAqdGFzazsNCj4gLX07DQo+IC0NCj4gLXN0YXRpYyB2b2lkIG1vY2tfd2FrZXVwKHN0cnVjdCBk
bWFfZmVuY2UgKmYsIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQ0KPiAtew0KPiAtCXdha2VfdXBf
cHJvY2Vzcyhjb250YWluZXJfb2YoY2IsIHN0cnVjdCB3YWl0X2NiLCBjYiktPnRhc2spOw0KPiAt
fQ0KPiAtDQo+IC1zdGF0aWMgbG9uZyBtb2NrX3dhaXQoc3RydWN0IGRtYV9mZW5jZSAqZiwgYm9v
bCBpbnRyLCBsb25nIHRpbWVvdXQpDQo+IC17DQo+IC0JY29uc3QgaW50IHN0YXRlID0gaW50ciA/
IFRBU0tfSU5URVJSVVBUSUJMRSA6IFRBU0tfVU5JTlRFUlJVUFRJQkxFOw0KPiAtCXN0cnVjdCB3
YWl0X2NiIGNiID0geyAudGFzayA9IGN1cnJlbnQgfTsNCj4gLQ0KPiAtCWlmIChkbWFfZmVuY2Vf
YWRkX2NhbGxiYWNrKGYsICZjYi5jYiwgbW9ja193YWtldXApKQ0KPiAtCQlyZXR1cm4gdGltZW91
dDsNCj4gLQ0KPiAtCXdoaWxlICh0aW1lb3V0KSB7DQo+IC0JCXNldF9jdXJyZW50X3N0YXRlKHN0
YXRlKTsNCj4gLQ0KPiAtCQlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklU
LCAmZi0+ZmxhZ3MpKQ0KPiAtCQkJYnJlYWs7DQo+IC0NCj4gLQkJaWYgKHNpZ25hbF9wZW5kaW5n
X3N0YXRlKHN0YXRlLCBjdXJyZW50KSkNCj4gLQkJCWJyZWFrOw0KPiAtDQo+IC0JCXRpbWVvdXQg
PSBzY2hlZHVsZV90aW1lb3V0KHRpbWVvdXQpOw0KPiAtCX0NCj4gLQlfX3NldF9jdXJyZW50X3N0
YXRlKFRBU0tfUlVOTklORyk7DQo+IC0NCj4gLQlpZiAoIWRtYV9mZW5jZV9yZW1vdmVfY2FsbGJh
Y2soZiwgJmNiLmNiKSkNCj4gLQkJcmV0dXJuIHRpbWVvdXQ7DQo+IC0NCj4gLQlpZiAoc2lnbmFs
X3BlbmRpbmdfc3RhdGUoc3RhdGUsIGN1cnJlbnQpKQ0KPiAtCQlyZXR1cm4gLUVSRVNUQVJUU1lT
Ow0KPiAtDQo+IC0JcmV0dXJuIC1FVElNRTsNCj4gLX0NCj4gLQ0KPiAgIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZG1hX2ZlbmNlX29wcyBtb2NrX29wcyA9IHsNCj4gICAJLmdldF9kcml2ZXJfbmFtZSA9
IG1vY2tfbmFtZSwNCj4gICAJLmdldF90aW1lbGluZV9uYW1lID0gbW9ja19uYW1lLA0KPiAtCS53
YWl0ID0gbW9ja193YWl0LA0KPiAgIAkucmVsZWFzZSA9IG1vY2tfZmVuY2VfcmVsZWFzZSwNCj4g
ICB9Ow0KPiAgIA0KPiBAQCAtMzQ5LDE0ICszMDgsMTQgQEAgc3RhdGljIGludCB0ZXN0X3dhaXQo
dm9pZCAqYXJnKQ0KPiAgIA0KPiAgIAlkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyhmKTsN
Cj4gICANCj4gLQlpZiAoZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmLCBmYWxzZSwgMCkgIT0gLUVU
SU1FKSB7DQo+ICsJaWYgKGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZiwgZmFsc2UsIDApICE9IDAp
IHsNCj4gICAJCXByX2VycigiV2FpdCByZXBvcnRlZCBjb21wbGV0ZSBiZWZvcmUgYmVpbmcgc2ln
bmFsZWRcbiIpOw0KPiAgIAkJZ290byBlcnJfZnJlZTsNCj4gICAJfQ0KPiAgIA0KPiAgIAlkbWFf
ZmVuY2Vfc2lnbmFsKGYpOw0KPiAgIA0KPiAtCWlmIChkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGYs
IGZhbHNlLCAwKSAhPSAwKSB7DQo+ICsJaWYgKGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZiwgZmFs
c2UsIDApICE9IDEpIHsNCj4gICAJCXByX2VycigiV2FpdCByZXBvcnRlZCBpbmNvbXBsZXRlIGFm
dGVyIGJlaW5nIHNpZ25hbGVkXG4iKTsNCj4gICAJCWdvdG8gZXJyX2ZyZWU7DQo+ICAgCX0NCj4g
QEAgLTM5MywxNiArMzUyLDE2IEBAIHN0YXRpYyBpbnQgdGVzdF93YWl0X3RpbWVvdXQodm9pZCAq
YXJnKQ0KPiAgIA0KPiAgIAlkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyh3dC5mKTsNCj4g
ICANCj4gLQlpZiAoZG1hX2ZlbmNlX3dhaXRfdGltZW91dCh3dC5mLCBmYWxzZSwgMSkgIT0gLUVU
SU1FKSB7DQo+ICsJaWYgKGRtYV9mZW5jZV93YWl0X3RpbWVvdXQod3QuZiwgZmFsc2UsIDEpICE9
IDApIHsNCj4gICAJCXByX2VycigiV2FpdCByZXBvcnRlZCBjb21wbGV0ZSBiZWZvcmUgYmVpbmcg
c2lnbmFsZWRcbiIpOw0KPiAgIAkJZ290byBlcnJfZnJlZTsNCj4gICAJfQ0KPiAgIA0KPiAgIAlt
b2RfdGltZXIoJnd0LnRpbWVyLCBqaWZmaWVzICsgMSk7DQo+ICAgDQo+IC0JaWYgKGRtYV9mZW5j
ZV93YWl0X3RpbWVvdXQod3QuZiwgZmFsc2UsIDIpID09IC1FVElNRSkgew0KPiArCWlmIChkbWFf
ZmVuY2Vfd2FpdF90aW1lb3V0KHd0LmYsIGZhbHNlLCBIWikgPT0gMCkgew0KPiAgIAkJaWYgKHRp
bWVyX3BlbmRpbmcoJnd0LnRpbWVyKSkgew0KPiAtCQkJcHJfbm90aWNlKCJUaW1lciBkaWQgbm90
IGZpcmUgd2l0aGluIHRoZSBqaWZmeSFcbiIpOw0KPiArCQkJcHJfbm90aWNlKCJUaW1lciBkaWQg
bm90IGZpcmUgd2l0aGluIG9uZSBIWiFcbiIpOw0KPiAgIAkJCWVyciA9IDA7IC8qIG5vdCBvdXIg
ZmF1bHQhICovDQo+ICAgCQl9IGVsc2Ugew0KPiAgIAkJCXByX2VycigiV2FpdCByZXBvcnRlZCBp
bmNvbXBsZXRlIGFmdGVyIHRpbWVvdXRcbiIpOw0KDQpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQoNClJlZ2FyZHMsDQoNClR2cnRrbw0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
