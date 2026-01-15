Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KKrNiwM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FB6411971
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD8F3404F1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:19:55 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 532613F7FD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Jan 2026 08:07:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=qssiMKz5;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.48 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47ee4539adfso5459035e9.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 15 Jan 2026 00:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1768464449; x=1769069249; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8UBmo5KUk3xIXDKd62Sr8UlfE//oqO1e94w982O9P7k=;
        b=qssiMKz5inGm1IGefBZDOqbKs5WOo/DYD9VtSarwYl5xqIrH5vc8g47AKzBArqwLqi
         kCcTXOgkA9up2XP40jbP9gKgqRZJfRheAREuOo08mOClR2R1LDlfVmh+3UcdbtHGYGK1
         FbJgXcIkMtKAJ8s7Szb1YmFDbAjQqOeRM88sPkUTUbQ301l/c4/oF7PkbTJo6gSXB5Va
         +kaHymFtat0smt8WP0Alhqg3OBWZwHUaP6Zi/F5FVtXuH1K3S5N8iFJDEx1TL2aDtlP2
         Yq/NuP0/HyTjLBTF/q78bsZeHxHDxbT2Fjg5ZXrk3TcvWTdYKtt6gCFQ0fs56leImFCu
         YOOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768464449; x=1769069249;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8UBmo5KUk3xIXDKd62Sr8UlfE//oqO1e94w982O9P7k=;
        b=QJfmRnZEv74IZCcsX93SkqOTiuW13EMOvp99A1mqyvlXkqKrUCz2LfUDgZkMLIBABJ
         alXzICB2etVVfBqXT3t93LVrIwHu2cBNGRIjEiLRi4MJuw6TGwjF3A0FyUEA6HdbRFFW
         ZxO/nedTc9wFkuYcDUvr2XoDC7dhjHsRBFAzZVB3NPxTXJkreQHJysnOovEFxzuAxD7f
         SGI9T7dG03sd3DBlGS+WujpV0EfZmh7FmgCL3nLtI9QMi3Bl8fGpACk8lBv6HS1wZJwO
         ezg87OG2sXL2pLUi0Y/GTCL+HAwPrMdXu3HZw7372pVK9/0TzOY4qpmB4zE2bfBlRkR0
         6QIA==
X-Forwarded-Encrypted: i=1; AJvYcCWHGoDMDW0qbY8u65Ep69FignWse5vaO0EoHGCZnVmacpRQ5mnNsLjlBwW4F2V0lY/Dp9aulBGZomhCeSyS@lists.linaro.org
X-Gm-Message-State: AOJu0YzdtfAoJGGaxjy9gqtHTKAYeZg0glbiUHqO9RcU0wM14ICco52w
	6zLpt390jKpF/7Dy+QUszQNaRs2NtbAQfOzH+Iiv1KCgSYx/jOGVuy/jmmLqFFFTawdl8YaSDqn
	WnDUs
X-Gm-Gg: AY/fxX5paCFyFbYJfz8dwpwxkCzz0hiD+lFTW0NjE52ZblxMmXy3+tIG5oFWiSWnydf
	O/1SP8I4b03miKcOMlLhUkDwBkc9KUyWXNB11xXBTZCXeWwB4iXD7fNU6gjB3a21tK/1rzcoGC2
	5ZBOh+nImqW4w03EWTZP0PIc528wVLE/IeBF0ib53HTkktgsE8ei45u3dmFcOqlln7GmMKSv48J
	OjIrKkeqN5MTzMw0TWTKGniVhygW6YQ/tvDN4svRg4afQBxD30sYD72Zr10hxiGSqCiT140e5Mz
	rG2Baq0qYwldIXK1vYHtZQ/0uJD8gnBIrOJNVgruDy4cUyGjy8BO8CT5njjr19YEVxx9tUMpxop
	BOi7+K//qrLYoh5edgvfiUudaCuqjb3+riLMCJ2yYhtmIiv31pcDiyHRsWD+3j9s1gPUUPp92Ko
	E1PBqMfXGr9wrSxVpYnhgIYN4H2xg76lpy
