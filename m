Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BD5D1E67F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 12:31:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20E733F6FF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 11:31:00 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by lists.linaro.org (Postfix) with ESMTPS id 107A43F6FF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 11:30:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=MpWwOE1g;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.160.169 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-5013c1850bdso16261951cf.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 03:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768390253; x=1768995053; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cSdIXLKPTdi93G8U4R5SQcAFt9Fsb+Bvw+g/z/TUA64=;
        b=MpWwOE1get9jA4nicEbglV8WoDMjG8jduki44CqPTQR+YfOQOfDlhtK8eLajSukgyW
         rQDAaK4PfxX9qWOzC6l6whI/ChnjXLKD4UX0IMRkWYErDlSHKw14O0a7XiiLSySmCSpw
         7ulHmvzgqvtOyDzaf0znu3yC4RXLXr+2pRK3BV3lWZSJZreSLrfkMSPv4fWfruqovPq+
         421Scshb4Guc8FMJkGGOjjF/P9Wt+Crk9zjbb9MKaTfZ64Ts5sb+BZEm5xaU8I9zQtLz
         71klC+KD6lA+Uq+n0eOfhnQqFwvocMSm8xon12/eW8nYZBgJja1lVZTUWhzPkMe4eFqE
         p+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768390253; x=1768995053;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cSdIXLKPTdi93G8U4R5SQcAFt9Fsb+Bvw+g/z/TUA64=;
        b=E2sz8QocOYTH/POafGpO405tBoxgHbntIdKdXOEX3e/BdDCiIEPVGGLv5heuA7Mymy
         YOq0RgbOmC2bjNWSn3AGiSqvdC/21tTljvOWyn+DotfDpXpPw2F67LUWGtyHT3P9okba
         oPiOO1FZYxlg1Q7aHFfN//wvESxxWOPZrldmmiTz15Ilo+z8Gd4feFQ8B4rqh6TalCua
         IeIVaObz/mk4v1nkwWIUQKM3ue4Jg2tHhNKJc+JLFSbumcpurXja4V+LvQ8/PRGz9N38
         RI9g3gf1vldlSmov8qinvhjHqnmnLkbimpYnId4FY9h1Xftc8bC2ahdGf9aNarh4D+FG
         POcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEEat8dTD6m9VtjN0iRX0ML1vjKlICuyclVLtqddr7rUpLqs8bSAhFNvqgo3ksc+C+59rxK7MZ9sZ4hndk@lists.linaro.org
X-Gm-Message-State: AOJu0YxI/rv3rUfEbnsrOJ+c/G3eEkdG1uIskoca6mKCdKlmz2fwImPQ
	wjlFpNoE9at8kCseUevf/2g0yTRMaJGr+F6IPTVSQNP9bDNDTo9KrO4u+J0BfSaR
X-Gm-Gg: AY/fxX50/jWlk+uaBKPiRJpAi8SA/4SjWuMIggXL4p3Y9vfGQ+cspuwHxL3EYW07TzH
	syepnwE6Auj8aUedcVjhBDvQyhvAo3lTwRSK130ehkZK7jtLw/PtHQ6zVKOz/Ia59Po/GhBPPOt
	k9unT6yZXbjvZADvTHCotTKLa2e8gzAmTQKTtQQSU8PuIAMKSPlcbJiRl83IpmYfcAug4hthblW
	XPTRioSbrp+S9P6T+bUJTYBYuUy11x3AnrgDe2XPNoQ/d2CRi+AB6yuD9AzbID4ClDOT64gRacl
	2x24ZzAWwq+U6dY6fGqBBLRtQtduZa3LF1x8E9Q0c7YvUuheg3avTG6h3MWmmjI+AaJwPLuyAl7
	RBmUXJCFINtgozNSDw0z5Wqdn6EKx7Hgpp6vkq2zvASlObWeHpgfiOOpW5RSfRgkkZlhNXdbwXq
	aEAegeiDDuuk9ip+RNOlzjB7ZS2sbLcb/mYxb4KBynxao=
X-Received: by 2002:a05:622a:144a:b0:4f3:5eb4:61d1 with SMTP id d75a77b69052e-50148474022mr26435121cf.54.1768390253383;
        Wed, 14 Jan 2026 03:30:53 -0800 (PST)
Received: from [10.254.120.192] (mkmvpn.amd.com. [165.204.54.211])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50148eba456sm12429001cf.20.2026.01.14.03.30.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jan 2026 03:30:53 -0800 (PST)
Message-ID: <b9c8ec64-ed96-4eaf-9e30-a98dfdd26b5a@gmail.com>
Date: Wed, 14 Jan 2026 12:30:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, tursulin@ursulin.net, matthew.brost@intel.com,
 sumit.semwal@linaro.org
