Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CK3gKCn44GnZnwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B89E40FE30
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:54:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6895A40518
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:54:32 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by lists.linaro.org (Postfix) with ESMTPS id 0C76D3F7E8
	for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Oct 2025 11:50:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin-net.20230601.gappssmtp.com header.s=20230601 header.b=bLQssZrY;
	dmarc=none;
	spf=none (lists.linaro.org: domain of tursulin@ursulin.net has no SPF policy when checking 209.85.221.41) smtp.mailfrom=tursulin@ursulin.net
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-429c19b5de4so465680f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 31 Oct 2025 04:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1761911418; x=1762516218; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TMW4q1yc/hq1gjF5rKdDD6wjxSe1WwAdRUZxNTv4M7U=;
        b=bLQssZrY4IIoSMLD9QJz6owiPunR4IrWt+nCJG04V6afbOOG0jevK6ny1Cc+bs1pWI
         li86Ypv2n/vlFg3Z5X/hVlbeza5TcdPKTtf1UVxvPHGcwLSyKI3jO/54JrkUwfM1+hbF
         TpqbC3bvBl7a0YaW2ANzqnI9j/GoRJCxHorsi/s8l4vNnvYe6bx9c3jlMgSQa+PdKZUc
         6ix5FryNRnz548AFSwrsjiT/hUNyDFi22ujvlZNn4kjr998zuLlUcN+d70JShQQoezdp
         KltZ+3c+9oC5y1Nq3XItvG8UbM4XftOKtk5AneOV5BZmnbIgy1+glewdysz57rKniGD6
         tEpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761911418; x=1762516218;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TMW4q1yc/hq1gjF5rKdDD6wjxSe1WwAdRUZxNTv4M7U=;
        b=LuM5JmofUmOD9NW5jXkMT+DCF5edwPJnnF1cjSWL2oMW1uYek0EN8TdPxRL6ttURz+
         y3KyhF1rLPRnlMYBKurwGKgyM2zALdODQAe7yQw9krJAdMcIvYiJJCJSSCq+dDiIAUNi
         zzqzi27FLHx5B+qg63HKImKyKoWKZ7rkVDPTBRhgcwPDJaiuqlQ2cIqt53bJ0gDbd9jS
         pu+g8SFHwTICk4hlslNbL6CyGZjX6LR56+TeWsfWDVyiJBDKnCdAtXQsbwQE6egXOG5L
         HJ0gDeeypl/Zi0NA6erlKuLT5EVwNikfQJJDEezv5XBAn7GdZeaYtnwV66/VuCSEn5l+
         n+RA==
X-Forwarded-Encrypted: i=1; AJvYcCX3xKnIHgUA0TaNsqr8b3FHrYzCEmPmQ4JUHFyTpfUatWCxpG9m4vkNoSO2Z/tPl0phRc1AUFFihuMLTEPe@lists.linaro.org
X-Gm-Message-State: AOJu0YxX8D+iuVdmP8We06zgJ3v1KlTWWI+D1ONpE4UuRObRJCwQ6MGa
	C7+xlx7FFsDhSU9VGTmJg8brahAGFx+eKbsVyeXU37/9hXc1QZwkHaXPQBRYTjjHmjo=
X-Gm-Gg: ASbGncs1gGO3YQVDQYGtmN/GKIWaY2I4CznlZBVkTtqQ4+R6BYf+smoW0jc9mmYXYww
	NBiO/Atu62zRGNhZpvVxUmvzcicC5D1zSBlEnd2IB5dK7XxFjAC9AqVmUt8FtEuGjimgYLtJMNt
	qPf1zjoD0XMbGOYOfh3Yu3PG9r3gMMXzbXkYNEmvpi68zI23Yxa5OyD+wseSRjzUZkFUhR+SXxh
	aofye9xOVFBVZPraUO3RhqZBm9AdKXTAN0cSJZpJx4waQkSnpw26t2ygPUtMNH61CKIjNkj+C2G
	9BPpJAcmvc6Ty2m7eXlLSp51wsWdXELRCFdzTDZTu8qgJYoRdovbs4YMvA6/gTWzu9IhJpSiXBd
	iCBMEAJjWYClwcnrD8gLpJoisjZUy9kPOVRlHsfmIUsDMecFcSIixtVwiTSZbyJpkw2VQhAcUEM
	kzW1htUZJzTLG5y6cR
