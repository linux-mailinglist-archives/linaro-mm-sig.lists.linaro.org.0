Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBi1LVIJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:07:46 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ED741158F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:07:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 635D1404EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:07:45 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id DF57A3F828
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 15:53:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=rQxkGjFk;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.50 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477b91680f8so36504545e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 07:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1765814023; x=1766418823; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pH2Z/DaD19HT9evWYCHDaM379AqSHqnWuEigqNTYVb4=;
        b=rQxkGjFkHhE/blTaq4xoZdfEjIhdjEQg0INtqUr6JPoe4DkoNjLGDNKPb2Y/9Eiet3
         8Wgrzy5vRx+HXqiJq60To74pMIPmAcSy0xHXom50o02vjwT/R9pmJNTZZOGpU+j/6MvS
         ROjWF3ktANIMGQt8Cd+tF5Wib4PT29aCfNXMNlq6Zgtn3GcyIYEXdchu23R6apzDiTDP
         PrkyHRGTYpr8Fd3jGujub3n2dQnshxJyvVkxlTRjuh4ox3/cPkQMgehx1sBNb3i/kK3/
         f5oaTTG6NxNqZ+Hvrc6GNazU7xLR9lhSi8x6F6lPRkBub4nhwvKyDE1jpexDMhjOegrs
         /ZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765814023; x=1766418823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pH2Z/DaD19HT9evWYCHDaM379AqSHqnWuEigqNTYVb4=;
        b=MHbqgvRZbb24lP2L7NvaD6NpvtnUaSw6lWMGlRwFDSanxGAZqbotQraxbQrvtwCle6
         y9yQOaLPRCZpvNzM4GWHT8DhJJM3cY+mrPHF9CzjECW3leCw6uQZ2rh+kQWHwx0C/K/s
         WrHgRXmf8c4Kq5+HMpzd6nEjy/D1X9L7OsGwy7Zxg1/UusT/X7YBKWcRHruOj82UYDTj
         tspw8DO5cwejwlVueFTU51YE+WYpz2ljhDEko0BjPS6goI8NhATGPaSLtEFCYAbDH4u6
         rGieeBTxZTkJH/YwWRuqwInNoZhKc7IK+USKbzY73/8VmiIjB6lmuxQJfCXSMbm0idPV
         t0bw==
X-Forwarded-Encrypted: i=1; AJvYcCUg9PGeKfzLpNvwDqaaoF/zTSARMCjoOOcgM3fTN85Vjsf+Dt6ex0yfRZCMrc/QzHvn8gu7RenL54CqdnMg@lists.linaro.org
X-Gm-Message-State: AOJu0Yw//j5otOFriw+e5HY55FyvmFA+bihjiGnqVJ14grMQrmThFD59
	YjOX7VOzk42fwK4Oc+KXRbQ4uKTg/KqGg3oK8RksS4TmYAu2VclebSCJXtdNV669hsA=
X-Gm-Gg: AY/fxX4YO/6Mdczyhuu0j6/a3+71D59/i7NA2JaqACHg2kgVlODympdRdhMK9FfQ/6B
	DSucVL+134loy0hBGRygO0fzG+1/yf3uv6Y/36ImpgdHqt2TFqQ8IQ+lr3haQ5v+wUVrJYRRZRx
	Ug1mkwPR7UU1ToPYMChWHvJ8Arn06EBIOE6fzD3Kjs7tiDfrt93hPxQWO3uVMw27luWWPKOfAcU
	hM4y+LeHN93InP7mY4arvUVX+FJLaqlq7nlc/QwHyc1xBHHtiTgXnVfFl6IL6VwIAm/m6DTUVG1
	rPPrikFjHsq485BhOxTzsh/PREEaB4QBn6WOEaazubUs7cEOjEu9mh5lwaGuZo/bUX9TChFMoE1
	6Bca+v14CghECSybvxS8Au5ZMHxzBRk77f0aazvo8qiOzgJFAAbdQpxUC/iujhoBsrD8IHa/kFI
	MnUSE2Bmdum5tbUflhINRo5XqsfcDx9lOTloFsKVYWo0I=
X-Google-Smtp-Source: AGHT+IHTVGfAebs9MrJLRGYlmqwnfYkRsZXOHzsD0dnLIwwJMmBpk5bJBt40F4PJceNMZDgVs7o5qA==
X-Received: by 2002:a05:600c:19cd:b0:47a:819f:3acf with SMTP id 5b1f17b1804b1-47a8f8abfa7mr122682085e9.10.1765814022581;
        Mon, 15 Dec 2025 07:53:42 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f6e5baasm206481405e9.13.2025.12.15.07.53.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 07:53:42 -0800 (PST)
