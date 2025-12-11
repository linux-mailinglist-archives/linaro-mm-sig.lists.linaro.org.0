Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDYVJPED4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E87F54112B9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BDA444C83
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:44:48 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id 870463F76F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 16:12:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=U8nQGVOD;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.208.45 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-640b0639dabso456012a12.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 08:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1765469541; x=1766074341; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LzVRfSKl/WN/EHJoZomti6kxNUqFfcV9bF9+XtrouJs=;
        b=U8nQGVODPMJqfkuUfr2EnnbJvApPLprHRJlHTo91AuCCLQ6B7fl0XAS64tYL0zpLkp
         xaeh2SRBF6kVcNklSgH+nWoZN8xf4pCi0s2fQCHQh+voRIfJ475f5GCVvTOLLLRNUPAf
         hK+bl5jwo4hlc/WbCcbBboKQYve5vsHlYJLv9jEYuwuJS5w2yBGqbe+s7vamI8VeirJc
         CJbrqLJruSS87QMzIP6cyxFuGyXGNOjIkb12yJsVe9tMedbs35Q5ZhjJudmLWkigh21I
         vGI6HA9yS3PSiXMlskI2L7t7FNDS9U8JABJ6PPQSvzqeNaRWspNyfwRKs3S0Q2RUt6Oh
         8gcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765469541; x=1766074341;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LzVRfSKl/WN/EHJoZomti6kxNUqFfcV9bF9+XtrouJs=;
        b=COYMjN+ipUmFGdfpX0h1Gky7cNjWyU9D35mpe5u3GKSUgHPUOevDq3VQSm4vTYvpj1
         sCVnSpbxc+NnNLm6j+Y5FFdJC58I0aEXCkS9xKQW8jBanS5gqdQhoEV8cHnfbFSOMzXH
         FKibTVs4Hbk8srlOdlLnBHElJRJHo2FCCc5DlmnQMRKOkIUqVxa23QwwVTB5YSw25cvU
         /PZe4328KEQUDZvW9CY9VT+bSfYTLydd+hv6tsO50Lwo33LKD8eQ9M+3+eXGPCs2RW6H
         CSiYLamQ5AquUVes1gJ4cnODfqcMH3cOhvRhjO/pDNL2jiHekjrpKUnMbLZGArSkvB58
         57Lw==
X-Forwarded-Encrypted: i=1; AJvYcCVuPtF0nQxZJQ64j4C9hucp2/oDFSxikBre/Xd3Wyid0U+yyHmq7SC59n9hF9B9Ho3HhkXb59LOFgkWGuws@lists.linaro.org
X-Gm-Message-State: AOJu0YzhycjJ2dbGWvgnQnW4r7sEVgtsxMYibVuaqHYFLrSiz95Kdivo
	hFhARiYt+qCrGsinCSx5WmS8fi3drCWlUOsKIl76drFWp/KSV0XwVjcElFIsWdOfwd4=
X-Gm-Gg: AY/fxX7QTclwyWwzXqEow/enegJqlp+yYpkUh9iM+qFP8Gr40E4hD1/81W51jYZl++s
	k24BMpUaWNep+fpsJ6+B0BGrNKUOS+AnBUny2amtdm8jRjQy0qbzLI3AG0JnH7JO7wHeQWFeNNX
	o+HXG/V02ZIZY/NzDszva8RWefsOtzE1uL8EYM9456+ZXWaGfcNBmgHbH903JK1qfek1n2umsNn
	xJsKe7EJsKJeZATgwh9+QO1sppB7QwlhxtELdyZwjwYZu53T9v8yAQx7P4jX4YKRfL+j5kI96m8
	EJgJliARzAhumnpNCHqJWAlj7UnivkKF3gVQIVyxKjxj5hgN+x5BH7Rsv2WZiA8++PT+t9A9U6x
	Wgvfk7ZQolfpBh+a85IzaZ6oe5ICEMbBwMmcp8ef2owTWxIpGsi8e0J3acHC6DrIVpfCQn+5XCR
	m8FL2RJcvx056Qjhy/5TeVrT4BOYvo