X-Received: by 2002:a05:600c:3e8d:b0:475:e067:f23d with SMTP id 5b1f17b1804b1-47ee338a3f4mr64007495e9.25.1768464449245;
        Thu, 15 Jan 2026 00:07:29 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-434af64a6c0sm4260169f8f.5.2026.01.15.00.07.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 00:07:28 -0800 (PST)
Message-ID: <ad552640-3e39-4fac-bd1c-91280cdbd302@ursulin.net>
Date: Thu, 15 Jan 2026 08:07:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260113152125.47380-1-christian.koenig@amd.com>
 <20260113152125.47380-3-christian.koenig@amd.com>
 <b85f053e-e26c-4762-b7f3-d8b1a58a3a41@ursulin.net>
 <eb79bf68-a08f-49f3-b287-9e95831cee21@gmail.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <eb79bf68-a08f-49f3-b287-9e95831cee21@gmail.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4KA4ALXU2OZZC22A7WMJ7JHIWDVLU7VR
X-Message-ID-Hash: 4KA4ALXU2OZZC22A7WMJ7JHIWDVLU7VR
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:07 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/10] dma-buf: add dma_fence_is_initialized function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4KA4ALXU2OZZC22A7WMJ7JHIWDVLU7VR/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	NEURAL_SPAM(0.00)[0.341];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email]
X-Rspamd-Queue-Id: A2FB6411971
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxNC8wMS8yMDI2IDExOjM5LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxLzE0
LzI2IDEwOjUzLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+IFwNCj4+IE9uIDEzLzAxLzIwMjYg
MTU6MTYsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4gU29tZSBkcml2ZXIgdXNlIGZlbmNl
LT5vcHMgdG8gdGVzdCBpZiBhIGZlbmNlIHdhcyBpbml0aWFsaXplZCBvciBub3QuDQo+Pj4gVGhl
IHByb2JsZW0gaXMgdGhhdCB0aGlzIHV0aWxpemVzIGludGVybmFsIGJlaGF2aW9yIG9mIHRoZSBk
bWFfZmVuY2UNCj4+PiBpbXBsZW1lbnRhdGlvbi4NCj4+Pg0KPj4+IFNvIGJldHRlciBhYnN0cmFj
dCB0aGF0IGludG8gYSBmdW5jdGlvbi4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+PiAtLS0NCj4+PiAgwqAgZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5jIHwgMTMgKysrKysrKy0tLS0tLQ0K
Pj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmPCoMKgwqDCoMKgwqAgfMKg
IDIgKy0NCj4+PiAgwqAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfCAxMiArKysrKysrKysrKysNCj4+PiAgwqAgMyBmaWxlcyBjaGFuZ2VkLCAy
MCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9qb2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9qb2IuYw0KPj4+IGluZGV4IDBhMGRjYmYwNzk4ZC4uYjk3ZjkwYmJl
OGI5IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9q
b2IuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9qb2IuYw0K
Pj4+IEBAIC0yNzgsOSArMjc4LDEwIEBAIHZvaWQgYW1kZ3B1X2pvYl9mcmVlX3Jlc291cmNlcyhz
dHJ1Y3QgYW1kZ3B1X2pvYiAqam9iKQ0KPj4+ICDCoMKgwqDCoMKgIHVuc2lnbmVkIGk7DQo+Pj4g
IMKgIMKgwqDCoMKgwqAgLyogQ2hlY2sgaWYgYW55IGZlbmNlcyB3ZXJlIGluaXRpYWxpemVkICov
DQo+Pj4gLcKgwqDCoCBpZiAoam9iLT5iYXNlLnNfZmVuY2UgJiYgam9iLT5iYXNlLnNfZmVuY2Ut
PmZpbmlzaGVkLm9wcykNCj4+PiArwqDCoMKgIGlmIChqb2ItPmJhc2Uuc19mZW5jZSAmJg0KPj4+
ICvCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQoJmpvYi0+YmFzZS5zX2Zl
bmNlLT5maW5pc2hlZCkpDQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBmID0gJmpvYi0+YmFzZS5z
X2ZlbmNlLT5maW5pc2hlZDsNCj4+PiAtwqDCoMKgIGVsc2UgaWYgKGpvYi0+aHdfZmVuY2UgJiYg
am9iLT5od19mZW5jZS0+YmFzZS5vcHMpDQo+Pj4gK8KgwqDCoCBlbHNlIGlmIChkbWFfZmVuY2Vf
aXNfaW5pdGlhbGl6ZWQoJmpvYi0+aHdfZmVuY2UtPmJhc2UpKQ0KPj4+ICDCoMKgwqDCoMKgwqDC
oMKgwqAgZiA9ICZqb2ItPmh3X2ZlbmNlLT5iYXNlOw0KPj4+ICDCoMKgwqDCoMKgIGVsc2UNCj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGYgPSBOVUxMOw0KPj4+IEBAIC0yOTcsMTEgKzI5OCwxMSBA
QCBzdGF0aWMgdm9pZCBhbWRncHVfam9iX2ZyZWVfY2Ioc3RydWN0IGRybV9zY2hlZF9qb2IgKnNf
am9iKQ0KPj4+ICDCoCDCoMKgwqDCoMKgIGFtZGdwdV9zeW5jX2ZyZWUoJmpvYi0+ZXhwbGljaXRf
c3luYyk7DQo+Pj4gIMKgIC3CoMKgwqAgaWYgKGpvYi0+aHdfZmVuY2UtPmJhc2Uub3BzKQ0KPj4+
ICvCoMKgwqAgaWYgKGRtYV9mZW5jZV9pc19pbml0aWFsaXplZCgmam9iLT5od19mZW5jZS0+YmFz
ZSkpDQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KCZqb2ItPmh3X2ZlbmNl
LT5iYXNlKTsNCj4+PiAgwqDCoMKgwqDCoCBlbHNlDQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBr
ZnJlZShqb2ItPmh3X2ZlbmNlKTsNCj4+PiAtwqDCoMKgIGlmIChqb2ItPmh3X3ZtX2ZlbmNlLT5i
YXNlLm9wcykNCj4+PiArwqDCoMKgIGlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQoJmpvYi0+
aHdfdm1fZmVuY2UtPmJhc2UpKQ0KPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1
dCgmam9iLT5od192bV9mZW5jZS0+YmFzZSk7DQo+Pj4gIMKgwqDCoMKgwqAgZWxzZQ0KPj4+ICDC
oMKgwqDCoMKgwqDCoMKgwqAga2ZyZWUoam9iLT5od192bV9mZW5jZSk7DQo+Pj4gQEAgLTMzNSwx
MSArMzM2LDExIEBAIHZvaWQgYW1kZ3B1X2pvYl9mcmVlKHN0cnVjdCBhbWRncHVfam9iICpqb2Ip
DQo+Pj4gIMKgwqDCoMKgwqAgaWYgKGpvYi0+Z2FuZ19zdWJtaXQgIT0gJmpvYi0+YmFzZS5zX2Zl
bmNlLT5zY2hlZHVsZWQpDQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KGpv
Yi0+Z2FuZ19zdWJtaXQpOw0KPj4+ICDCoCAtwqDCoMKgIGlmIChqb2ItPmh3X2ZlbmNlLT5iYXNl
Lm9wcykNCj4+PiArwqDCoMKgIGlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQoJmpvYi0+aHdf
ZmVuY2UtPmJhc2UpKQ0KPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dCgmam9i
LT5od19mZW5jZS0+YmFzZSk7DQo+Pj4gIMKgwqDCoMKgwqAgZWxzZQ0KPj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqAga2ZyZWUoam9iLT5od19mZW5jZSk7DQo+Pj4gLcKgwqDCoCBpZiAoam9iLT5od192
bV9mZW5jZS0+YmFzZS5vcHMpDQo+Pj4gK8KgwqDCoCBpZiAoZG1hX2ZlbmNlX2lzX2luaXRpYWxp
emVkKCZqb2ItPmh3X3ZtX2ZlbmNlLT5iYXNlKSkNCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGRt
YV9mZW5jZV9wdXQoJmpvYi0+aHdfdm1fZmVuY2UtPmJhc2UpOw0KPj4+ICDCoMKgwqDCoMKgIGVs
c2UNCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGtmcmVlKGpvYi0+aHdfdm1fZmVuY2UpOw0KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCj4+PiBpbmRleCA3YjNjOWE2MDE2ZGIuLmIzOGFl
MGIyNWYzYyAxMDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNl
LmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9yZWxlYXNlLmMNCj4+PiBAQCAt
MTQ2LDcgKzE0Niw3IEBAIHF4bF9yZWxlYXNlX2ZyZWUoc3RydWN0IHF4bF9kZXZpY2UgKnFkZXYs
DQo+Pj4gIMKgwqDCoMKgwqAgaWRyX3JlbW92ZSgmcWRldi0+cmVsZWFzZV9pZHIsIHJlbGVhc2Ut
PmlkKTsNCj4+PiAgwqDCoMKgwqDCoCBzcGluX3VubG9jaygmcWRldi0+cmVsZWFzZV9pZHJfbG9j
ayk7DQo+Pj4gIMKgIC3CoMKgwqAgaWYgKHJlbGVhc2UtPmJhc2Uub3BzKSB7DQo+Pj4gK8KgwqDC
oCBpZiAoZG1hX2ZlbmNlX2lzX2luaXRpYWxpemVkKCZyZWxlYXNlLT5iYXNlKSkgew0KPj4+ICDC
oMKgwqDCoMKgwqDCoMKgwqAgV0FSTl9PTihsaXN0X2VtcHR5KCZyZWxlYXNlLT5ib3MpKTsNCj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgIHF4bF9yZWxlYXNlX2ZyZWVfbGlzdChyZWxlYXNlKTsNCj4+
PiAgwqAgZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oDQo+Pj4gaW5kZXggZWVhNjc0YWNkZmE2Li4zNzFhYThlY2YxOGUgMTAw
NjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4+ICsrKyBiL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+PiBAQCAtMjc0LDYgKzI3NCwxOCBAQCB2b2lkIGRtYV9m
ZW5jZV9yZWxlYXNlKHN0cnVjdCBrcmVmICprcmVmKTsNCj4+PiAgwqAgdm9pZCBkbWFfZmVuY2Vf
ZnJlZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7DQo+Pj4gIMKgIHZvaWQgZG1hX2ZlbmNlX2Rl
c2NyaWJlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSk7DQo+
Pj4gIMKgICsvKioNCj4+PiArICogZG1hX2ZlbmNlX2lzX2luaXRpYWxpemVkIC0gdGVzdCBpZiBm
ZW5jZSB3YXMgaW5pdGlhbGl6ZWQNCj4+PiArICogQGZlbmNlOiBmZW5jZSB0byB0ZXN0DQo+Pj4g
KyAqDQo+Pj4gKyAqIFJldHVybjogVHJ1ZSBpZiBmZW5jZSB3YXMgaW5pdGlhbGl6ZWQsIGZhbHNl
IG90aGVyd2lzZS4gV29ya3MgY29ycmVjdGx5IG9ubHkNCj4+PiArICogd2hlbiBtZW1vcnkgYmFj
a2luZyB0aGUgZmVuY2Ugc3RydWN0dXJlIGlzIHplcm8gaW5pdGlhbGl6ZWQgb24gYWxsb2NhdGlv
bi4NCj4+PiArICovDQo+Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfaW5pdGlh
bGl6ZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+Pj4gK3sNCj4+PiArwqDCoMKgIHJldHVy
biBmZW5jZSAmJiAhIWZlbmNlLT5vcHM7DQo+Pg0KPj4gVGhpcyBwYXRjaCBzaG91bGQgcHJlY2Vk
ZSB0aGUgb25lIGFkZGluZyBSQ1UgcHJvdGVjdGlvbiB0byBmZW5jZS0+b3BzLiBBbmQgdGhhdCBv
bmUgdGhlbiBuZWVkcyB0byBhZGQgYSByY3VfZGVyZWZlcmVuY2UoKSBoZXJlLg0KPiANCj4gR29v
ZCBwb2ludC4NCj4gDQo+PiBBdCB3aGljaCBwb2ludCBob3dldmVyIGl0IHdvdWxkIHN0YXJ0IGV4
cGxvZGluZz8NCj4gDQo+IFdoZW4gd2Ugc3RhcnQgc2V0dGluZyB0aGUgb3BzIHBvaW50ZXIgdG8g
TlVMTCBpbiB0aGUgbmV4dCBwYXRjaC4NCj4gDQo+PiBXaGljaCBhbHNvIG1lYW5zIHRoZSBuZXcg
QVBJIGlzIHJhY3kgYnkgZGVmaW5pdGlvbiBhbmQgY2FuIGdpdmUgZmFsc2UgcG9zaXRpdmVzIGlm
IGZlbmNlIHdvdWxkIGJlIHRvIGJlIHNpZ25hbGVkIGFzIHNvbWVvbmUgaXMgY2hlY2tpbmcuDQo+
IA0KPiBPaCwgdGhhdCBpcyBhIHJlYWxseSByZWFsbHkgZ29vZCBwb2ludC4gSSBoYXZlbid0IHRo
b3VnaHQgYWJvdXQgdGhhdCBiZWNhdXNlIGFsbCBjdXJyZW50IHVzZXJzIHdvdWxkIGNoZWNrIHRo
ZSBmZW5jZSBvbmx5IGFmdGVyIGl0IGlzIHNpZ25hbGVkLg0KPiANCj4+IEhtbS4uIGlzIHRoZSBu
ZXcgQVBJIHRvbyB3ZWFrLCBiZWluZyBhYmxlIHRvIG9ubHkgYmUgY2FsbGVkIHVuZGVyIHZlcnkg
bGltaXRlZCBjaXJjdW1zdGFuY2VzPw0KPiANCj4gWWVzLCBleGFjdGx5IHRoYXQuIEFsbCBjYWxs
ZXJzIHVzZSB0aGlzIG9ubHkgdG8gZGVjaWRlIG9uIHRoZSBjb3JyZWN0IGNsZWFudXAgcGF0aC4N
Cj4gDQo+IFNvIHRoZSBmZW5jZSBpcyBlaXRoZXIgZnVsbHkgc2lnbmFsZWQgb3Igd2FzIG5ldmVy
IGluaXRpYWxpemVkIGluIHRoZSBmaXJzdCBwbGFjZS4NCj4gDQo+PiBXb3VsZCBpdCBiZSBiZXR0
ZXIgdG8gc29sdmUgaXQgaW4gdGhlIGRyaXZlcnMgYnkgdHJhY2tpbmcgc3RhdGU/DQo+IA0KPiBU
aGUgYWx0ZXJuYXRpdmUgSSBoYWQgaW4gbWluZCB3YXMgdG8gdXNlIGFub3RoZXIgRE1BX0ZFTkNF
X0ZMQUdfLi4uIGZvciB0aGF0Lg0KPiANCj4gSSB3aWxsIHByb2JhYmx5IHVzZSB0aGF0IGFwcHJv
YWNoIGluc3RlYWQsIGp1c3QgdG8gbWFrZSBpdCBleHRyYSBkZWZlbnNpdmUuDQoNCkZsYWdzIHNv
dW5kcyBva2F5LWlzaC4gSSBtZWFuIGl0IGlzIGEgYml0IHJvdW5kYWJvdXQgdG8gdHJhY2sgdGhl
IHN0YXRlIA0KYW5kIGV4cG9ydCBBUEkgb25seSB1c2VmdWwgZm9yIHNvbWUgZHJpdmVyIGZsb3dz
LCBub3QgbGVhc3QgdGhhdCB6ZXJvIA0KYWxsb2Mgb2YgdGhlIG9iamVjdCBpdHNlbGYgaXMgbm90
IG1hbmRhdG9yeSB0byBiZWdpbiB3aXRoLCBidXQgSSBndWVzcyANCml0IGlzIHBhc3NhYmxlLg0K
DQpIbS4uLiBpdCBjb3VsZCBldmVuIGJlIHNvbHZlZCB3aXRoICJETUFfRkVOQ0VfRkxBR19VU0VS
X0JJVFMrMSIuIFNpbmNlIA0Kb25seSB0d28gZHJpdmVycyBuZWVkIHRoaXMgbWF5YmUgc29tZXRo
aW5nIHRvIGNvbnNpZGVyLg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
