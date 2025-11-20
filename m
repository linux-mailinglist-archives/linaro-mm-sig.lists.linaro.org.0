Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CazOCL/4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:18 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 729B5410A56
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 743A2404DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:24:17 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 882643F8FD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 14:17:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=QCCv9tyd;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.53 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so6616665e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 06:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1763648244; x=1764253044; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CXBH8LKXAoztnmU0gR6y1RS7gCB6+Ux7CKJn5h1WDCY=;
        b=QCCv9tydaPEjnDC2xnm31ig4VojqFtwf+qJLO8kc8Kbohr9wCBE9MvvJloK/96oB+O
         1F05KVLq2D2OTzgu27VtEsmm5kSzdRCmAt39HoaA3MQITNI1mgG2YFhotbceiLSzFpui
         6QoFqpf4RlZyEIpAkoshRm/i8+0Mi5qLOAN6oAQduUrAAf4f4EgY/v5zbUZ9NCvhHa9Q
         QZoNRl4pMVoHVwKM4HVz5stk1DK1ranXKocqehqUU9bi/+9BAECxorOzRJR7kssLIUBZ
         hjGa5nsOEFayf0mXgJ/ThAHpUJrFwfjbZcOz8ta5xk9mRMqPUni7czM8NL7GvXNSbUe4
         csbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763648244; x=1764253044;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CXBH8LKXAoztnmU0gR6y1RS7gCB6+Ux7CKJn5h1WDCY=;
        b=dvMOwz0gjv4KaOEwb6oopbL0UDYR1/wfDHFAHFs/xcoJPv/gwm2DHBMlPTFddE/WTg
         7buK1zLQPHhx+lpGWViGetqelBNKJcyzLjQPzYxbBdDWYzF0qiI6rwkhAHUOWrUIouVA
         UA7DZysgCXpRGOunEywue/hIAzL18pK2Xnj7jmHVDHs4q33aULOnGfW9PKtp7pfZjkNP
         i7HYx385esRvIdYi5fyItducCWH+L2P/SymhdDGwHEhcaBOWFPy0iy6dVg6fp3oSGTxZ
         6o31B2wUgFBY4KYCgyZzwTqBaX9evj1Wb2szg2UiiwEqiY9X/fmixCY9O1bOn6Lm4V+S
         3ILg==
X-Forwarded-Encrypted: i=1; AJvYcCU2+H8WvYISsAs/VkSQ/gqfYvu2sb8zhzPLL230iwiJpq27ix7oxg84vxNQAGi5KWHEZMafQKCKsXybZrUJ@lists.linaro.org
X-Gm-Message-State: AOJu0YwTYFJzeYy656xKkoMBM6oPkUgRvYo2G8hVApwIk5qjGbLBiYCh
	ewercUWjQzuqoYAxamXEzkvL2R1xZrtOm2cnqUBsG8vDe9rfoDjdycLbfRxATfEyAzw=
X-Gm-Gg: ASbGncskCONIl1YVWiNywP7vcXacW1ShVo1uQbZlcnDRiFmnUTr6zvDVDFZ4MqpTezY
	rjSBikitrnEjXDHXE/sknndl5eKWSwzVJ6jSHBky/VJAOfwuSyZT6wL5vBDN7NFWW1zRO24yF2u
	VNTv4h//S9rNp83bO8TYXvvcLz3qR1xCcfI5bcYAjve6z+8UkRDMPD7MVr1OxyOUuL1vI1+r8DO
	8k/TKrA8KB4eLjTY0JAryXZd2bKsikvZVcN33XFlzc9s7SdHtYT7QCd8VVRlwootsPcDte4QS2U
	tw/WOM/A0VpziRX7nrjG267xiqi+0AqMcLl1hVp64l/p1MwGiySxTqCNrXFOJtG8VB1oKXzVfb3
	0pftcC/3T/nk40wK3QufI1wKgIjFUVbGsN3JmHwo+sBWK6Le8UTEr8jcScdO+2Q1qV7MbWiCSXP
	7zvRwEVTc0jKBuY120kOWNDaS6Jvs9YWsG