X-Google-Smtp-Source: AGHT+IEzn40vyyJWZkN36uGVUKT0iwcAejXCkbp60JNiUcN1OZjPYMx4GihuDMtetBql5Fe+Al12bQ==
X-Received: by 2002:a05:6402:42c8:b0:643:1659:7584 with SMTP id 4fb4d7f45d1cf-6496d5e577amr6111166a12.33.1765469541392;
        Thu, 11 Dec 2025 08:12:21 -0800 (PST)
Received: from [192.168.1.83] ([86.33.28.86])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64982131ed7sm2921480a12.32.2025.12.11.08.12.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 08:12:21 -0800 (PST)
Message-ID: <3276bb85-3bcc-4f55-95b1-4c05fe198d31@ursulin.net>
Date: Thu, 11 Dec 2025 17:12:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-16-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251211122407.1709-16-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6TA3IFLPFHNTDITQU6DQ24RMCDHKPBKW
X-Message-ID-Hash: 6TA3IFLPFHNTDITQU6DQ24RMCDHKPBKW
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:46 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 15/19] drm/amdgpu: independence for the amdgpu_userq_fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6TA3IFLPFHNTDITQU6DQ24RMCDHKPBKW/>
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
	DATE_IN_PAST(1.00)[3023];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ursulin.net];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,intel.com,linaro.org];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.189];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,ursulin.net:mid,amd.com:email]
