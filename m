Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAMlJtQL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:18:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A26E4118E6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:18:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8BD844050B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:18:27 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id D698D40145
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 09:53:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b="uN/4kZ0E";
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.54 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47ee2715254so3630775e9.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 01:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1768384388; x=1768989188; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CHfttbzoZw/iZ4qOqblGFZkKrITTrqpiR476mkxJafo=;
        b=uN/4kZ0EsuMxw3Tb7RgqvZjHq08juZKa2fC6fAqhrVTN9z6y9fjQw6D6+XhOe44/s0
         RQ961ZMcTUE7Gd+4A6Oo3uQ2J534Et3+O9oFvJmhmifJ1rzEAXymfslpSFaIfGOGhol7
         VXLt99T7zK3TWF0CS5OwnVHHeyO3TCylPyb/x5KgA0yMEeu9W4prabob2BQbH86t+gzP
         qWc533Sla1/0oLG9Rz770tfKVAIAOuupSuzd06QtsysJcTvK7/JpiTADIPa7Tjbuk0ns
         kiXUBeJqpkB4/OfzjUV1XhgjpPAa5boJPEGunSf6/p1mjvqzO5DXFHFRcunEtIKuUPjV
         PJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768384388; x=1768989188;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CHfttbzoZw/iZ4qOqblGFZkKrITTrqpiR476mkxJafo=;
        b=iFQuVo33qSkvSACooksPKp2sUMuJcIkzKpRiATVzoMjU7qTHcfHNhiUvc4f68Zg+nH
         vpwTGooEV75X7fTEkXOuLMLTKl469Qf4VKlcsRs+uX2VdEYGpclqeoNylzo4vv2GZHoz
         +nlAJknc9uhDqiFlFGfAUP0AtGazzelBXPpHn4AzdjzlcOIjmbzyjW20brSujecyrhYt
         3Xi4mFKWWcqOs/m1lTxP6tV2TrrxbR7Zc7Yksg+MPBQ4wtbHa3JDmQIfZmvQF6LoL53o
         YmzbU8SUCYgzS9cdANjn2ilZA2BEjs5ra8Kno7UOGv6sW3SHLTdDw+l6eajp13zmPR02
         PjrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXE17UKyQ//Isz0OhDe5oqLiAnSGmc9bQOVXUEZZ1IXJihQ/xzLsseZyYP257G3BnKoxSIRwBZWG873u0O5@lists.linaro.org
X-Gm-Message-State: AOJu0Yxkm48kKDhWjYFjwKTUcWT33kMnFlfnt5sixT4tKooGcEk+xLYw
	S0yZ2iSbWzbxI0fU/tprqnhaGuviZOIpbPh+erNLf1PeNFKCgmkBOZ3CIj7khnvjD/U=
X-Gm-Gg: AY/fxX7zRektRbLinjJAf1GmP0hEfPEqlscd3Tr5uMDPs7P/Ciooe2l6XUSJZl++w3V
	jYGbc3i1FhpEoUCtUbP32/0CWT7eyw7/PiQJI1vhkQ4NoiuR8mPSOt2a3xb2Ba8aFkFvjmeJmVX
	vXGjlLRSk2dQHx9BcH7xKgfauG0dr7fVgoTfz7XF2P84ANDeRg9Bb6R2qoa3wxbSsLSe/sYH1RJ
	+nEiMQkZ4y0MES4Q94CU9RQBdUl8ZWTsPp3edekvCPJBY2+Bk1rSO6nkUMQxkQ8U5pWFdIp3fh0
	PoUAKN1nrkQlfkCsuhfNvOM88grbYSYEiRx9qwiS+VtT5oBbJfNjWjw9IVPC63+2QgmoIA7DAEh
	/0LeAnNLiCIXqKOfFADVBD0JFPnhTGU/axz/R7TJaifobQnx5U5qZ0ugYPbgbW3n34w0pVVGxYu
	z+aff7+b1NAFRayX0Mbcoxv2gyfI1Jb9G5