Message-ID: <07ad04cd-de4e-4c12-823d-cb3024816382@ursulin.net>
Date: Mon, 15 Dec 2025 15:53:41 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-10-christian.koenig@amd.com>
 <9ef8686f-820f-41e9-985e-40411b4b9bd3@ursulin.net>
 <587fb06e-cfac-4603-b074-a9b382ecea31@amd.com>
 <e19284e2-ff38-415d-a44d-0ab610032d24@ursulin.net>
 <6e2e258a-0c20-4229-8301-5a217f29eea6@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <6e2e258a-0c20-4229-8301-5a217f29eea6@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AH2AV4RTOUKVIDNZBPQV5JEPBU74TTSN
X-Message-ID-Hash: AH2AV4RTOUKVIDNZBPQV5JEPBU74TTSN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:46 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/19] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AH2AV4RTOUKVIDNZBPQV5JEPBU74TTSN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[2928];
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
	NEURAL_HAM(-0.00)[-0.448];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,ursulin.net:mid,linaro.org:email,amd.com:email]
X-Rspamd-Queue-Id: 55ED741158F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxNS8xMi8yMDI1IDE1OjM4LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxMi8x
NS8yNSAxMDoyMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+Pg0KPj4gT24gMTIvMTIvMjAyNSAx
NTo1MCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBPbiAxMi8xMS8yNSAxNjoxMywgVHZy
dGtvIFVyc3VsaW4gd3JvdGU6DQo+Pj4+DQo+Pj4+IE9uIDExLzEyLzIwMjUgMTM6MTYsIENocmlz
dGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+PiBVc2luZyB0aGUgaW5saW5lIGxvY2sgaXMgbm93IHRo
ZSByZWNvbW1lbmRlZCB3YXkgZm9yIGRtYV9mZW5jZSBpbXBsZW1lbnRhdGlvbnMuDQo+Pj4+Pg0K
Pj4+Pj4gU28gdXNlIHRoaXMgYXBwcm9hY2ggZm9yIHRoZSBzY2hlZHVsZXIgZmVuY2VzIGFzIHdl
bGwganVzdCBpbiBjYXNlIGlmDQo+Pj4+PiBhbnlib2R5IHVzZXMgdGhpcyBhcyBibHVlcHJpbnQg
Zm9yIGl0cyBvd24gaW1wbGVtZW50YXRpb24uDQo+Pj4+Pg0KPj4+Pj4gQWxzbyBzYXZlcyBhYm91
dCA0IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQo+Pj4+Pg0KPj4+Pj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+
Pj4gLS0tDQo+Pj4+PiAgwqDCoCBkcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNl
LmMgfCA3ICsrKy0tLS0NCj4+Pj4+ICDCoMKgIGluY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDQgLS0tLQ0KPj4+Pj4gIMKgwqAgMiBmaWxlcyBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+Pj4+Pg0KPj4+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYyBiL2RyaXZlcnMv
Z3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZmVuY2UuYw0KPj4+Pj4gaW5kZXggMDhjY2JkZThiMmY1
Li40NzQ3MWI5ZTQzZjkgMTAwNjQ0DQo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX2ZlbmNlLmMNCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIv
c2NoZWRfZmVuY2UuYw0KPj4+Pj4gQEAgLTE2MSw3ICsxNjEsNyBAQCBzdGF0aWMgdm9pZCBkcm1f
c2NoZWRfZmVuY2Vfc2V0X2RlYWRsaW5lX2ZpbmlzaGVkKHN0cnVjdCBkbWFfZmVuY2UgKmYsDQo+
Pj4+PiAgwqDCoMKgwqDCoMKgIC8qIElmIHdlIGFscmVhZHkgaGF2ZSBhbiBlYXJsaWVyIGRlYWRs
aW5lLCBrZWVwIGl0OiAqLw0KPj4+Pj4gIMKgwqDCoMKgwqDCoCBpZiAodGVzdF9iaXQoRFJNX1ND
SEVEX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmYtPmZsYWdzKSAmJg0KPj4+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGt0aW1lX2JlZm9yZShmZW5jZS0+ZGVhZGxpbmUsIGRlYWRsaW5l
KSkgew0KPj4+Pj4gLcKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmZlbmNl
LT5sb2NrLCBmbGFncyk7DQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3VubG9ja19p
cnFyZXN0b3JlKGYsIGZsYWdzKTsNCj4+Pj4NCj4+Pj4gUmViYXNlIGVycm9yIEkgZ3Vlc3MuIFB1
bGwgaW50byB0aGUgbG9ja2luZyBoZWxwZXJzIHBhdGNoLg0KPj4+DQo+Pj4gTm8gdGhhdCBpcyBh
Y3R1YWxseSBjb21wbGV0ZWx5IGludGVudGlvbmFsIGhlcmUuDQo+Pj4NCj4+PiBQcmV2aW91c2x5
IHdlIGhhZCBhIHNlcGFyYXRlIGxvY2sgd2hpY2ggcHJvdGVjdGVkIGJvdGggdGhlIERNQS1mZW5j
ZXMgYXMgd2VsbCBhcyB0aGUgZGVhZGxpbmUgc3RhdGUuDQo+Pj4NCj4+PiBOb3cgd2UgdHVybiB0
aGF0IHVwc2lkZSBkb3duIGJ5IGRyb3BwaW5nIHRoZSBzZXBhcmF0ZSBsb2NrIGFuZCBwcm90ZWN0
aW5nIHRoZSBkZWFkbGluZSBzdGF0ZSB3aXRoIHRoZSBkbWFfZmVuY2UgbG9jayBpbnN0ZWFkLg0K
Pj4NCj4+IEkgZG9uJ3QgZm9sbG93LiBUaGUgY29kZSBpcyBjdXJyZW50bHkgbGlrZSB0aGlzOg0K
Pj4NCj4+IHN0YXRpYyB2b2lkIGRybV9zY2hlZF9mZW5jZV9zZXRfZGVhZGxpbmVfZmluaXNoZWQo
c3RydWN0IGRtYV9mZW5jZSAqZiwNCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBrdGltZV90IGRlYWRsaW5lKQ0KPj4gew0KPj4gIMKgwqDCoMKg
c3RydWN0IGRybV9zY2hlZF9mZW5jZSAqZmVuY2UgPSB0b19kcm1fc2NoZWRfZmVuY2UoZik7DQo+
PiAgwqDCoMKgwqBzdHJ1Y3QgZG1hX2ZlbmNlICpwYXJlbnQ7DQo+PiAgwqDCoMKgwqB1bnNpZ25l
ZCBsb25nIGZsYWdzOw0KPj4NCj4+ICDCoMKgwqDCoHNwaW5fbG9ja19pcnFzYXZlKCZmZW5jZS0+
bG9jaywgZmxhZ3MpOw0KPj4NCj4+ICDCoMKgwqDCoC8qIElmIHdlIGFscmVhZHkgaGF2ZSBhbiBl
YXJsaWVyIGRlYWRsaW5lLCBrZWVwIGl0OiAqLw0KPj4gIMKgwqDCoMKgaWYgKHRlc3RfYml0KERS
TV9TQ0hFRF9GRU5DRV9GTEFHX0hBU19ERUFETElORV9CSVQsICZmLT5mbGFncykgJiYNCj4+ICDC
oMKgwqDCoMKgwqDCoCBrdGltZV9iZWZvcmUoZmVuY2UtPmRlYWRsaW5lLCBkZWFkbGluZSkpIHsN
Cj4+ICDCoMKgwqDCoMKgwqDCoCBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZmZW5jZS0+bG9jaywg
ZmxhZ3MpOw0KPj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybjsNCj4+ICDCoMKgwqDCoH0NCj4+DQo+
PiAgwqDCoMKgwqBmZW5jZS0+ZGVhZGxpbmUgPSBkZWFkbGluZTsNCj4+ICDCoMKgwqDCoHNldF9i
aXQoRFJNX1NDSEVEX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVCwgJmYtPmZsYWdzKTsNCj4+
DQo+PiAgwqDCoMKgwqBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZmZW5jZS0+bG9jaywgZmxhZ3Mp
Oy4uLg0KPj4NCj4+IFRoZSBkaWZmIGNoYW5nZXMgb25lIG91dCBvZiB0aGUgdGhyZWUgbG9jay91
bmxvY2sgb3BlcmF0aW9ucy4gT3RoZXIgdHdvIGFyZSBjaGFuZ2VkIGluIDMvMTkuIEFsbCB0aHJl
ZSBzaG91bGQgc3VyZWx5IGJlIGNoYW5nZWQgaW4gdGhlIHNhbWUgcGF0Y2guDQo+IA0KPiBXZSBj
b3VsZCBjaGFuZ2UgdGhvc2Ugc3Bpbl9sb2NrL3VubG9jayBjYWxscyBpbiBwYXRjaCAjMywgYnV0
IEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIGlzIGNsZWFuLg0KPiANCj4gU2VlIHRoZSBjb2RlIGhl
cmUgY3VycmVudGx5IHVzZXMgZmVuY2UtPmxvY2sgYW5kIHBhdGNoICMzIHdvdWxkIGNoYW5nZSBp
dCB0byB1c2UgZmVuY2UtPmZpbmlzaGVkLT5sb2NrIGluc3RlYWQuIFRoYXQgbWlnaHQgYmUgdGhl
IHBvaW50ZXIgYXQgdGhlIG1vbWVudCwgYnV0IHRoYXQgaXMganVzdCBieSBjb2luY2lkZW50IGFu
ZCBub3QgZGVzaWduLg0KPiANCj4gT25seSB0aGlzIGNoYW5nZSBoZXJlIG9udG9wIG1ha2VzIGl0
IGludGVudGlvbmFsIHRoYXQgd2UgdXNlIGZlbmNlLT5maW5pc2hlZC0+bG9jayBmb3IgZXZlcnl0
aGluZy4NCg0KU29ycnkgSSBzdGlsbCBkb24ndCBmb2xsb3cuIEFmdGVyIDMvMTkgYW5kIGJlZm9y
ZSB0aGlzIDkvMTkgdGhlIGZ1bmN0aW9uIA0KbG9va3MgbGlrZSB0aGlzOg0KDQpzdGF0aWMgdm9p
ZCBkcm1fc2NoZWRfZmVuY2Vfc2V0X2RlYWRsaW5lX2ZpbmlzaGVkKHN0cnVjdCBkbWFfZmVuY2Ug
KmYsDQoJCQkJCQkgIGt0aW1lX3QgZGVhZGxpbmUpDQp7DQoJc3RydWN0IGRybV9zY2hlZF9mZW5j
ZSAqZmVuY2UgPSB0b19kcm1fc2NoZWRfZmVuY2UoZik7DQoJc3RydWN0IGRtYV9mZW5jZSAqcGFy
ZW50Ow0KCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQoNCglkbWFfZmVuY2VfbG9ja19pcnFzYXZlKGYs
IGZsYWdzKTsNCg0KCS8qIElmIHdlIGFscmVhZHkgaGF2ZSBhbiBlYXJsaWVyIGRlYWRsaW5lLCBr
ZWVwIGl0OiAqLw0KCWlmICh0ZXN0X2JpdChEUk1fU0NIRURfRkVOQ0VfRkxBR19IQVNfREVBRExJ
TkVfQklULCAmZi0+ZmxhZ3MpICYmDQoJICAgIGt0aW1lX2JlZm9yZShmZW5jZS0+ZGVhZGxpbmUs
IGRlYWRsaW5lKSkgew0KCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZmZW5jZS0+bG9jaywgZmxh
Z3MpOw0KCQlyZXR1cm47DQoJfQ0KDQoJZmVuY2UtPmRlYWRsaW5lID0gZGVhZGxpbmU7DQoJc2V0
X2JpdChEUk1fU0NIRURfRkVOQ0VfRkxBR19IQVNfREVBRExJTkVfQklULCAmZi0+ZmxhZ3MpOw0K
DQoJZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGYsIGZsYWdzKTsNCg0KTm90aWNlIHRoZSBs
b25lbHkgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSBvbiB0aGUgZWFybHkgcmV0dXJuIHBhdGggd2hp
bGUgDQpvdGhlciB0d28gdXNlIHRoZSBkbWFfZmVuY2VfKHVuKWxvY2sgaGVscGVycy4gQW0gSSBi
bGluZCBvciBob3cgaXMgdGhhdCANCmNsZWFuPw0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KPiAN
Cj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPiANCj4+DQo+PiBSZWdhcmRzLA0KPj4NCj4+IFR2
cnRrbw0KPj4NCj4+Pg0KPj4+IFJlZ2FyZHMsDQo+Pj4gQ2hyaXN0aWFuLg0KPj4+DQo+Pj4+DQo+
Pj4+IFJlZ2FyZHMsDQo+Pj4+DQo+Pj4+IFR2cnRrbw0KPj4+Pg0KPj4+Pj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybjsNCj4+Pj4+ICDCoMKgwqDCoMKgwqAgfQ0KPj4+Pj4gIMKgwqAgQEAg
LTIxNyw3ICsyMTcsNiBAQCBzdHJ1Y3QgZHJtX3NjaGVkX2ZlbmNlICpkcm1fc2NoZWRfZmVuY2Vf
YWxsb2Moc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSwNCj4+Pj4+ICDCoMKgIMKgwqDC
oMKgwqAgZmVuY2UtPm93bmVyID0gb3duZXI7DQo+Pj4+PiAgwqDCoMKgwqDCoMKgIGZlbmNlLT5k
cm1fY2xpZW50X2lkID0gZHJtX2NsaWVudF9pZDsNCj4+Pj4+IC3CoMKgwqAgc3Bpbl9sb2NrX2lu
aXQoJmZlbmNlLT5sb2NrKTsNCj4+Pj4+ICDCoMKgIMKgwqDCoMKgwqAgcmV0dXJuIGZlbmNlOw0K
Pj4+Pj4gIMKgwqAgfQ0KPj4+Pj4gQEAgLTIzMCw5ICsyMjksOSBAQCB2b2lkIGRybV9zY2hlZF9m
ZW5jZV9pbml0KHN0cnVjdCBkcm1fc2NoZWRfZmVuY2UgKmZlbmNlLA0KPj4+Pj4gIMKgwqDCoMKg
wqDCoCBmZW5jZS0+c2NoZWQgPSBlbnRpdHktPnJxLT5zY2hlZDsNCj4+Pj4+ICDCoMKgwqDCoMKg
wqAgc2VxID0gYXRvbWljX2luY19yZXR1cm4oJmVudGl0eS0+ZmVuY2Vfc2VxKTsNCj4+Pj4+ICDC
oMKgwqDCoMKgwqAgZG1hX2ZlbmNlX2luaXQoJmZlbmNlLT5zY2hlZHVsZWQsICZkcm1fc2NoZWRf
ZmVuY2Vfb3BzX3NjaGVkdWxlZCwNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICZmZW5jZS0+bG9jaywgZW50aXR5LT5mZW5jZV9jb250ZXh0LCBzZXEpOw0KPj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTlVMTCwgZW50aXR5LT5mZW5jZV9jb250ZXh0LCBzZXEp
Ow0KPj4+Pj4gIMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfaW5pdCgmZmVuY2UtPmZpbmlzaGVkLCAm
ZHJtX3NjaGVkX2ZlbmNlX29wc19maW5pc2hlZCwNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICZmZW5jZS0+bG9jaywgZW50aXR5LT5mZW5jZV9jb250ZXh0ICsgMSwgc2VxKTsN
Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5VTEwsIGVudGl0eS0+ZmVuY2Vf
Y29udGV4dCArIDEsIHNlcSk7DQo+Pj4+PiAgwqDCoCB9DQo+Pj4+PiAgwqDCoCDCoCBtb2R1bGVf
aW5pdChkcm1fc2NoZWRfZmVuY2Vfc2xhYl9pbml0KTsNCj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9ncHVfc2NoZWR1bGVyLmggYi9pbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmgNCj4+
Pj4+IGluZGV4IGZiODgzMDFiM2M0NS4uYjc3ZjI0YTc4M2UzIDEwMDY0NA0KPj4+Pj4gLS0tIGEv
aW5jbHVkZS9kcm0vZ3B1X3NjaGVkdWxlci5oDQo+Pj4+PiArKysgYi9pbmNsdWRlL2RybS9ncHVf
c2NoZWR1bGVyLmgNCj4+Pj4+IEBAIC0yOTcsMTAgKzI5Nyw2IEBAIHN0cnVjdCBkcm1fc2NoZWRf
ZmVuY2Ugew0KPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBiZWxvbmdzIHRvLg0KPj4+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4+Pj4+ICDCoMKgwqDCoMKgwqAgc3RydWN0
IGRybV9ncHVfc2NoZWR1bGVywqDCoMKgICpzY2hlZDsNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCAv
KioNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgICogQGxvY2s6IHRoZSBsb2NrIHVzZWQgYnkgdGhl
IHNjaGVkdWxlZCBhbmQgdGhlIGZpbmlzaGVkIGZlbmNlcy4NCj4+Pj4+IC3CoMKgwqDCoMKgwqDC
oMKgICovDQo+Pj4+PiAtwqDCoMKgIHNwaW5sb2NrX3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxv
Y2s7DQo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoqDQo+Pj4+PiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqIEBvd25lcjogam9iIG93bmVyIGZvciBkZWJ1Z2dpbmcNCj4+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICovDQo+Pj4+DQo+Pj4NCj4+DQo+IA0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