X-Google-Smtp-Source: AGHT+IHjZqvTkkmRZ8Ij302pTC794n7WQdn7xGg0iWq0ORbFykU/+7LM6vc6fC7DhyZogpe/qnQw/Q==
X-Received: by 2002:a05:600c:3553:b0:477:55ce:f3c3 with SMTP id 5b1f17b1804b1-477babc1f61mr20645215e9.5.1763648244298;
        Thu, 20 Nov 2025 06:17:24 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82d8251sm49652785e9.6.2025.11.20.06.17.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 06:17:23 -0800 (PST)
Message-ID: <805c7537-7d75-4eb0-84ae-bad7064ff166@ursulin.net>
Date: Thu, 20 Nov 2025 14:17:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-9-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251113145332.16805-9-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ND566RQ5JLMMYVMTDYVFQ7VPG233FRCX
X-Message-ID-Hash: ND566RQ5JLMMYVMTDYVFQ7VPG233FRCX
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:05 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 08/18] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ND566RQ5JLMMYVMTDYVFQ7VPG233FRCX/>
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
	DATE_IN_PAST(1.00)[3529];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,ffwll.ch,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.088];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 729B5410A56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMy8xMS8yMDI1IDE0OjUxLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBVc2luZyB0
aGUgaW5saW5lIGxvY2sgaXMgbm93IHRoZSByZWNvbW1lbmRlZCB3YXkgZm9yIGRtYV9mZW5jZSBp
bXBsZW1lbnRhdGlvbnMuDQo+IA0KPiBTbyB1c2UgdGhpcyBhcHByb2FjaCBmb3IgdGhlIHNjaGVk
dWxlciBmZW5jZXMgYXMgd2VsbCBqdXN0IGluIGNhc2UgaWYNCj4gYW55Ym9keSB1c2VzIHRoaXMg
YXMgYmx1ZXByaW50IGZvciBpdHMgb3duIGltcGxlbWVudGF0aW9uLg0KPiANCj4gQWxzbyBzYXZl
cyBhYm91dCA0IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IC0t
LQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyB8IDcgKysrLS0t
LQ0KPiAgIGluY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCAgICAgICAgICAgICB8IDQgLS0tLQ0K
PiAgIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyBi
L2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPiBpbmRleCAwOGNjYmRl
OGIyZjUuLjQ3NDcxYjllNDNmOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVk
dWxlci9zY2hlZF9mZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2No
ZWRfZmVuY2UuYw0KPiBAQCAtMTYxLDcgKzE2MSw3IEBAIHN0YXRpYyB2b2lkIGRybV9zY2hlZF9m
ZW5jZV9zZXRfZGVhZGxpbmVfZmluaXNoZWQoc3RydWN0IGRtYV9mZW5jZSAqZiwNCj4gICAJLyog
SWYgd2UgYWxyZWFkeSBoYXZlIGFuIGVhcmxpZXIgZGVhZGxpbmUsIGtlZXAgaXQ6ICovDQo+ICAg
CWlmICh0ZXN0X2JpdChEUk1fU0NIRURfRkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULCAmZi0+
ZmxhZ3MpICYmDQo+ICAgCSAgICBrdGltZV9iZWZvcmUoZmVuY2UtPmRlYWRsaW5lLCBkZWFkbGlu
ZSkpIHsNCj4gLQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZmVuY2UtPmxvY2ssIGZsYWdzKTsN
Cj4gKwkJZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGYsIGZsYWdzKTsNCj4gICAJCXJldHVy
bjsNCj4gICAJfQ0KPiAgIA0KPiBAQCAtMjE3LDcgKzIxNyw2IEBAIHN0cnVjdCBkcm1fc2NoZWRf
ZmVuY2UgKmRybV9zY2hlZF9mZW5jZV9hbGxvYyhzdHJ1Y3QgZHJtX3NjaGVkX2VudGl0eSAqZW50
aXR5LA0KPiAgIA0KPiAgIAlmZW5jZS0+b3duZXIgPSBvd25lcjsNCj4gICAJZmVuY2UtPmRybV9j
bGllbnRfaWQgPSBkcm1fY2xpZW50X2lkOw0KPiAtCXNwaW5fbG9ja19pbml0KCZmZW5jZS0+bG9j
ayk7DQo+ICAgDQo+ICAgCXJldHVybiBmZW5jZTsNCj4gICB9DQo+IEBAIC0yMzAsOSArMjI5LDkg
QEAgdm9pZCBkcm1fc2NoZWRfZmVuY2VfaW5pdChzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpmZW5j
ZSwNCj4gICAJZmVuY2UtPnNjaGVkID0gZW50aXR5LT5ycS0+c2NoZWQ7DQo+ICAgCXNlcSA9IGF0
b21pY19pbmNfcmV0dXJuKCZlbnRpdHktPmZlbmNlX3NlcSk7DQo+ICAgCWRtYV9mZW5jZV9pbml0
KCZmZW5jZS0+c2NoZWR1bGVkLCAmZHJtX3NjaGVkX2ZlbmNlX29wc19zY2hlZHVsZWQsDQo+IC0J
CSAgICAgICAmZmVuY2UtPmxvY2ssIGVudGl0eS0+ZmVuY2VfY29udGV4dCwgc2VxKTsNCj4gKwkJ
ICAgICAgIE5VTEwsIGVudGl0eS0+ZmVuY2VfY29udGV4dCwgc2VxKTsNCj4gICAJZG1hX2ZlbmNl
X2luaXQoJmZlbmNlLT5maW5pc2hlZCwgJmRybV9zY2hlZF9mZW5jZV9vcHNfZmluaXNoZWQsDQo+
IC0JCSAgICAgICAmZmVuY2UtPmxvY2ssIGVudGl0eS0+ZmVuY2VfY29udGV4dCArIDEsIHNlcSk7
DQo+ICsJCSAgICAgICBOVUxMLCBlbnRpdHktPmZlbmNlX2NvbnRleHQgKyAxLCBzZXEpOw0KPiAg
IH0NCj4gICANCj4gICBtb2R1bGVfaW5pdChkcm1fc2NoZWRfZmVuY2Vfc2xhYl9pbml0KTsNCj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUvZHJtL2dw
dV9zY2hlZHVsZXIuaA0KPiBpbmRleCBmYjg4MzAxYjNjNDUuLmI3N2YyNGE3ODNlMyAxMDA2NDQN
Cj4gLS0tIGEvaW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oDQo+ICsrKyBiL2luY2x1ZGUvZHJt
L2dwdV9zY2hlZHVsZXIuaA0KPiBAQCAtMjk3LDEwICsyOTcsNiBAQCBzdHJ1Y3QgZHJtX3NjaGVk
X2ZlbmNlIHsNCj4gICAgICAgICAgICAqIGJlbG9uZ3MgdG8uDQo+ICAgICAgICAgICAgKi8NCj4g
ICAJc3RydWN0IGRybV9ncHVfc2NoZWR1bGVyCSpzY2hlZDsNCj4gLSAgICAgICAgLyoqDQo+IC0g
ICAgICAgICAqIEBsb2NrOiB0aGUgbG9jayB1c2VkIGJ5IHRoZSBzY2hlZHVsZWQgYW5kIHRoZSBm
aW5pc2hlZCBmZW5jZXMuDQo+IC0gICAgICAgICAqLw0KPiAtCXNwaW5sb2NrX3QJCQlsb2NrOw0K
PiAgICAgICAgICAgLyoqDQo+ICAgICAgICAgICAgKiBAb3duZXI6IGpvYiBvd25lciBmb3IgZGVi
dWdnaW5nDQo+ICAgICAgICAgICAgKi8NCg0KTG9va3MgZ29vZCB0byBtZSBhbmQgdGhlIGtlcm5l
bCB0ZXN0IHJvYm90IHdhcm5pbmdzIFBoaWxpcHAgbWVudGlvbnMgDQpBRkFJQ1QgYXJlIGZyb20g
YSBkaWZmZXJlbnQgcGF0Y2ggcmVsYXRpbmcgdG8gdHJpdmlhbCBzZWxmdGVzdCBjaGFuZ2VzLg0K
DQpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+
DQoNClJlZ2FyZHMsDQoNClR2cnRrbw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