X-Rspamd-Queue-Id: E87F54112B9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMS8xMi8yMDI1IDEzOjE2LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBUaGlzIGFs
bG93cyBhbWRncHVfdXNlcnFfZmVuY2VzIHRvIG91dGxpdmUgdGhlIGFtZGdwdSBtb2R1bGUuDQo+
DQo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCj4gLS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5j
ICAgICAgIHwgMTMgKy0tLS0NCj4gICAuLi4vZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91c2Vy
cV9mZW5jZS5jICAgfCA1NCArKysrLS0tLS0tLS0tLS0tLS0tDQo+ICAgLi4uL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuaCAgIHwgIDggLS0tDQo+ICAgMyBmaWxlcyBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCA2NCBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYw0KPiBpbmRleCAyZGZiZGRjZWY5YWIuLmYyMDYyOTdh
YWU4YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Ry
di5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYw0KPiBA
QCAtMzE1NSwxMSArMzE1NSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IGFtZGdwdV9pbml0KHZvaWQp
DQo+ICAgDQo+ICAgCXIgPSBhbWRncHVfc3luY19pbml0KCk7DQo+ICAgCWlmIChyKQ0KPiAtCQln
b3RvIGVycm9yX3N5bmM7DQo+IC0NCj4gLQlyID0gYW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWJfaW5p
dCgpOw0KPiAtCWlmIChyKQ0KPiAtCQlnb3RvIGVycm9yX2ZlbmNlOw0KPiArCQlyZXR1cm4gcjsN
Cj4gICANCj4gICAJRFJNX0lORk8oImFtZGdwdSBrZXJuZWwgbW9kZXNldHRpbmcgZW5hYmxlZC5c
biIpOw0KPiAgIAlhbWRncHVfcmVnaXN0ZXJfYXRweF9oYW5kbGVyKCk7DQo+IEBAIC0zMTc2LDEy
ICszMTcyLDYgQEAgc3RhdGljIGludCBfX2luaXQgYW1kZ3B1X2luaXQodm9pZCkNCj4gICANCj4g
ICAJLyogbGV0IG1vZHByb2JlIG92ZXJyaWRlIHZnYSBjb25zb2xlIHNldHRpbmcgKi8NCj4gICAJ
cmV0dXJuIHBjaV9yZWdpc3Rlcl9kcml2ZXIoJmFtZGdwdV9rbXNfcGNpX2RyaXZlcik7DQo+IC0N
Cj4gLWVycm9yX2ZlbmNlOg0KPiAtCWFtZGdwdV9zeW5jX2ZpbmkoKTsNCj4gLQ0KPiAtZXJyb3Jf
c3luYzoNCj4gLQlyZXR1cm4gcjsNCj4gICB9DQo+ICAgDQo+ICAgc3RhdGljIHZvaWQgX19leGl0
IGFtZGdwdV9leGl0KHZvaWQpDQo+IEBAIC0zMTkxLDcgKzMxODEsNiBAQCBzdGF0aWMgdm9pZCBf
X2V4aXQgYW1kZ3B1X2V4aXQodm9pZCkNCj4gICAJYW1kZ3B1X3VucmVnaXN0ZXJfYXRweF9oYW5k
bGVyKCk7DQo+ICAgCWFtZGdwdV9hY3BpX3JlbGVhc2UoKTsNCj4gICAJYW1kZ3B1X3N5bmNfZmlu
aSgpOw0KPiAtCWFtZGdwdV91c2VycV9mZW5jZV9zbGFiX2ZpbmkoKTsNCj4gICAJbW11X25vdGlm
aWVyX3N5bmNocm9uaXplKCk7DQo+ICAgCWFtZGdwdV94Y3BfZHJ2X3JlbGVhc2UoKTsNCj4gICB9
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFf
ZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91c2VycV9mZW5jZS5j
DQo+IGluZGV4IGViYTlmYjM1OTA0Ny4uYmIxOWY3Mjc3MGIwIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuYw0KPiBAQCAtMzMsMjYg
KzMzLDYgQEANCj4gICAjaW5jbHVkZSAiYW1kZ3B1X3VzZXJxX2ZlbmNlLmgiDQo+ICAgDQo+ICAg
c3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGFtZGdwdV91c2VycV9mZW5jZV9vcHM7
DQo+IC1zdGF0aWMgc3RydWN0IGttZW1fY2FjaGUgKmFtZGdwdV91c2VycV9mZW5jZV9zbGFiOw0K
PiAtDQo+IC1pbnQgYW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWJfaW5pdCh2b2lkKQ0KPiAtew0KPiAt
CWFtZGdwdV91c2VycV9mZW5jZV9zbGFiID0ga21lbV9jYWNoZV9jcmVhdGUoImFtZGdwdV91c2Vy
cV9mZW5jZSIsDQo+IC0JCQkJCQkgICAgc2l6ZW9mKHN0cnVjdCBhbWRncHVfdXNlcnFfZmVuY2Up
LA0KPiAtCQkJCQkJICAgIDAsDQo+IC0JCQkJCQkgICAgU0xBQl9IV0NBQ0hFX0FMSUdOLA0KPiAt
CQkJCQkJICAgIE5VTEwpOw0KPiAtCWlmICghYW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWIpDQo+IC0J
CXJldHVybiAtRU5PTUVNOw0KPiAtDQo+IC0JcmV0dXJuIDA7DQo+IC19DQo+IC0NCj4gLXZvaWQg
YW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWJfZmluaSh2b2lkKQ0KPiAtew0KPiAtCXJjdV9iYXJyaWVy
KCk7DQoNCldoYXQgd2FzIHRoaXMgcmN1X2JhcnJpZXIoKSBmb3I/IENhcmdvIGN1bHRlZCBvciBt
b3JlIHRvIGl0Pw0KPiAtCWttZW1fY2FjaGVfZGVzdHJveShhbWRncHVfdXNlcnFfZmVuY2Vfc2xh
Yik7DQo+IC19DQo+ICAgDQo+ICAgc3RhdGljIGlubGluZSBzdHJ1Y3QgYW1kZ3B1X3VzZXJxX2Zl
bmNlICp0b19hbWRncHVfdXNlcnFfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikNCj4gICB7DQo+
IEBAIC0yMjcsNyArMjA3LDcgQEAgdm9pZCBhbWRncHVfdXNlcnFfZmVuY2VfZHJpdmVyX3B1dChz
dHJ1Y3QgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlciAqZmVuY2VfZHJ2KQ0KPiAgIA0KPiAgIHN0
YXRpYyBpbnQgYW1kZ3B1X3VzZXJxX2ZlbmNlX2FsbG9jKHN0cnVjdCBhbWRncHVfdXNlcnFfZmVu
Y2UgKip1c2VycV9mZW5jZSkNCj4gICB7DQo+IC0JKnVzZXJxX2ZlbmNlID0ga21lbV9jYWNoZV9h
bGxvYyhhbWRncHVfdXNlcnFfZmVuY2Vfc2xhYiwgR0ZQX0FUT01JQyk7DQo+ICsJKnVzZXJxX2Zl
bmNlID0ga21hbGxvYyhzaXplb2YoKip1c2VycV9mZW5jZSksIEdGUF9BVE9NSUMpOw0KVGhpcyBH
RlBfQVRPTUlDIGlzIHN1Ym9wdGltYWwgZm9yIHN1cmUgYmVpbmcgb24gdGhlIGlvY3RsIHBhdGgu
IEl0IGlzIA0Kb3V0c2lkZSBvZiB0aGUgc2NvcGUgZm9yIHRoaXMgcGF0Y2gsIGJ1dCBvbmNlIG15
IHVzZXJxIGNsZWFudXAgcGF0Y2hlcyANCmdldCByZXZpZXdlZCBuZXh0IG9uIG15IGxpc3Qgd2Fz
IHRvIHRyeSBhbmQgdW5kZXJzdGFuZCB0aGlzLg0KPiAgIAlyZXR1cm4gKnVzZXJxX2ZlbmNlID8g
MCA6IC1FTk9NRU07DQo+ICAgfQ0KPiAgIA0KPiBAQCAtMjQzLDEyICsyMjMsMTEgQEAgc3RhdGlj
IGludCBhbWRncHVfdXNlcnFfZmVuY2VfY3JlYXRlKHN0cnVjdCBhbWRncHVfdXNlcm1vZGVfcXVl
dWUgKnVzZXJxLA0KPiAgIAlpZiAoIWZlbmNlX2RydikNCj4gICAJCXJldHVybiAtRUlOVkFMOw0K
PiAgIA0KPiAtCXNwaW5fbG9ja19pbml0KCZ1c2VycV9mZW5jZS0+bG9jayk7DQo+ICAgCUlOSVRf
TElTVF9IRUFEKCZ1c2VycV9mZW5jZS0+bGluayk7DQo+ICAgCWZlbmNlID0gJnVzZXJxX2ZlbmNl
LT5iYXNlOw0KPiAgIAl1c2VycV9mZW5jZS0+ZmVuY2VfZHJ2ID0gZmVuY2VfZHJ2Ow0KPiAgIA0K
PiAtCWRtYV9mZW5jZV9pbml0NjQoZmVuY2UsICZhbWRncHVfdXNlcnFfZmVuY2Vfb3BzLCAmdXNl
cnFfZmVuY2UtPmxvY2ssDQo+ICsJZG1hX2ZlbmNlX2luaXQ2NChmZW5jZSwgJmFtZGdwdV91c2Vy
cV9mZW5jZV9vcHMsIE5VTEwsDQo+ICAgCQkJIGZlbmNlX2Rydi0+Y29udGV4dCwgc2VxKTsNCj4g
ICANCj4gICAJYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9nZXQoZmVuY2VfZHJ2KTsNCj4gQEAg
LTMxOCwzNSArMjk3LDIyIEBAIHN0YXRpYyBib29sIGFtZGdwdV91c2VycV9mZW5jZV9zaWduYWxl
ZChzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPiAgIAlycHRyID0gYW1kZ3B1X3VzZXJxX2ZlbmNlX3Jl
YWQoZmVuY2VfZHJ2KTsNCj4gICAJd3B0ciA9IGZlbmNlLT5iYXNlLnNlcW5vOw0KPiAgIA0KPiAt
CWlmIChycHRyID49IHdwdHIpDQo+ICsJaWYgKHJwdHIgPj0gd3B0cikgew0KPiArCQlhbWRncHVf
dXNlcnFfZmVuY2VfZHJpdmVyX3B1dChmZW5jZS0+ZmVuY2VfZHJ2KTsNCg0KZmVuY2VfZHJ2IGlz
IGluIGEgbG9jYWwgYWxyZWFkeS4NCg0KPiArCQlmZW5jZS0+ZmVuY2VfZHJ2ID0gTlVMTDsNCg0K
YW1kZ3B1X3VzZXJxX2ZlbmNlX2dldF90aW1lbGluZV9uYW1lIGNvdWxkIG5vdyBvb3BzIHNvbWVo
b3c/DQoNCj4gKw0KPiArCQlrdmZyZWUoZmVuY2UtPmZlbmNlX2Rydl9hcnJheSk7DQo+ICsJCWZl
bmNlLT5mZW5jZV9kcnZfYXJyYXkgPSBOVUxMOw0KDQpOb3Qgc3VyZSBpZiB0aGlzIGlzIHNhZmUg
ZWl0aGVyLiBhbWRncHVfdXNlcnFfZmVuY2VfZHJpdmVyX3Byb2Nlc3MoKSANCmRyb3BzIGl0cyBy
ZWZlcmVuY2UgYmVmb3JlIGl0IHVubGlua3MgdGhlIGZlbmNlIGZyb20gdGhlIGxpc3QuIENhbiAN
CnNvbWVvbmUgZXh0ZXJuYWwgdHJpZ2dlciB0aGUgZmVuY2VfaXNfc2lnbmFsZWQgY2hlY2ssIGJl
Zm9yZSB0aGUgDQppbnRlcnJ1cHQgcHJvY2Vzc2luZyBraWNrcyBpbiwgd2hpY2ggd2lsbCBjbGVh
ciBmZW5jZV9kcnZfYXJyYXksIGFuZCBzbyANCmFtZGdwdV91c2VycV9mZW5jZV9kcml2ZXJfcHJv
Y2VzcygpIHdvdWxkIG9vcHM/DQoNClJlZ2FyZHMsDQoNClR2cnRrbw0KDQo+ICAgCQlyZXR1cm4g
dHJ1ZTsNCj4gKwl9DQo+ICAgDQo+ICAgCXJldHVybiBmYWxzZTsNCj4gICB9DQo+ICAgDQo+IC1z
dGF0aWMgdm9pZCBhbWRncHVfdXNlcnFfZmVuY2VfZnJlZShzdHJ1Y3QgcmN1X2hlYWQgKnJjdSkN
Cj4gLXsNCj4gLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IGNvbnRhaW5lcl9vZihyY3UsIHN0
cnVjdCBkbWFfZmVuY2UsIHJjdSk7DQo+IC0Jc3RydWN0IGFtZGdwdV91c2VycV9mZW5jZSAqdXNl
cnFfZmVuY2UgPSB0b19hbWRncHVfdXNlcnFfZmVuY2UoZmVuY2UpOw0KPiAtCXN0cnVjdCBhbWRn
cHVfdXNlcnFfZmVuY2VfZHJpdmVyICpmZW5jZV9kcnYgPSB1c2VycV9mZW5jZS0+ZmVuY2VfZHJ2
Ow0KPiAtDQo+IC0JLyogUmVsZWFzZSB0aGUgZmVuY2UgZHJpdmVyIHJlZmVyZW5jZSAqLw0KPiAt
CWFtZGdwdV91c2VycV9mZW5jZV9kcml2ZXJfcHV0KGZlbmNlX2Rydik7DQo+IC0NCj4gLQlrdmZy
ZWUodXNlcnFfZmVuY2UtPmZlbmNlX2Rydl9hcnJheSk7DQo+IC0Ja21lbV9jYWNoZV9mcmVlKGFt
ZGdwdV91c2VycV9mZW5jZV9zbGFiLCB1c2VycV9mZW5jZSk7DQo+IC19DQo+IC0NCj4gLXN0YXRp
YyB2b2lkIGFtZGdwdV91c2VycV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+
IC17DQo+IC0JY2FsbF9yY3UoJmYtPnJjdSwgYW1kZ3B1X3VzZXJxX2ZlbmNlX2ZyZWUpOw0KPiAt
fQ0KPiAtDQo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGFtZGdwdV91c2Vy
cV9mZW5jZV9vcHMgPSB7DQo+ICAgCS5nZXRfZHJpdmVyX25hbWUgPSBhbWRncHVfdXNlcnFfZmVu
Y2VfZ2V0X2RyaXZlcl9uYW1lLA0KPiAgIAkuZ2V0X3RpbWVsaW5lX25hbWUgPSBhbWRncHVfdXNl
cnFfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUsDQo+ICAgCS5zaWduYWxlZCA9IGFtZGdwdV91c2Vy
cV9mZW5jZV9zaWduYWxlZCwNCj4gLQkucmVsZWFzZSA9IGFtZGdwdV91c2VycV9mZW5jZV9yZWxl
YXNlLA0KPiAgIH07DQo+ICAgDQo+ICAgLyoqDQo+IEBAIC01NjAsNyArNTI2LDcgQEAgaW50IGFt
ZGdwdV91c2VycV9zaWduYWxfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0
YSwNCj4gICAJciA9IGFtZGdwdV91c2VycV9mZW5jZV9jcmVhdGUocXVldWUsIHVzZXJxX2ZlbmNl
LCB3cHRyLCAmZmVuY2UpOw0KPiAgIAlpZiAocikgew0KPiAgIAkJbXV0ZXhfdW5sb2NrKCZ1c2Vy
cV9tZ3ItPnVzZXJxX211dGV4KTsNCj4gLQkJa21lbV9jYWNoZV9mcmVlKGFtZGdwdV91c2VycV9m
ZW5jZV9zbGFiLCB1c2VycV9mZW5jZSk7DQo+ICsJCWtmcmVlKHVzZXJxX2ZlbmNlKTsNCj4gICAJ
CWdvdG8gcHV0X2dvYmpfd3JpdGU7DQo+ICAgCX0NCj4gICANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV91c2VycV9mZW5jZS5oIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3VzZXJxX2ZlbmNlLmgNCj4gaW5kZXggZDc2YWRkMmFmYzc3
Li42ZjA0NzgyZjNlYTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV91c2VycV9mZW5jZS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV91c2VycV9mZW5jZS5oDQo+IEBAIC0zMSwxMSArMzEsNiBAQA0KPiAgIA0KPiAgIHN0
cnVjdCBhbWRncHVfdXNlcnFfZmVuY2Ugew0KPiAgIAlzdHJ1Y3QgZG1hX2ZlbmNlIGJhc2U7DQo+
IC0JLyoNCj4gLQkgKiBUaGlzIGxvY2sgaXMgbmVjZXNzYXJ5IHRvIHN5bmNocm9uaXplIHRoZQ0K
PiAtCSAqIHVzZXJxdWV1ZSBkbWEgZmVuY2Ugb3BlcmF0aW9ucy4NCj4gLQkgKi8NCj4gLQlzcGlu
bG9ja190IGxvY2s7DQo+ICAgCXN0cnVjdCBsaXN0X2hlYWQgbGluazsNCj4gICAJdW5zaWduZWQg
bG9uZyBmZW5jZV9kcnZfYXJyYXlfY291bnQ7DQo+ICAgCXN0cnVjdCBhbWRncHVfdXNlcnFfZmVu
Y2VfZHJpdmVyICpmZW5jZV9kcnY7DQo+IEBAIC01OCw5ICs1Myw2IEBAIHN0cnVjdCBhbWRncHVf
dXNlcnFfZmVuY2VfZHJpdmVyIHsNCj4gICAJY2hhciB0aW1lbGluZV9uYW1lW1RBU0tfQ09NTV9M
RU5dOw0KPiAgIH07DQo+ICAgDQo+IC1pbnQgYW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWJfaW5pdCh2
b2lkKTsNCj4gLXZvaWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWJfZmluaSh2b2lkKTsNCj4gLQ0K
PiAgIHZvaWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9nZXQoc3RydWN0IGFtZGdwdV91c2Vy
cV9mZW5jZV9kcml2ZXIgKmZlbmNlX2Rydik7DQo+ICAgdm9pZCBhbWRncHVfdXNlcnFfZmVuY2Vf
ZHJpdmVyX3B1dChzdHJ1Y3QgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlciAqZmVuY2VfZHJ2KTsN
Cj4gICBpbnQgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9hbGxvYyhzdHJ1Y3QgYW1kZ3B1X2Rl
dmljZSAqYWRldiwNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
