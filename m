Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DA6A23E31
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Jan 2025 14:12:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CEF76413FC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 31 Jan 2025 13:12:46 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 4444940D87
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Jan 2025 13:12:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=TkvMTPqj;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.44 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-436ce2ab251so14000085e9.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Jan 2025 05:12:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738329152; x=1738933952; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Qf5Ag+gkCkodLzQTGh44JB0E7mlh4X9B+GfpD3S+A8=;
        b=TkvMTPqj8OsHY/3GhxK3VIjq1l/WNyRp1IQgX2jhNrWoMeoGJ3AtnKbOFPVnVukA05
         NRS/zAD72U56NJceuNt4k2iqsI4q/XXwmjCFa0GnhHaxbb/3UkKX8ZXfxQO83zcYIPr2
         Aqe4uk5anVI9+jpX3t4GrY6ItFm94ymU4lVEhWNsqV4g+FMuw0Vx3jwrpmBpSPORhxcp
         PoAxh8CFPSQSsfz2WKir9tE8/oTbqvkyi28oSLAUsBEjqGK6LCXxuUzj3OmjwSnsKj7u
         +wtbE32yHmFCDu4Nj+iF9ZCYoMPaxsO31S21+ftgG+GDExQQm6zPmMBMYnyZdlz/9XHD
         tGzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738329152; x=1738933952;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Qf5Ag+gkCkodLzQTGh44JB0E7mlh4X9B+GfpD3S+A8=;
        b=tc1VKzfdnszKKIoaUgyLbtJNyyIE0BL/3el5IMJ7oJzUqNVczvsxaTyKDzyxbNyLkx
         1rVLpxQDi7TcrgEFX5QJLxyypBK6SjUwxM73qyLqH88Z6gaCNZFa71i8gU3DUjEU+Qxi
         dyqxuhzsMb2o3oP9QljDuiGKDVLN6evudhqnPI9ZA5IboheKKtyuHRGnsgAEXCF4Nl9W
         uQdr1hM4FBaF+dS3Hm95vcXuwtGh899KtHR11VXYm0CyzCmhKF5StczjQVQyqbYn4f7C
         Iq9G51BqT7wWec62eBKC8FGBckEdb5LZdBgG6QQVPzVOEkqG20vDreDwdIclb46Hj7aT
         UX3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWcvylkIasfBcLaRDzOXq68LYGBZfsgbLIPqoWDdc7BdXgXiGUns9+iNU65HJRYspjbajVBNeB8LZYKupjx@lists.linaro.org
X-Gm-Message-State: AOJu0YyClV1oIjViocaSL+DuaRJn0U3X8HU5WrldyTgHWqB4Vq6YyD6r
	z4SkqWF1ux6LGpc2dZLXFIbN3QjJAtxzV603nmL+mnmeOFQQnO/0
X-Gm-Gg: ASbGnctxUvJ1O9LLG2qGkI4n1XH5JE0H120CFjFxXxk9d0nfd+dTvPm3cvpEXmmshAd
	b85s95pRP30xQEAQIdS1pbYOX3rOqZSrya1DibUGp4lCYorcsr4F/ls88nzKsR82j4qipnwr1oo
	cE5CE+cAifhzgF3Q4wJLHz0JicS9dRDhvCtFQm2BD34XHJkwFe47s4kH2tlteGRBg34PHupSOEr
	fOmuxX4bRsWlpblVqHv/dGYasmLBB6wETARY85rtJTOm6qk+ABSC/xYzmSmwrJAKiA1eWNcpJMy
	cwdgOPYb613ei9m4MVGFnZfpxKCvzYkus3HfxKMyq33t
X-Google-Smtp-Source: AGHT+IGKBtM8zdX0f/k9fSlmikQgi6UfU2qNH1ycY66SNDkJyOrXViqSqC8f4KUEz2AE7pAcFmrXww==
X-Received: by 2002:a5d:59a6:0:b0:385:f1f2:13f1 with SMTP id ffacd0b85a97d-38c51951c51mr9664356f8f.22.1738329150361;
        Fri, 31 Jan 2025 05:12:30 -0800 (PST)
