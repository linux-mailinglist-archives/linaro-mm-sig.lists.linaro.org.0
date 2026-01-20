Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8EosNHAM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 956354119E5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:21:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0D3040519
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:21:03 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by lists.linaro.org (Postfix) with ESMTPS id 6B7503F774
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 11:33:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b="S7/4fekB";
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.221.49 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42fbc305914so4292197f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 03:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1768908812; x=1769513612; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DpRVaE1p7OSRBko9e1YVAbA+9mQStYl3vcnJTRiUMoQ=;
        b=S7/4fekBu2wfuDJ3OOA4nGmbp1RETb5iGeN9h14SVSK/hAyZ7FoebE7OOTAC03Q6As
         usIy8gu2RjOLtnpodJ6JuQ762iRNYLcC6t0DdbOPwVypdPMNPEiQ3clehSr27J9Ji6Ho
         Sn4RO3rI+iUeSP8zyiOFaf/aatvmMrzppl9+SMxS+uILMiNzz/fbmtaPDOLV4Z4R9opx
         6H8YgPLleGWUIwP8c0/MoC4uC+A3wNI2JoRTZHdkgWrj2+yGyaF3j8cdJba9GH7HcUN5
         X8S5ySZUGGT7tk8C7d1UMjVIZHoskKbxkzWdnwTowO4zDgFMTdqTAaTB2unC7eQEbaJa
         jQSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768908812; x=1769513612;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DpRVaE1p7OSRBko9e1YVAbA+9mQStYl3vcnJTRiUMoQ=;
        b=f1Qwj0Nh+k1tide9FyPI/pdwi45f8DOk8aGENMa/tGB8RVHMeHO43jE/s1xbrYi2qh
         qHXESoW9s3HWxbeuetn/3KV06Ti7zfTYxtjXu7yt27RZu62GyZzF1V9I3Ss+BIdwLPeX
         RCiMtEY/0xdtbkLVTNzIAQYCThUzUN9x8GXPK1Vkxtp8+iTbtZ5SOFfq9zOosvC5MLIB
         4gS2q8KVtGRsczpABeaU84SsUTrhElSHWSwwbigSNBaIXN6lBjEvgADR6TyJNF3nXjnv
         CSlEMLEnHpG5FsogiOJb4OrUOxXqOWgq2bRjZkqMJnQASN0qN0tPwhh0Erx75Xu9ZVar
         5ExQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAKA7+jLYuxXmQQLuWnEYCuWSl1XXEgXfOlzRpZcFdYfjhowU3hJnhyndA81Dq0x3SsJ0zUI+rVAwJSFND@lists.linaro.org
X-Gm-Message-State: AOJu0YxE9D3Qk9iHzCTJF2HIeIrEjs0VddAXNoEF/WkdEmS3acUww1jH
	6EFSz2DrZxNbCl4oPWjcuxbJJXx/FYollQBPZhB7rYcXCB62MnBYzAAQpPV/Af+TFxs=
X-Gm-Gg: AZuq6aKcwTQy53K4MECNYdhGR118nxNCjopwzme8HiU5+81+wYh6PpcoL4HnDU+O9lK
	7X1n9FGWn30ru9HqwrIWS66786RjdFVFgCUlwk/XWMVmgeH+xIML6xdFIKnLbVIg0aoUdYL1T0t
	YMUoFHhEqWH7wdoo7cOTi2oENHRgFQqHUGKYliRTVy7dF2hfK5djjX7Jvej1CxIVQwnFd2Vh3lP
	6rlcEXi3/TuWODG6nsdaPllV/vju55+mPH2+jBuezytWYFQadbP95xnWklCSKU90SxOkAgMqWIa
	zJqDiMFSZ8N9Bb+/8atPkBDUGPVyhO6FfNOrgMBUSdmWFpjBwKoj+WwEJ2T/ksmOM/751/XUAm9
	Wn3QNr3M6mu4wgfnjVemU9k+WVeZE0yDkbeSbtNq1DQwgxGoPjhajOBrtb5rZ8NKZiAnRbPSLOl
	rMBWPNvnhiD2w71BbJmXPx46BLXKbacW3w
X-Received: by 2002:a05:6000:1448:b0:430:ff8b:fdc2 with SMTP id ffacd0b85a97d-4358ff3a262mr2269276f8f.60.1768908811975;
        Tue, 20 Jan 2026 03:33:31 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921dddsm30028833f8f.6.2026.01.20.03.33.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 03:33:31 -0800 (PST)
Message-ID: <a73caf52-dc33-4dd5-b830-7d375ade3ad3@ursulin.net>
Date: Tue, 20 Jan 2026 11:33:30 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260120105655.7134-1-christian.koenig@amd.com>
 <20260120105655.7134-2-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260120105655.7134-2-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3AA3CWSCLU5XNNBWIHAXOWJXMKUJSKDL