X-Google-Smtp-Source: AGHT+IG7ZgRAfklgWSpAYSPzxFgTxUag6V3Fc8ctTVAuDt+DMbJ27kEs61rDXYyhICbDmi4MeLbsVQ==
X-Received: by 2002:a05:6000:1889:b0:3dc:1473:18bc with SMTP id ffacd0b85a97d-429bd5f72ccmr2613024f8f.0.1761911416851;
        Fri, 31 Oct 2025 04:50:16 -0700 (PDT)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47728a979b8sm91657215e9.10.2025.10.31.04.50.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 04:50:16 -0700 (PDT)
Message-ID: <411190d4-92d7-4e95-acac-b39afa438c0f@ursulin.net>
Date: Fri, 31 Oct 2025 11:50:15 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 Philipp Stanner <phasta@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20251031090704.1111-1-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251031090704.1111-1-pierre-eric.pelloux-prayer@amd.com>
X-Spamd-Bar: -
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PBHBHUJP2OPD4QIDLVXNJJKGAA2JHN45
X-Message-ID-Hash: PBHBHUJP2OPD4QIDLVXNJJKGAA2JHN45
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:39 +0000
CC: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/sched: Fix deadlock in drm_sched_entity_kill_jobs_cb
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PBHBHUJP2OPD4QIDLVXNJJKGAA2JHN45/>
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
	DATE_IN_PAST(1.00)[4011];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,intel.com,kernel.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.411];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,linaro.org:email,amd.com:email,ursulin.net:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5B89E40FE30
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAzMS8xMC8yMDI1IDA5OjA3LCBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXllciB3cm90ZToN
Cj4gVGhlIE1lc2EgaXNzdWUgcmVmZXJlbmNlZCBiZWxvdyBwb2ludGVkIG91dCBhIHBvc3NpYmxl
IGRlYWRsb2NrOg0KPiANCj4gWyAxMjMxLjYxMTAzMV0gIFBvc3NpYmxlIGludGVycnVwdCB1bnNh
ZmUgbG9ja2luZyBzY2VuYXJpbzoNCj4gDQo+IFsgMTIzMS42MTEwMzNdICAgICAgICBDUFUwICAg
ICAgICAgICAgICAgICAgICBDUFUxDQo+IFsgMTIzMS42MTEwMzRdICAgICAgICAtLS0tICAgICAg
ICAgICAgICAgICAgICAtLS0tDQo+IFsgMTIzMS42MTEwMzVdICAgbG9jaygmeGEtPnhhX2xvY2sj
MTcpOw0KPiBbIDEyMzEuNjExMDM4XSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG9j
YWxfaXJxX2Rpc2FibGUoKTsNCj4gWyAxMjMxLjYxMTAzOV0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGxvY2soJmZlbmNlLT5sb2NrKTsNCj4gWyAxMjMxLjYxMTA0MV0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGxvY2soJnhhLT54YV9sb2NrIzE3KTsNCj4gWyAxMjMxLjYx
MTA0NF0gICA8SW50ZXJydXB0Pg0KPiBbIDEyMzEuNjExMDQ1XSAgICAgbG9jaygmZmVuY2UtPmxv
Y2spOw0KPiBbIDEyMzEuNjExMDQ3XQ0KPiAgICAgICAgICAgICAgICAgICoqKiBERUFETE9DSyAq
KioNCj4gDQo+IEluIHRoaXMgZXhhbXBsZSwgQ1BVMCB3b3VsZCBiZSBhbnkgZnVuY3Rpb24gYWNj
ZXNzaW5nIGpvYi0+ZGVwZW5kZW5jaWVzDQo+IHRocm91Z2ggdGhlIHhhXyogZnVuY3Rpb25zIHRo
YXQgZG9lc24ndCBkaXNhYmxlIGludGVycnVwdHMgKGVnOg0KPiBkcm1fc2NoZWRfam9iX2FkZF9k
ZXBlbmRlbmN5LCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYikuDQo+IA0KPiBDUFUxIGlz
IGV4ZWN1dGluZyBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYiBhcyBhIGZlbmNlIHNpZ25h
bGxpbmcNCj4gY2FsbGJhY2sgc28gaW4gYW4gaW50ZXJydXB0IGNvbnRleHQuIEl0IHdpbGwgZGVh
ZGxvY2sgd2hlbiB0cnlpbmcgdG8NCj4gZ3JhYiB0aGUgeGFfbG9jayB3aGljaCBpcyBhbHJlYWR5
IGhlbGQgYnkgQ1BVMC4NCj4gDQo+IFJlcGxhY2luZyBhbGwgeGFfKiB1c2FnZSBieSB0aGVpciB4
YV8qX2lycSBjb3VudGVycGFydHMgd291bGQgZml4DQo+IHRoaXMgaXNzdWUsIGJ1dCBDaHJpc3Rp
YW4gcG9pbnRlZCBvdXQgYW5vdGhlciBpc3N1ZTogZG1hX2ZlbmNlX3NpZ25hbA0KPiB0YWtlcyBm
ZW5jZS5sb2NrIGFuZCBzbyBkb2VzIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2suDQo+IA0KPiAgICBk
bWFfZmVuY2Vfc2lnbmFsKCkgLy8gbG9ja3MgZjEubG9jaw0KPiAgICAtPiBkcm1fc2NoZWRfZW50
aXR5X2tpbGxfam9ic19jYigpDQo+ICAgIC0+IGZvcmVhY2ggZGVwZW5kZW5jaWVzDQo+ICAgICAg
IC0+IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soKSAvLyBsb2NrcyBmMi5sb2NrDQo+IA0KPiBUaGlz
IHdpbGwgZGVhZGxvY2sgaWYgZjEgYW5kIGYyIHNoYXJlIHRoZSBzYW1lIHNwaW5sb2NrLg0KDQpJ
cyBpdCBwb3NzaWJsZSB0byBoaXQgdGhpcyBjYXNlPw0KDQpTYW1lIGxvY2sgbWVhbnMgc2FtZSBl
eGVjdXRpb24gdGltZWxpbmUsIHdoaWNoIHNob3VsZCBtZWFuIGRlcGVuZGVuY3kgDQpzaG91bGQg
aGF2ZSBiZWVuIHNxdWFzaGVkIGluIGRybV9zY2hlZF9qb2JfYWRkX2RlcGVuZGVuY3koKSwgbm8/
DQoNCk9yIHdvdWxkIHNoYXJpbmcgdGhlIGxvY2sgYnV0IG5vdCBzaGFyaW5nIHRoZSBlbnRpdHkt
PmZlbmNlX2NvbnRleHQgYmUgDQpjb25zaWRlcmVkIGxlZ2FsPyBJdCB3b3VsZCBiZSBzdXJwcmlz
aW5nIGF0IGxlYXN0Lg0KDQpBbHNvLCB3b3VsZCBhbnlvbmUgaGF2ZSB0aW1lIHRvIGFkZCBhIGt1
bml0IHRlc3Q/IDspDQoNClJlZ2FyZHMsDQoNClR2cnRrbw0KDQo+IFRvIGZpeCBib3RoIGlzc3Vl
cywgdGhlIGNvZGUgaXRlcmF0aW5nIG9uIGRlcGVuZGVuY2llcyBhbmQgcmUtYXJtaW5nIHRoZW0N
Cj4gaXMgbW92ZWQgb3V0IHRvIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX3dvcmsuDQo+IA0K
PiBMaW5rOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhLy0vaXNzdWVz
LzEzOTA4DQo+IFJlcG9ydGVkLWJ5OiBNaWtoYWlsIEdhdnJpbG92IDxtaWtoYWlsLnYuZ2F2cmls
b3ZAZ21haWwuY29tPg0KPiBTdWdnZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVsbG91
eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQo+IC0tLQ0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMgfCAzNCArKysrKysrKysr
KysrLS0tLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTUg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9lbnRpdHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5
LmMNCj4gaW5kZXggYzhlOTQ5ZjRhNTY4Li5mZTE3NGE0ODU3YmUgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfZW50aXR5LmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3NjaGVkdWxlci9zY2hlZF9lbnRpdHkuYw0KPiBAQCAtMTczLDI2ICsxNzMsMTUgQEAg
aW50IGRybV9zY2hlZF9lbnRpdHlfZXJyb3Ioc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0
eSkNCj4gICB9DQo+ICAgRVhQT1JUX1NZTUJPTChkcm1fc2NoZWRfZW50aXR5X2Vycm9yKTsNCj4g
ICANCj4gK3N0YXRpYyB2b2lkIGRybV9zY2hlZF9lbnRpdHlfa2lsbF9qb2JzX2NiKHN0cnVjdCBk
bWFfZmVuY2UgKmYsDQo+ICsJCQkJCSAgc3RydWN0IGRtYV9mZW5jZV9jYiAqY2IpOw0KPiArDQo+
ICAgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfd29yayhzdHJ1Y3Qgd29y
a19zdHJ1Y3QgKndyaykNCj4gICB7DQo+ICAgCXN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IgPSBj
b250YWluZXJfb2Yod3JrLCB0eXBlb2YoKmpvYiksIHdvcmspOw0KPiAtDQo+IC0JZHJtX3NjaGVk
X2ZlbmNlX3NjaGVkdWxlZChqb2ItPnNfZmVuY2UsIE5VTEwpOw0KPiAtCWRybV9zY2hlZF9mZW5j
ZV9maW5pc2hlZChqb2ItPnNfZmVuY2UsIC1FU1JDSCk7DQo+IC0JV0FSTl9PTihqb2ItPnNfZmVu
Y2UtPnBhcmVudCk7DQo+IC0Jam9iLT5zY2hlZC0+b3BzLT5mcmVlX2pvYihqb2IpOw0KPiAtfQ0K
PiAtDQo+IC0vKiBTaWduYWwgdGhlIHNjaGVkdWxlciBmaW5pc2hlZCBmZW5jZSB3aGVuIHRoZSBl
bnRpdHkgaW4gcXVlc3Rpb24gaXMga2lsbGVkLiAqLw0KPiAtc3RhdGljIHZvaWQgZHJtX3NjaGVk
X2VudGl0eV9raWxsX2pvYnNfY2Ioc3RydWN0IGRtYV9mZW5jZSAqZiwNCj4gLQkJCQkJICBzdHJ1
Y3QgZG1hX2ZlbmNlX2NiICpjYikNCj4gLXsNCj4gLQlzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9i
ID0gY29udGFpbmVyX29mKGNiLCBzdHJ1Y3QgZHJtX3NjaGVkX2pvYiwNCj4gLQkJCQkJCSBmaW5p
c2hfY2IpOw0KPiArCXN0cnVjdCBkbWFfZmVuY2UgKmY7DQo+ICAgCXVuc2lnbmVkIGxvbmcgaW5k
ZXg7DQo+ICAgDQo+IC0JZG1hX2ZlbmNlX3B1dChmKTsNCj4gLQ0KPiAgIAkvKiBXYWl0IGZvciBh
bGwgZGVwZW5kZW5jaWVzIHRvIGF2b2lkIGRhdGEgY29ycnVwdGlvbnMgKi8NCj4gICAJeGFfZm9y
X2VhY2goJmpvYi0+ZGVwZW5kZW5jaWVzLCBpbmRleCwgZikgew0KPiAgIAkJc3RydWN0IGRybV9z
Y2hlZF9mZW5jZSAqc19mZW5jZSA9IHRvX2RybV9zY2hlZF9mZW5jZShmKTsNCj4gQEAgLTIyMCw2
ICsyMDksMjEgQEAgc3RhdGljIHZvaWQgZHJtX3NjaGVkX2VudGl0eV9raWxsX2pvYnNfY2Ioc3Ry
dWN0IGRtYV9mZW5jZSAqZiwNCj4gICAJCWRtYV9mZW5jZV9wdXQoZik7DQo+ICAgCX0NCj4gICAN
Cj4gKwlkcm1fc2NoZWRfZmVuY2Vfc2NoZWR1bGVkKGpvYi0+c19mZW5jZSwgTlVMTCk7DQo+ICsJ
ZHJtX3NjaGVkX2ZlbmNlX2ZpbmlzaGVkKGpvYi0+c19mZW5jZSwgLUVTUkNIKTsNCj4gKwlXQVJO
X09OKGpvYi0+c19mZW5jZS0+cGFyZW50KTsNCj4gKwlqb2ItPnNjaGVkLT5vcHMtPmZyZWVfam9i
KGpvYik7DQo+ICt9DQo+ICsNCj4gKy8qIFNpZ25hbCB0aGUgc2NoZWR1bGVyIGZpbmlzaGVkIGZl
bmNlIHdoZW4gdGhlIGVudGl0eSBpbiBxdWVzdGlvbiBpcyBraWxsZWQuICovDQo+ICtzdGF0aWMg
dm9pZCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic19jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmLA0K
PiArCQkJCQkgIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQ0KPiArew0KPiArCXN0cnVjdCBkcm1f
c2NoZWRfam9iICpqb2IgPSBjb250YWluZXJfb2YoY2IsIHN0cnVjdCBkcm1fc2NoZWRfam9iLA0K
PiArCQkJCQkJIGZpbmlzaF9jYik7DQo+ICsNCj4gKwlkbWFfZmVuY2VfcHV0KGYpOw0KPiArDQo+
ICAgCUlOSVRfV09SSygmam9iLT53b3JrLCBkcm1fc2NoZWRfZW50aXR5X2tpbGxfam9ic193b3Jr
KTsNCj4gICAJc2NoZWR1bGVfd29yaygmam9iLT53b3JrKTsNCj4gICB9DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