Received: from [10.254.108.83] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc263f0sm90055545e9.9.2025.01.31.05.12.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2025 05:12:29 -0800 (PST)
Message-ID: <0b20e88a-9009-4fa2-b5cb-ab78ce834587@gmail.com>
Date: Fri, 31 Jan 2025 14:12:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
References: <20250131110328.706695-1-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20250131110328.706695-1-pierre-eric.pelloux-prayer@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4444940D87
X-Spamd-Bar: -
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_6(1.00)[209.85.128.44:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.128.44:from,165.204.72.6:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
Message-ID-Hash: 42BV4Q5JPFX75PJ52GDRNDHLAYWSMWHJ
X-Message-ID-Hash: 42BV4Q5JPFX75PJ52GDRNDHLAYWSMWHJ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, etnaviv@lists.freedesktop.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, lima@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-msm@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, nouveau@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 0/7] Improve gpu_scheduler trace events + uAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/42BV4Q5JPFX75PJ52GDRNDHLAYWSMWHJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SSBjYW4ndCBzZWUgcGF0Y2ggIzEgaW4gbXkgaW5ib3ggZm9yIHNvbWUgcmVhc29uLCBidXQgSSBh
bHJlYWR5IGtub3cgDQp3aGF0IGl0IGRvZXMgZnJvbSB5b3VyIHJlcG9zaXRvcnkuDQoNCkZlZWwg
ZnJlZSB0byBhZGQgUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4gDQp0byB0aGUgZW50aXJlIHNlcmllcy4NCg0KUmVnYXJkcywNCkNocmlzdGlh
bi4NCg0KQW0gMzEuMDEuMjUgdW0gMTI6MDIgc2NocmllYiBQaWVycmUtRXJpYyBQZWxsb3V4LVBy
YXllcjoNCj4gSGksDQo+DQo+IFRoZSBpbml0aWFsIGdvYWwgb2YgdGhpcyBzZXJpZXMgd2FzIHRv
IGltcHJvdmUgdGhlIGRybSBhbmQgYW1kZ3B1DQo+IHRyYWNlIGV2ZW50cyB0byBiZSBhYmxlIHRv
IGV4cG9zZSBtb3JlIG9mIHRoZSBpbm5lciB3b3JraW5ncyBvZg0KPiB0aGUgc2NoZWR1bGVyIGFu
ZCBkcml2ZXJzIHRvIGRldmVsb3BlcnMgdmlhIHRvb2xzLg0KPg0KPiBUaGVuLCB0aGUgc2VyaWVz
IGV2b2x2ZWQgdG8gYmVjb21lIGZvY3VzZWQgb25seSBvbiBncHVfc2NoZWR1bGVyLg0KPiBUaGUg
Y2hhbmdlcyBhcm91bmQgdmJsYW5rIGV2ZW50cyB3aWxsIGJlIHBhcnQgb2YgYSBkaWZmZXJlbnQN
Cj4gc2VyaWVzLCBhcyB3ZWxsIGFzIHRoZSBhbWRncHUgb25lcy4NCj4NCj4gTW9yZW92ZXIgU2lt
YSBzdWdnZXN0ZWQgdG8gbWFrZSBzb21lIHRyYWNlIGV2ZW50cyBzdGFibGUgdUFQSSwNCj4gc28g
dG9vbHMgY2FuIHJlbHkgb24gdGhlbSBsb25nIHRlcm0uDQo+DQo+IFRoZSBmaXJzdCBwYXRjaGVz
IGV4dGVuZCBhbmQgY2xlYW51cCB0aGUgZ3B1IHNjaGVkdWxlciBldmVudHMuDQo+DQo+IFRoZSBs
YXN0IG9uZSBhZGRzIGEgZG9jdW1lbnRhdGlvbiBlbnRyeSBpbiBkcm0tdWFwaS5yc3QuDQo+DQo+
IENoYW5nZXMgc2luY2UgdjY6DQo+ICogQWRkcmVzc2VkIGNvbW1lbnRzIGZyb20gUGhpbGlwcCwg
VHZydGtvLCBTdGV2ZW4NCj4gKiBUaGUgY29tbWl0IHN0b3JpbmcgZHJtX2NsaWVudF9pZCBpbiBz
Y2hlZF9mZW5jZSBhZGRzIGFuIGV4dHJhDQo+IGZpZWxkIHdoaWNoIGxvb2tzIGxpa2UgYSBkdXBs
aWNhdGUgb2YgdGhlIG93bmVyIGZpZWxkLiBDdXJyZW50bHkNCj4gYW1kZ3B1IHVzZXMgdGhlIG93
bmVyIGZpZWxkIHdpdGggc29tZSBtYWdpYyB2YWx1ZXMsIHNvIHdlIGhhdmUgdG8NCj4gaGF2ZSAy
IHNlcGFyYXRlIGZpZWxkcyBmb3Igbm93LCBidXQgdWx0aW1hdGVseSBvbmUgY291bGQgYmUgcmVt
b3ZlZC4NCj4gU2ltaWxhcmx5IHN0b3JpbmcgdGhlIGRybV9jbGllbnRfaWQgaW4gdGhlIHNjaGVk
X2VudGl0eSBpcyBub3QNCj4gcmVhbGx5IHBvc3NpYmxlIGFzIHRoZXJlJ3Mgbm90aGluZyBwcmV2
ZW50aW5nIGEgZHJpdmVyIHRvIHVzZSBhDQo+IHNjaGVkX2VudGl0eSB3aXRoIG11bHRpcGxlIGRy
bV9maWxlIGluc3RhbmNlcy4NCj4NCj4NCj4gVXNlZnVsIGxpbmtzOg0KPiAtIHVzZXJzcGFjZSB0
b29sIHVzaW5nIHRoZSB1cGRhdGVkIGV2ZW50czoNCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL3RvbXN0ZGVuaXMvdW1yLy0vbWVyZ2VfcmVxdWVzdHMvMzcNCj4gLSB2NjoNCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMjQtTm92ZW1i
ZXIvNDc3NjQ0Lmh0bWwNCj4NCj4gUGllcnJlLUVyaWMgUGVsbG91eC1QcmF5ZXIgKDcpOg0KPiAg
ICBkcm0vZGVidWdmczogb3V0cHV0IGNsaWVudF9pZCBpbiBpbiBkcm1fY2xpZW50c19pbmZvDQo+
ICAgIGRybS9zY2hlZDogc3RvcmUgdGhlIGRybSBjbGllbnRfaWQgaW4gZHJtX3NjaGVkX2ZlbmNl
DQo+ICAgIGRybS9zY2hlZDogYWRkIGRldmljZSBuYW1lIHRvIHRoZSBkcm1fc2NoZWRfcHJvY2Vz
c19qb2IgZXZlbnQNCj4gICAgZHJtL3NjaGVkOiBjbGVhbnVwIGdwdV9zY2hlZHVsZXIgdHJhY2Ug
ZXZlbnRzDQo+ICAgIGRybS9zY2hlZDogdHJhY2UgZGVwZW5kZW5jaWVzIGZvciBncHUgam9icw0K
PiAgICBkcm0vc2NoZWQ6IGFkZCB0aGUgZHJtX2NsaWVudF9pZCB0byB0aGUgZHJtX3NjaGVkX3J1
bi9leGVjX2pvYiBldmVudHMNCj4gICAgZHJtL2RvYzogZG9jdW1lbnQgc29tZSB0cmFjZXBvaW50
cyBhcyB1QVBJDQo+DQo+ICAgRG9jdW1lbnRhdGlvbi9ncHUvZHJtLXVhcGkucnN0ICAgICAgICAg
ICAgICAgIHwgIDE5ICsrKw0KPiAgIGRyaXZlcnMvYWNjZWwvYW1keGRuYS9haWUyX2N0eC5jICAg
ICAgICAgICAgICB8ICAgMyArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9hbWRrZmQuYyAgICB8ICAgMiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9jcy5jICAgICAgICB8ICAgMyArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9qb2IuYyAgICAgICB8ICAgOCArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9qb2IuaCAgICAgICB8ICAgMyArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1f
ZGVidWdmcy5jICAgICAgICAgICAgICAgICB8ICAxMCArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9l
dG5hdml2L2V0bmF2aXZfZ2VtX3N1Ym1pdC5jICB8ICAgMiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pbWFnaW5hdGlvbi9wdnJfam9iLmMgICAgICAgICB8ICAgMiArLQ0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pbWFnaW5hdGlvbi9wdnJfcXVldWUuYyAgICAgICB8ICAgNSArLQ0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9pbWFnaW5hdGlvbi9wdnJfcXVldWUuaCAgICAgICB8ICAgMiArLQ0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9saW1hL2xpbWFfZ2VtLmMgICAgICAgICAgICAgICB8ICAgMiArLQ0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuYyAgICAgICAgICAgICB8ICAgNiArLQ0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9saW1hL2xpbWFfc2NoZWQuaCAgICAgICAgICAgICB8ICAgMyArLQ0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9zdWJtaXQuYyAgICAgICAgICB8ICAgOCAr
LQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfc2NoZWQuYyAgICAgICB8ICAg
MyArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9zdF9kcnYuYyAgICAgICB8
ICAgMiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZHJ2LmMgICAgICAg
ICB8ICAgMyArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfbW11LmMgICAg
ICAgICB8ICAgMiArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3Jfc2NoZWQu
YyAgICAgICB8ICAgNSArLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3Jfc2No
ZWQuaCAgICAgICB8ICAgMyArLQ0KPiAgIC4uLi9ncHUvZHJtL3NjaGVkdWxlci9ncHVfc2NoZWR1
bGVyX3RyYWNlLmggICB8IDEyMyArKysrKysrKysrKysrKy0tLS0NCj4gICBkcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3NjaGVkX2VudGl0eS5jICAgICAgfCAgIDggKy0NCj4gICBkcml2ZXJzL2dw
dS9kcm0vc2NoZWR1bGVyL3NjaGVkX2ZlbmNlLmMgICAgICAgfCAgIDQgKy0NCj4gICBkcml2ZXJz
L2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyAgICAgICAgfCAgIDggKy0NCj4gICBkcml2
ZXJzL2dwdS9kcm0vdjNkL3YzZF9zdWJtaXQuYyAgICAgICAgICAgICAgfCAgIDIgKy0NCj4gICBk
cml2ZXJzL2dwdS9kcm0veGUveGVfc2NoZWRfam9iLmMgICAgICAgICAgICAgfCAgIDMgKy0NCj4g
ICBpbmNsdWRlL2RybS9ncHVfc2NoZWR1bGVyLmggICAgICAgICAgICAgICAgICAgfCAgMTIgKy0N
Cj4gICAyOCBmaWxlcyBjaGFuZ2VkLCAxOTIgaW5zZXJ0aW9ucygrKSwgNjQgZGVsZXRpb25zKC0p
DQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