X-Message-ID-Hash: 3AA3CWSCLU5XNNBWIHAXOWJXMKUJSKDL
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:12 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/9] dma-buf: add dma_fence_was_initialized function v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3AA3CWSCLU5XNNBWIHAXOWJXMKUJSKDL/>
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
	DATE_IN_PAST(1.00)[2068];
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
	NEURAL_SPAM(0.00)[0.158];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,ursulin.net:mid,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,igalia.com:email]
X-Rspamd-Queue-Id: 956354119E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAyMC8wMS8yMDI2IDEwOjU0LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBTb21lIGRy
aXZlciB1c2UgZmVuY2UtPm9wcyB0byB0ZXN0IGlmIGEgZmVuY2Ugd2FzIGluaXRpYWxpemVkIG9y
IG5vdC4NCj4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGlzIHV0aWxpemVzIGludGVybmFsIGJlaGF2
aW9yIG9mIHRoZSBkbWFfZmVuY2UNCj4gaW1wbGVtZW50YXRpb24uDQo+IA0KPiBTbyBiZXR0ZXIg
YWJzdHJhY3QgdGhhdCBpbnRvIGEgZnVuY3Rpb24uDQo+IA0KPiB2MjogdXNlIGEgZmxhZyBpbnN0
ZWFkIG9mIHRlc3RpbmcgZmVuY2UtPm9wcywgcmVuYW1lIHRoZSBmdW5jdGlvbiwgbW92ZQ0KPiAg
ICAgIHRvIHRoZSBiZWdpbm5pbmcgb2YgdGhlIHBhdGNoIHNldC4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gLS0tDQo+
ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jICAgICAgICAgICAgIHwgIDIgKy0NCj4gICBk
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfam9iLmMgfCAxMyArKysrKysrLS0tLS0t
DQo+ICAgZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jICAgICAgIHwgIDIgKy0NCj4g
ICBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oICAgICAgICAgICAgICAgfCAxNSArKysrKysrKysr
KysrKysNCj4gICA0IGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IGluZGV4IDIxYzVjMzBiNGYzNC4uYzlhMDM2YjBk
NTkyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+IEBAIC0xMDU0LDcgKzEwNTQsNyBAQCBfX2Rt
YV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2Zl
bmNlX29wcyAqb3BzLA0KPiAgIAlmZW5jZS0+bG9jayA9IGxvY2s7DQo+ICAgCWZlbmNlLT5jb250
ZXh0ID0gY29udGV4dDsNCj4gICAJZmVuY2UtPnNlcW5vID0gc2Vxbm87DQo+IC0JZmVuY2UtPmZs
YWdzID0gZmxhZ3M7DQo+ICsJZmVuY2UtPmZsYWdzID0gZmxhZ3MgfCBCSVQoRE1BX0ZFTkNFX0ZM
QUdfSU5JVElBTElaRURfQklUKTsNCj4gICAJZmVuY2UtPmVycm9yID0gMDsNCj4gICANCj4gICAJ
dHJhY2VfZG1hX2ZlbmNlX2luaXQoZmVuY2UpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2pvYi5jDQo+IGluZGV4IDBhMGRjYmYwNzk4ZC4uZDFlNzRkMDA1MGM3IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfam9iLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5jDQo+IEBAIC0yNzgsOSArMjc4
LDEwIEBAIHZvaWQgYW1kZ3B1X2pvYl9mcmVlX3Jlc291cmNlcyhzdHJ1Y3QgYW1kZ3B1X2pvYiAq
am9iKQ0KPiAgIAl1bnNpZ25lZCBpOw0KPiAgIA0KPiAgIAkvKiBDaGVjayBpZiBhbnkgZmVuY2Vz
IHdlcmUgaW5pdGlhbGl6ZWQgKi8NCj4gLQlpZiAoam9iLT5iYXNlLnNfZmVuY2UgJiYgam9iLT5i
YXNlLnNfZmVuY2UtPmZpbmlzaGVkLm9wcykNCj4gKwlpZiAoam9iLT5iYXNlLnNfZmVuY2UgJiYN
Cj4gKwkgICAgZG1hX2ZlbmNlX3dhc19pbml0aWFsaXplZCgmam9iLT5iYXNlLnNfZmVuY2UtPmZp
bmlzaGVkKSkNCj4gICAJCWYgPSAmam9iLT5iYXNlLnNfZmVuY2UtPmZpbmlzaGVkOw0KPiAtCWVs
c2UgaWYgKGpvYi0+aHdfZmVuY2UgJiYgam9iLT5od19mZW5jZS0+YmFzZS5vcHMpDQo+ICsJZWxz
ZSBpZiAoZG1hX2ZlbmNlX3dhc19pbml0aWFsaXplZCgmam9iLT5od19mZW5jZS0+YmFzZSkpDQo+
ICAgCQlmID0gJmpvYi0+aHdfZmVuY2UtPmJhc2U7DQo+ICAgCWVsc2UNCj4gICAJCWYgPSBOVUxM
Ow0KPiBAQCAtMjk3LDExICsyOTgsMTEgQEAgc3RhdGljIHZvaWQgYW1kZ3B1X2pvYl9mcmVlX2Ni
KHN0cnVjdCBkcm1fc2NoZWRfam9iICpzX2pvYikNCj4gICANCj4gICAJYW1kZ3B1X3N5bmNfZnJl
ZSgmam9iLT5leHBsaWNpdF9zeW5jKTsNCj4gICANCj4gLQlpZiAoam9iLT5od19mZW5jZS0+YmFz
ZS5vcHMpDQo+ICsJaWYgKGRtYV9mZW5jZV93YXNfaW5pdGlhbGl6ZWQoJmpvYi0+aHdfZmVuY2Ut
PmJhc2UpKQ0KPiAgIAkJZG1hX2ZlbmNlX3B1dCgmam9iLT5od19mZW5jZS0+YmFzZSk7DQo+ICAg
CWVsc2UNCj4gICAJCWtmcmVlKGpvYi0+aHdfZmVuY2UpOw0KPiAtCWlmIChqb2ItPmh3X3ZtX2Zl
bmNlLT5iYXNlLm9wcykNCj4gKwlpZiAoZG1hX2ZlbmNlX3dhc19pbml0aWFsaXplZCgmam9iLT5o
d192bV9mZW5jZS0+YmFzZSkpDQo+ICAgCQlkbWFfZmVuY2VfcHV0KCZqb2ItPmh3X3ZtX2ZlbmNl
LT5iYXNlKTsNCj4gICAJZWxzZQ0KPiAgIAkJa2ZyZWUoam9iLT5od192bV9mZW5jZSk7DQo+IEBA
IC0zMzUsMTEgKzMzNiwxMSBAQCB2b2lkIGFtZGdwdV9qb2JfZnJlZShzdHJ1Y3QgYW1kZ3B1X2pv
YiAqam9iKQ0KPiAgIAlpZiAoam9iLT5nYW5nX3N1Ym1pdCAhPSAmam9iLT5iYXNlLnNfZmVuY2Ut
PnNjaGVkdWxlZCkNCj4gICAJCWRtYV9mZW5jZV9wdXQoam9iLT5nYW5nX3N1Ym1pdCk7DQo+ICAg
DQo+IC0JaWYgKGpvYi0+aHdfZmVuY2UtPmJhc2Uub3BzKQ0KPiArCWlmIChkbWFfZmVuY2Vfd2Fz
X2luaXRpYWxpemVkKCZqb2ItPmh3X2ZlbmNlLT5iYXNlKSkNCj4gICAJCWRtYV9mZW5jZV9wdXQo
JmpvYi0+aHdfZmVuY2UtPmJhc2UpOw0KPiAgIAllbHNlDQo+ICAgCQlrZnJlZShqb2ItPmh3X2Zl
bmNlKTsNCj4gLQlpZiAoam9iLT5od192bV9mZW5jZS0+YmFzZS5vcHMpDQo+ICsJaWYgKGRtYV9m
ZW5jZV93YXNfaW5pdGlhbGl6ZWQoJmpvYi0+aHdfdm1fZmVuY2UtPmJhc2UpKQ0KPiAgIAkJZG1h
X2ZlbmNlX3B1dCgmam9iLT5od192bV9mZW5jZS0+YmFzZSk7DQo+ICAgCWVsc2UNCj4gICAJCWtm
cmVlKGpvYi0+aHdfdm1fZmVuY2UpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3F4
bC9xeGxfcmVsZWFzZS5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jDQo+IGlu
ZGV4IDdiM2M5YTYwMTZkYi4uMDZiMGIyYWE3OTUzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxf
cmVsZWFzZS5jDQo+IEBAIC0xNDYsNyArMTQ2LDcgQEAgcXhsX3JlbGVhc2VfZnJlZShzdHJ1Y3Qg
cXhsX2RldmljZSAqcWRldiwNCj4gICAJaWRyX3JlbW92ZSgmcWRldi0+cmVsZWFzZV9pZHIsIHJl
bGVhc2UtPmlkKTsNCj4gICAJc3Bpbl91bmxvY2soJnFkZXYtPnJlbGVhc2VfaWRyX2xvY2spOw0K
PiAgIA0KPiAtCWlmIChyZWxlYXNlLT5iYXNlLm9wcykgew0KPiArCWlmIChkbWFfZmVuY2Vfd2Fz
X2luaXRpYWxpemVkKCZyZWxlYXNlLT5iYXNlKSkgew0KPiAgIAkJV0FSTl9PTihsaXN0X2VtcHR5
KCZyZWxlYXNlLT5ib3MpKTsNCj4gICAJCXF4bF9yZWxlYXNlX2ZyZWVfbGlzdChyZWxlYXNlKTsN
Cj4gICANCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS5oDQo+IGluZGV4IGQ0YzkyZmQzNTA5Mi4uOWM0ZDI1Mjg5MjM5IDEw
MDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+ICsrKyBiL2luY2x1ZGUv
bGludXgvZG1hLWZlbmNlLmgNCj4gQEAgLTQ4LDYgKzQ4LDcgQEAgc3RydWN0IHNlcV9maWxlOw0K
PiAgICAqIGF0b21pYyBvcHMgKGJpdF8qKSwgc28gdGFraW5nIHRoZSBzcGlubG9jayB3aWxsIG5v
dCBiZSBuZWVkZWQgbW9zdA0KPiAgICAqIG9mIHRoZSB0aW1lLg0KPiAgICAqDQo+ICsgKiBETUFf
RkVOQ0VfRkxBR19JTklUSUFMSVpFRF9CSVQgLSBmZW5jZSB3YXMgaW5pdGlhbGl6ZWQNCj4gICAg
KiBETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQgLSBmZW5jZSBpcyBhbHJlYWR5IHNpZ25hbGVk
DQo+ICAgICogRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCAtIHRpbWVzdGFtcCByZWNvcmRl
ZCBmb3IgZmVuY2Ugc2lnbmFsaW5nDQo+ICAgICogRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05B
TF9CSVQgLSBlbmFibGVfc2lnbmFsaW5nIG1pZ2h0IGhhdmUgYmVlbiBjYWxsZWQNCj4gQEAgLTk4
LDYgKzk5LDcgQEAgc3RydWN0IGRtYV9mZW5jZSB7DQo+ICAgfTsNCj4gICANCj4gICBlbnVtIGRt
YV9mZW5jZV9mbGFnX2JpdHMgew0KPiArCURNQV9GRU5DRV9GTEFHX0lOSVRJQUxJWkVEX0JJVCwN
Cj4gICAJRE1BX0ZFTkNFX0ZMQUdfU0VRTk82NF9CSVQsDQo+ICAgCURNQV9GRU5DRV9GTEFHX1NJ
R05BTEVEX0JJVCwNCj4gICAJRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwNCj4gQEAgLTI2
Myw2ICsyNjUsMTkgQEAgdm9pZCBkbWFfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3JlZik7
DQo+ICAgdm9pZCBkbWFfZmVuY2VfZnJlZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7DQo+ICAg
dm9pZCBkbWFfZmVuY2VfZGVzY3JpYmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHN0cnVjdCBz
ZXFfZmlsZSAqc2VxKTsNCj4gICANCj4gKy8qKg0KPiArICogZG1hX2ZlbmNlX3dhc19pbml0aWFs
aXplZCAtIHRlc3QgaWYgZmVuY2Ugd2FzIGluaXRpYWxpemVkDQo+ICsgKiBAZmVuY2U6IGZlbmNl
IHRvIHRlc3QNCj4gKyAqDQo+ICsgKiBSZXR1cm46IFRydWUgaWYgZmVuY2Ugd2FzIGV2ZXIgaW5p
dGlhbGl6ZWQsIGZhbHNlIG90aGVyd2lzZS4gV29ya3MgY29ycmVjdGx5DQo+ICsgKiBvbmx5IHdo
ZW4gbWVtb3J5IGJhY2tpbmcgdGhlIGZlbmNlIHN0cnVjdHVyZSBpcyB6ZXJvIGluaXRpYWxpemVk
IG9uDQo+ICsgKiBhbGxvY2F0aW9uLg0KPiArICovDQo+ICtzdGF0aWMgaW5saW5lIGJvb2wgZG1h
X2ZlbmNlX3dhc19pbml0aWFsaXplZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gK3sNCj4g
KwlyZXR1cm4gZmVuY2UgJiYgdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfSU5JVElBTElaRURfQklU
LCAmZmVuY2UtPmZsYWdzKTsNCj4gK30NCj4gKw0KPiAgIC8qKg0KPiAgICAqIGRtYV9mZW5jZV9w
dXQgLSBkZWNyZWFzZXMgcmVmY291bnQgb2YgdGhlIGZlbmNlDQo+ICAgICogQGZlbmNlOiBmZW5j
ZSB0byByZWR1Y2UgcmVmY291bnQgb2YNCg0KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpZ2FsaWEuY29tPg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