X-Received: by 2002:a05:600c:4fc9:b0:47d:5d27:2a7f with SMTP id 5b1f17b1804b1-47ee3372781mr23597125e9.26.1768384387765;
        Wed, 14 Jan 2026 01:53:07 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee2814548sm16420015e9.9.2026.01.14.01.53.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 01:53:07 -0800 (PST)
Message-ID: <b85f053e-e26c-4762-b7f3-d8b1a58a3a41@ursulin.net>
Date: Wed, 14 Jan 2026 09:53:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260113152125.47380-1-christian.koenig@amd.com>
 <20260113152125.47380-3-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260113152125.47380-3-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V24SLOQJFDQVNXTMCJBMJJ7H6LVMZCCK
X-Message-ID-Hash: V24SLOQJFDQVNXTMCJBMJJ7H6LVMZCCK
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:00 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/10] dma-buf: add dma_fence_is_initialized function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V24SLOQJFDQVNXTMCJBMJJ7H6LVMZCCK/>
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
	DATE_IN_PAST(1.00)[2214];
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
	NEURAL_SPAM(0.00)[0.194];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,ursulin.net:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7A26E4118E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

XA0KT24gMTMvMDEvMjAyNiAxNToxNiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4gU29tZSBk
cml2ZXIgdXNlIGZlbmNlLT5vcHMgdG8gdGVzdCBpZiBhIGZlbmNlIHdhcyBpbml0aWFsaXplZCBv
ciBub3QuDQo+IFRoZSBwcm9ibGVtIGlzIHRoYXQgdGhpcyB1dGlsaXplcyBpbnRlcm5hbCBiZWhh
dmlvciBvZiB0aGUgZG1hX2ZlbmNlDQo+IGltcGxlbWVudGF0aW9uLg0KPiANCj4gU28gYmV0dGVy
IGFic3RyYWN0IHRoYXQgaW50byBhIGZ1bmN0aW9uLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gICBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfam9iLmMgfCAxMyArKysrKysrLS0tLS0tDQo+
ICAgZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jICAgICAgIHwgIDIgKy0NCj4gICBp
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAgICAgICAgICAgICAgfCAxMiArKysrKysrKysrKysN
Cj4gICAzIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5j
IGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5jDQo+IGluZGV4IDBhMGRj
YmYwNzk4ZC4uYjk3ZjkwYmJlOGI5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfam9iLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2pvYi5jDQo+IEBAIC0yNzgsOSArMjc4LDEwIEBAIHZvaWQgYW1kZ3B1X2pvYl9mcmVl
X3Jlc291cmNlcyhzdHJ1Y3QgYW1kZ3B1X2pvYiAqam9iKQ0KPiAgIAl1bnNpZ25lZCBpOw0KPiAg
IA0KPiAgIAkvKiBDaGVjayBpZiBhbnkgZmVuY2VzIHdlcmUgaW5pdGlhbGl6ZWQgKi8NCj4gLQlp
ZiAoam9iLT5iYXNlLnNfZmVuY2UgJiYgam9iLT5iYXNlLnNfZmVuY2UtPmZpbmlzaGVkLm9wcykN
Cj4gKwlpZiAoam9iLT5iYXNlLnNfZmVuY2UgJiYNCj4gKwkgICAgZG1hX2ZlbmNlX2lzX2luaXRp
YWxpemVkKCZqb2ItPmJhc2Uuc19mZW5jZS0+ZmluaXNoZWQpKQ0KPiAgIAkJZiA9ICZqb2ItPmJh
c2Uuc19mZW5jZS0+ZmluaXNoZWQ7DQo+IC0JZWxzZSBpZiAoam9iLT5od19mZW5jZSAmJiBqb2It
Pmh3X2ZlbmNlLT5iYXNlLm9wcykNCj4gKwllbHNlIGlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6
ZWQoJmpvYi0+aHdfZmVuY2UtPmJhc2UpKQ0KPiAgIAkJZiA9ICZqb2ItPmh3X2ZlbmNlLT5iYXNl
Ow0KPiAgIAllbHNlDQo+ICAgCQlmID0gTlVMTDsNCj4gQEAgLTI5NywxMSArMjk4LDExIEBAIHN0
YXRpYyB2b2lkIGFtZGdwdV9qb2JfZnJlZV9jYihzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqc19qb2Ip
DQo+ICAgDQo+ICAgCWFtZGdwdV9zeW5jX2ZyZWUoJmpvYi0+ZXhwbGljaXRfc3luYyk7DQo+ICAg
DQo+IC0JaWYgKGpvYi0+aHdfZmVuY2UtPmJhc2Uub3BzKQ0KPiArCWlmIChkbWFfZmVuY2VfaXNf
aW5pdGlhbGl6ZWQoJmpvYi0+aHdfZmVuY2UtPmJhc2UpKQ0KPiAgIAkJZG1hX2ZlbmNlX3B1dCgm
am9iLT5od19mZW5jZS0+YmFzZSk7DQo+ICAgCWVsc2UNCj4gICAJCWtmcmVlKGpvYi0+aHdfZmVu
Y2UpOw0KPiAtCWlmIChqb2ItPmh3X3ZtX2ZlbmNlLT5iYXNlLm9wcykNCj4gKwlpZiAoZG1hX2Zl
bmNlX2lzX2luaXRpYWxpemVkKCZqb2ItPmh3X3ZtX2ZlbmNlLT5iYXNlKSkNCj4gICAJCWRtYV9m
ZW5jZV9wdXQoJmpvYi0+aHdfdm1fZmVuY2UtPmJhc2UpOw0KPiAgIAllbHNlDQo+ICAgCQlrZnJl
ZShqb2ItPmh3X3ZtX2ZlbmNlKTsNCj4gQEAgLTMzNSwxMSArMzM2LDExIEBAIHZvaWQgYW1kZ3B1
X2pvYl9mcmVlKHN0cnVjdCBhbWRncHVfam9iICpqb2IpDQo+ICAgCWlmIChqb2ItPmdhbmdfc3Vi
bWl0ICE9ICZqb2ItPmJhc2Uuc19mZW5jZS0+c2NoZWR1bGVkKQ0KPiAgIAkJZG1hX2ZlbmNlX3B1
dChqb2ItPmdhbmdfc3VibWl0KTsNCj4gICANCj4gLQlpZiAoam9iLT5od19mZW5jZS0+YmFzZS5v
cHMpDQo+ICsJaWYgKGRtYV9mZW5jZV9pc19pbml0aWFsaXplZCgmam9iLT5od19mZW5jZS0+YmFz
ZSkpDQo+ICAgCQlkbWFfZmVuY2VfcHV0KCZqb2ItPmh3X2ZlbmNlLT5iYXNlKTsNCj4gICAJZWxz
ZQ0KPiAgIAkJa2ZyZWUoam9iLT5od19mZW5jZSk7DQo+IC0JaWYgKGpvYi0+aHdfdm1fZmVuY2Ut
PmJhc2Uub3BzKQ0KPiArCWlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQoJmpvYi0+aHdfdm1f
ZmVuY2UtPmJhc2UpKQ0KPiAgIAkJZG1hX2ZlbmNlX3B1dCgmam9iLT5od192bV9mZW5jZS0+YmFz
ZSk7DQo+ICAgCWVsc2UNCj4gICAJCWtmcmVlKGpvYi0+aHdfdm1fZmVuY2UpOw0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jIGIvZHJpdmVycy9ncHUvZHJt
L3F4bC9xeGxfcmVsZWFzZS5jDQo+IGluZGV4IDdiM2M5YTYwMTZkYi4uYjM4YWUwYjI1ZjNjIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jDQo+IEBAIC0xNDYsNyArMTQ2LDcgQEAg
cXhsX3JlbGVhc2VfZnJlZShzdHJ1Y3QgcXhsX2RldmljZSAqcWRldiwNCj4gICAJaWRyX3JlbW92
ZSgmcWRldi0+cmVsZWFzZV9pZHIsIHJlbGVhc2UtPmlkKTsNCj4gICAJc3Bpbl91bmxvY2soJnFk
ZXYtPnJlbGVhc2VfaWRyX2xvY2spOw0KPiAgIA0KPiAtCWlmIChyZWxlYXNlLT5iYXNlLm9wcykg
ew0KPiArCWlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQoJnJlbGVhc2UtPmJhc2UpKSB7DQo+
ICAgCQlXQVJOX09OKGxpc3RfZW1wdHkoJnJlbGVhc2UtPmJvcykpOw0KPiAgIAkJcXhsX3JlbGVh
c2VfZnJlZV9saXN0KHJlbGVhc2UpOw0KPiAgIA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gaW5kZXggZWVhNjc0
YWNkZmE2Li4zNzFhYThlY2YxOGUgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiBAQCAtMjc0LDYgKzI3
NCwxOCBAQCB2b2lkIGRtYV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBrcmVmICprcmVmKTsNCj4gICB2
b2lkIGRtYV9mZW5jZV9mcmVlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsNCj4gICB2b2lkIGRt
YV9mZW5jZV9kZXNjcmliZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IHNlcV9maWxl
ICpzZXEpOw0KPiAgIA0KPiArLyoqDQo+ICsgKiBkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQgLSB0
ZXN0IGlmIGZlbmNlIHdhcyBpbml0aWFsaXplZA0KPiArICogQGZlbmNlOiBmZW5jZSB0byB0ZXN0
DQo+ICsgKg0KPiArICogUmV0dXJuOiBUcnVlIGlmIGZlbmNlIHdhcyBpbml0aWFsaXplZCwgZmFs
c2Ugb3RoZXJ3aXNlLiBXb3JrcyBjb3JyZWN0bHkgb25seQ0KPiArICogd2hlbiBtZW1vcnkgYmFj
a2luZyB0aGUgZmVuY2Ugc3RydWN0dXJlIGlzIHplcm8gaW5pdGlhbGl6ZWQgb24gYWxsb2NhdGlv
bi4NCj4gKyAqLw0KPiArc3RhdGljIGlubGluZSBib29sIGRtYV9mZW5jZV9pc19pbml0aWFsaXpl
ZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gK3sNCj4gKwlyZXR1cm4gZmVuY2UgJiYgISFm
ZW5jZS0+b3BzOw0KDQpUaGlzIHBhdGNoIHNob3VsZCBwcmVjZWRlIHRoZSBvbmUgYWRkaW5nIFJD
VSBwcm90ZWN0aW9uIHRvIGZlbmNlLT5vcHMuIA0KQW5kIHRoYXQgb25lIHRoZW4gbmVlZHMgdG8g
YWRkIGEgcmN1X2RlcmVmZXJlbmNlKCkgaGVyZS4NCg0KQXQgd2hpY2ggcG9pbnQgaG93ZXZlciBp
dCB3b3VsZCBzdGFydCBleHBsb2Rpbmc/IFdoaWNoIGFsc28gbWVhbnMgdGhlIA0KbmV3IEFQSSBp
cyByYWN5IGJ5IGRlZmluaXRpb24gYW5kIGNhbiBnaXZlIGZhbHNlIHBvc2l0aXZlcyBpZiBmZW5j
ZSANCndvdWxkIGJlIHRvIGJlIHNpZ25hbGVkIGFzIHNvbWVvbmUgaXMgY2hlY2tpbmcuDQoNCkht
bS4uIGlzIHRoZSBuZXcgQVBJIHRvbyB3ZWFrLCBiZWluZyBhYmxlIHRvIG9ubHkgYmUgY2FsbGVk
IHVuZGVyIHZlcnkgDQpsaW1pdGVkIGNpcmN1bXN0YW5jZXM/IFdvdWxkIGl0IGJlIGJldHRlciB0
byBzb2x2ZSBpdCBpbiB0aGUgZHJpdmVycyBieSANCnRyYWNraW5nIHN0YXRlPw0KDQpSZWdhcmRz
LA0KDQpUdnJ0a28NCg0KPiArfQ0KPiArDQo+ICAgLyoqDQo+ICAgICogZG1hX2ZlbmNlX3B1dCAt
IGRlY3JlYXNlcyByZWZjb3VudCBvZiB0aGUgZmVuY2UNCj4gICAgKiBAZmVuY2U6IGZlbmNlIHRv
IHJlZHVjZSByZWZjb3VudCBvZg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8t
bW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