References: <20260113152125.47380-1-christian.koenig@amd.com>
 <20260113152125.47380-11-christian.koenig@amd.com>
 <c8c362d73d4f2cff9be685184186a6f3368939f1.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <c8c362d73d4f2cff9be685184186a6f3368939f1.camel@mailbox.org>
X-Rspamd-Queue-Id: 107A43F6FF
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.169:from];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.160.169:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[165.204.54.211:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: Z4LD3BUOSKBW2FV5CKNKMIZRJUN7BKBJ
X-Message-ID-Hash: Z4LD3BUOSKBW2FV5CKNKMIZRJUN7BKBJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/10] drm/sched: use inline locks for the drm-sched-fence v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Z4LD3BUOSKBW2FV5CKNKMIZRJUN7BKBJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xMy8yNiAxNzoxMiwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBPbiBUdWUsIDIwMjYt
MDEtMTMgYXQgMTY6MTYgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBVc2luZyB0
aGUgaW5saW5lIGxvY2sgaXMgbm93IHRoZSByZWNvbW1lbmRlZCB3YXkgZm9yIGRtYV9mZW5jZSBp
bXBsZW1lbnRhdGlvbnMuDQo+Pg0KPj4gRm9yIHRoZSBzY2hlZHVsZXIgZmVuY2UgdXNlIHRoZSBp
bmxpbmUgbG9jayBmb3IgdGhlIHNjaGVkdWxlZCBmZW5jZSBwYXJ0DQo+PiBhbmQgdGhlbiB0aGUg
bG9jayBmcm9tIHRoZSBzY2hlZHVsZWQgZmVuY2UgYXMgZXh0ZXJuYWwgbG9jayBmb3IgdGhlIGZp
bmlzaGVkIGZlbmNlLg0KPj4NCj4+IFRoaXMgd2F5IHRoZXJlIGlzIG5vIGZ1bmN0aW9uYWwgZGlm
ZmVyZW5jZSwgZXhjZXB0IGZvciBzYXZpbmcgdGhlIHNwYWNlDQo+PiBmb3IgdGhlIHNlcGFyYXRl
IGxvY2suDQo+Pg0KPj4gdjI6IHJlLXdvcmsgdGhlIHBhdGNoIHRvIGF2b2lkIGFueSBmdW5jdGlv
bmFsIGRpZmZlcmVuY2UNCj4gDQo+ICpjb3VnaCBjb3VnaCoNCj4gDQo+Pg0KPj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gLS0t
DQo+PiDCoGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyB8IDYgKysrLS0t
DQo+PiDCoGluY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8IDQgLS0tLQ0KPj4gwqAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9z
Y2hlZF9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jDQo+
PiBpbmRleCA3MjRkNzc2OTQyNDYuLjExMjY3NzIzMWY5YSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3NjaGVkdWxlci9zY2hlZF9mZW5jZS5jDQo+PiBAQCAtMjE3LDcgKzIxNyw2IEBAIHN0cnVj
dCBkcm1fc2NoZWRfZmVuY2UgKmRybV9zY2hlZF9mZW5jZV9hbGxvYyhzdHJ1Y3QgZHJtX3NjaGVk
X2VudGl0eSAqZW50aXR5LA0KPj4gwqANCj4+IMKgCWZlbmNlLT5vd25lciA9IG93bmVyOw0KPj4g
wqAJZmVuY2UtPmRybV9jbGllbnRfaWQgPSBkcm1fY2xpZW50X2lkOw0KPj4gLQlzcGluX2xvY2tf
aW5pdCgmZmVuY2UtPmxvY2spOw0KPj4gwqANCj4+IMKgCXJldHVybiBmZW5jZTsNCj4+IMKgfQ0K
Pj4gQEAgLTIzMCw5ICsyMjksMTAgQEAgdm9pZCBkcm1fc2NoZWRfZmVuY2VfaW5pdChzdHJ1Y3Qg
ZHJtX3NjaGVkX2ZlbmNlICpmZW5jZSwNCj4+IMKgCWZlbmNlLT5zY2hlZCA9IGVudGl0eS0+cnEt
PnNjaGVkOw0KPj4gwqAJc2VxID0gYXRvbWljX2luY19yZXR1cm4oJmVudGl0eS0+ZmVuY2Vfc2Vx
KTsNCj4+IMKgCWRtYV9mZW5jZV9pbml0KCZmZW5jZS0+c2NoZWR1bGVkLCAmZHJtX3NjaGVkX2Zl
bmNlX29wc19zY2hlZHVsZWQsDQo+PiAtCQnCoMKgwqDCoMKgwqAgJmZlbmNlLT5sb2NrLCBlbnRp
dHktPmZlbmNlX2NvbnRleHQsIHNlcSk7DQo+PiArCQnCoMKgwqDCoMKgwqAgTlVMTCwgZW50aXR5
LT5mZW5jZV9jb250ZXh0LCBzZXEpOw0KPj4gwqAJZG1hX2ZlbmNlX2luaXQoJmZlbmNlLT5maW5p
c2hlZCwgJmRybV9zY2hlZF9mZW5jZV9vcHNfZmluaXNoZWQsDQo+PiAtCQnCoMKgwqDCoMKgwqAg
JmZlbmNlLT5sb2NrLCBlbnRpdHktPmZlbmNlX2NvbnRleHQgKyAxLCBzZXEpOw0KPj4gKwkJwqDC
oMKgwqDCoMKgIGRtYV9mZW5jZV9zcGlubG9jaygmZmVuY2UtPnNjaGVkdWxlZCksDQo+IA0KPiBJ
IHRoaW5rIHdoaWxlIHlvdSBhcmUgY29ycmVjdCB0aGF0IHRoaXMgaXMgbm8gZnVuY3Rpb25hbCBk
aWZmZXJlbmNlLCBpdA0KPiBpcyBzdGlsbCBhIGJhZCBpZGVhIHdoaWNoIHZpb2xhdGVzIHRoZSBl
bnRpcmUgaWRlYSBvZiB5b3VyIHNlcmllczoNCj4gDQo+IEFsbCBmZW5jZXMgYXJlIG5vdyBpbmRl
cGVuZGVudCBmcm9tIGVhY2ggb3RoZXIgYW5kIHRoZSBmZW5jZSBjb250ZXh0IOKAkw0KPiBleGNl
cHQgZm9yIHRob3NlIHR3by4NCj4gDQo+IFNvbWUgZmVuY2VzIGFyZSBtb3JlIGVxdWFsIHRoYW4g
b3RoZXJzIDspDQoNClllYWgsIEkgd2FzIGdvaW5nIGJhY2sgYW5kIGZvcnRoIG9uY2UgbW9yZSBp
ZiBJIHNob3VsZCBrZWVwIHRoaXMgcGF0Y2ggYXQgYWxsIG9yIGp1c3QgZHJvcCBpdC4NCg0KPiBC
eSBpbXBsZW1lbnRpbmcgdGhpcywgeW91IHdvdWxkIGFsc28gc2hvdyB0byBwZW9wbGUgYnJvd3Np
bmcgdGhlIGNvZGUNCj4gdGhhdCBpdCBjYW4gYmUgYSBnb29kIGlkZWEgb3IgY2FuIGJlIGRvbmUg
dG8gaGF2ZSBmZW5jZXMgc2hhcmUgbG9ja3MuDQo+IERvIHlvdSB3YW50IHRoYXQ/DQoNCkdvb2Qg
cXVlc3Rpb24uIEZvciBhbG1vc3QgYWxsIGNhc2VzIHdlIGRvbid0IHdhbnQgdGhpcywgYnV0IG9u
Y2UgbW9yZSB0aGUgc2NoZWR1bGVyIGlzIHNwZWNpYWwuDQoNCkluIHRoZSBzY2hlZHVsZXIgd2Ug
aGF2ZSB0d28gZmVuY2VzIGluIG9uZSwgdGhlIHNjaGVkdWxlZCBvbmUgYW5kIHRoZSBmaW5pc2hl
ZCBvbmUuDQoNClNvIGhlcmUgaXQgdGVjaG5pY2FsbHkgbWFrZXMgc2Vuc2UgdG8gaGF2ZSB0aGlz
IGNvbnN0cnVjdCB0byBiZSBkZWZlbnNpdmUuDQoNCkJ1dCBvbiB0aGUgb3RoZXIgaGFuZCBpdCBo
YXMgbm8gcHJhY3RpY2FsIHZhbHVlIGJlY2F1c2UgaXQgc3RpbGwgZG9lc24ndCBhbGxvdyB1cyB0
byB1bmxvYWQgdGhlIHNjaGVkdWxlciBtb2R1bGUuIFdlIHdvdWxkIG5lZWQgYSBtdWNoIHdpZGVy
IHJld29yayBmb3IgYmVpbmcgYWJsZSB0byBkbyB0aGF0Lg0KDQpTbyBtYXliZSBJIHNob3VsZCBq
dXN0IHJlYWxseSBkcm9wIHRoaXMgcGF0Y2ggb3IgYXQgbGVhc3Qga2VlcCBpdCBiYWNrIHVudGls
IHdlIGhhZCB0aW1lIHRvIGZpZ3VyZSBvdXQgd2hhdCB0aGUgbmV4dCBzdGVwcyBhcmUuDQoNCj4g
QXMgZmFyIGFzIEkgaGF2ZSBsZWFybmVkIGZyb20geW91IGFuZCBvdXIgZGlzY3Vzc2lvbnMsIHRo
YXQgd291bGQgYmUgYQ0KPiB2ZXJ5IGJvbWJhc3RpYyB2aW9sYXRpb24gb2YgdGhlIHNhY3JlZCAi
ZG1hLWZlbmNlLXJ1bGVzIi4NCg0KV2VsbCB1c2luZyB0aGUgaW5saW5lIGZlbmNlIGlzICJvbmx5
IiBhIHN0cm9uZyByZWNvbW1lbmRhdGlvbi4gSXQncyBub3QgYXMgaGVhdnkgYXMgdGhlIHNpZ25h
bGluZyBydWxlcyBiZWNhdXNlIHdoZW4geW91IG1lc3MgdXAgdGhvc2UgeW91IGNhbiBlYXNpbHkg
a2lsbCB0aGUgd2hvbGUgc3lzdGVtLg0KDQo+IEkgYmVsaWV2ZSBpdCdzIGRlZmluaXRlbHkgd29y
dGggc2FjcmlmaWNpbmcgc29tZSBieXRlcyBzbyB0aGF0IHRob3NlDQo+IHR3byBmZW5jZXMgZ2V0
IGZ1bGx5IGRlY291cGxlZC4gV2hvIHdpbGwgaGF2ZSBpdCBvbiB0aGVpciByYWRhciB0aGF0DQo+
IHRoZXkgYXJlIHNwZWNpYWw/IFRoaW5rIGFib3V0IGZ1dHVyZSByZXdvcmtzLg0KDQpUaGlzIGRv
ZXNuJ3QgZXZlbiBzYXZlIGFueSBieXRlcywgbXkgdGhpbmtpbmcgd2FzIG1vcmUgdGhhdCB0aGlz
IGlzIHRoZSBtb3JlIGRlZmVuc2l2ZSBhcHByb2FjaCBzaG91bGQgYW55Ym9keSB1c2UgdGhlIHNw
aW5sb2NrIHBvaW50ZXIgZnJvbSB0aGUgc2NoZWR1bGVyIGZlbmNlIHRvIGRvIHNvbWUgbG9ja2lu
Zy4NCg0KPiBCZXNpZGVzIHRoYXQsIG5vIG9iamVjdGlvbnMgZnJvbSBteSBzaWRlLg0KDQpUaGFu
a3MsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IA0KPiBQLg0KPiANCj4+ICsJCcKgwqDCoMKgwqDCoCBl
bnRpdHktPmZlbmNlX2NvbnRleHQgKyAxLCBzZXEpOw0KPj4gwqB9DQo+PiDCoA0KPj4gwqBtb2R1
bGVfaW5pdChkcm1fc2NoZWRfZmVuY2Vfc2xhYl9pbml0KTsNCj4+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9ncHVfc2NoZWR1bGVyLmggYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgNCj4+
IGluZGV4IDc4ZTA3YzI1MDdjNy4uYWQzNzA0Njg1MTYzIDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVk
ZS9kcm0vZ3B1X3NjaGVkdWxlci5oDQo+PiArKysgYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVy
LmgNCj4+IEBAIC0yOTcsMTAgKzI5Nyw2IEBAIHN0cnVjdCBkcm1fc2NoZWRfZmVuY2Ugew0KPj4g
wqDCoMKgwqDCoMKgwqDCoMKgICogYmVsb25ncyB0by4NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAq
Lw0KPj4gwqAJc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyCSpzY2hlZDsNCj4+IC3CoMKgwqDCoMKg
wqDCoCAvKioNCj4+IC3CoMKgwqDCoMKgwqDCoMKgICogQGxvY2s6IHRoZSBsb2NrIHVzZWQgYnkg
dGhlIHNjaGVkdWxlZCBhbmQgdGhlIGZpbmlzaGVkIGZlbmNlcy4NCj4+IC3CoMKgwqDCoMKgwqDC
oMKgICovDQo+PiAtCXNwaW5sb2NrX3QJCQlsb2NrOw0KPj4gwqDCoMKgwqDCoMKgwqDCoCAvKioN
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAqIEBvd25lcjogam9iIG93bmVyIGZvciBkZWJ1Z2dpbmcN
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
