Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D90AB80C70D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Dec 2023 11:47:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF0EB43FFC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Dec 2023 10:47:20 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id 27B743F241
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Dec 2023 10:47:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="TiILrcB/";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40c3fe6c08fso19361025e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Dec 2023 02:47:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702291630; x=1702896430; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ce0zbxA04eGm5L5oadZ3wbq0BpUtWOBHwT553G24fMY=;
        b=TiILrcB/Mrw7GSUhDA9Q65upei7iHRXf2b29bReWtCtTjoVm2w3IyjoUkc0vWkBF1I
         gTDdOKrRYthS8TicfhVb3lKsHwYVWyQL2YLXi6z4vB+10toAzhX2JllvrLMU5QowKhPr
         RUprFZcKKKxNtEKHBFH2fXXc1/utxI03NT2H0AxkgLVhw6Yv5+xZRfliaqdsh0bdS7A+
         dJaXXeclR6gpXCNCZ+BRHCU19xLHxVYJLH6UnpUH5xzLVUYCwRdF5TDLUyfuyHwrclKj
         WEy9PTUj0QP+r9M3vw4nRBEUfdO/576V+U3C/0Y9eIlqUecg0gVTh5aulYFRIp2Wcsgb
         OPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702291630; x=1702896430;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ce0zbxA04eGm5L5oadZ3wbq0BpUtWOBHwT553G24fMY=;
        b=pdn2zH6MJKDzU7vaOjKLEKDTGxeTr9NNWx+gQtkZPbTbSFcrDfIf2ftFV1u2sEN0vu
         eGSUKT2enXuLiyjkyTz97Hwf3zuH859Mb4bH2iFhTb1xZAbUnJYJEfUgTlxMWHdWkIfN
         3/gP1t/pPoiLDRrUpPfFsDdkz/eEu8LNnm1hP2ebRmTCnoGC33YlWLJyX9/D3yyXpqBf
         2AAHs3oItFEzDIhyuiNN1+yI7+dV2l8lMvaIqYXXc0mGaIxQ/MGLmRFzMpQV1YUPRpmi
         pcZzyvhwmDZALfhMDNgxKrUnG1tC0xwHi3S5oVaVl7Ygpy5d5KDAgQNLWNj5UemMJWOU
         M+FA==
X-Gm-Message-State: AOJu0YzEF/dUAUKobEANmv3DC+oU86jdg39syIc69+uOPBoULoha1u1J
	N6/6DzbvaFEUqvIAzNANOo8=
X-Google-Smtp-Source: AGHT+IFDLSWtwRz+Mep0P2wHU03mEf8uT1tA4CK01mVy2soy6G7lwo395lYfptDQ0/ItbXxPbv0GHA==
X-Received: by 2002:a05:600c:4195:b0:40c:243f:c36a with SMTP id p21-20020a05600c419500b0040c243fc36amr1555228wmh.206.1702291629926;
        Mon, 11 Dec 2023 02:47:09 -0800 (PST)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id q14-20020a05600c46ce00b0040c4c9c52a3sm888618wmo.12.2023.12.11.02.47.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 02:47:09 -0800 (PST)
Message-ID: <9637309c-af25-4117-be4f-b8cbdc087d60@gmail.com>
Date: Mon, 11 Dec 2023 11:47:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20231205190234.371322-1-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20231205190234.371322-1-robdclark@gmail.com>
X-Rspamd-Queue-Id: 27B743F241
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail-wm1-f46.google.com:rdns,mail-wm1-f46.google.com:helo];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,amd.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,linaro.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.46:from];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: MTJPE2CLMKLIUEKWQHQBLYJSCKEEAQG2
X-Message-ID-Hash: MTJPE2CLMKLIUEKWQHQBLYJSCKEEAQG2
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@chromium.org>, Luben Tuikov <ltuikov89@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_?:buf|fence|resvb" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MTJPE2CLMKLIUEKWQHQBLYJSCKEEAQG2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDUuMTIuMjMgdW0gMjA6MDIgc2NocmllYiBSb2IgQ2xhcms6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4NCj4gQ29udGFpbmVyIGZlbmNlcyBoYXZlIGJ1
cm5lciBjb250ZXh0cywgd2hpY2ggbWFrZXMgdGhlIHRyaWNrIHRvIHN0b3JlIGF0DQo+IG1vc3Qg
b25lIGZlbmNlIHBlciBjb250ZXh0IHNvbWV3aGF0IHVzZWxlc3MgaWYgd2UgZG9uJ3QgdW53cmFw
IGFycmF5IG9yDQo+IGNoYWluIGZlbmNlcy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJr
IDxyb2JkY2xhcmtAY2hyb21pdW0ub3JnPg0KDQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQo+IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgNDcgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0N
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyBi
L2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+IGluZGV4IDk3NjI0NjRl
M2Y5OS4uMTZiNTUwOTQ5YzU3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1
bGVyL3NjaGVkX21haW4uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVk
X21haW4uYw0KPiBAQCAtNTIsNiArNTIsNyBAQA0KPiAgICNpbmNsdWRlIDxsaW51eC93YWl0Lmg+
DQo+ICAgI2luY2x1ZGUgPGxpbnV4L3NjaGVkLmg+DQo+ICAgI2luY2x1ZGUgPGxpbnV4L2NvbXBs
ZXRpb24uaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UtdW53cmFwLmg+DQo+ICAgI2lu
Y2x1ZGUgPGxpbnV4L2RtYS1yZXN2Lmg+DQo+ICAgI2luY2x1ZGUgPHVhcGkvbGludXgvc2NoZWQv
dHlwZXMuaD4NCj4gICANCj4gQEAgLTY4NCwyNyArNjg1LDE0IEBAIHZvaWQgZHJtX3NjaGVkX2pv
Yl9hcm0oc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYikNCj4gICB9DQo+ICAgRVhQT1JUX1NZTUJP
TChkcm1fc2NoZWRfam9iX2FybSk7DQo+ICAgDQo+IC0vKioNCj4gLSAqIGRybV9zY2hlZF9qb2Jf
YWRkX2RlcGVuZGVuY3kgLSBhZGRzIHRoZSBmZW5jZSBhcyBhIGpvYiBkZXBlbmRlbmN5DQo+IC0g
KiBAam9iOiBzY2hlZHVsZXIgam9iIHRvIGFkZCB0aGUgZGVwZW5kZW5jaWVzIHRvDQo+IC0gKiBA
ZmVuY2U6IHRoZSBkbWFfZmVuY2UgdG8gYWRkIHRvIHRoZSBsaXN0IG9mIGRlcGVuZGVuY2llcy4N
Cj4gLSAqDQo+IC0gKiBOb3RlIHRoYXQgQGZlbmNlIGlzIGNvbnN1bWVkIGluIGJvdGggdGhlIHN1
Y2Nlc3MgYW5kIGVycm9yIGNhc2VzLg0KPiAtICoNCj4gLSAqIFJldHVybnM6DQo+IC0gKiAwIG9u
IHN1Y2Nlc3MsIG9yIGFuIGVycm9yIG9uIGZhaWxpbmcgdG8gZXhwYW5kIHRoZSBhcnJheS4NCj4g
LSAqLw0KPiAtaW50IGRybV9zY2hlZF9qb2JfYWRkX2RlcGVuZGVuY3koc3RydWN0IGRybV9zY2hl
ZF9qb2IgKmpvYiwNCj4gLQkJCQkgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ICtzdGF0aWMg
aW50IGRybV9zY2hlZF9qb2JfYWRkX3NpbmdsZV9kZXBlbmRlbmN5KHN0cnVjdCBkcm1fc2NoZWRf
am9iICpqb2IsDQo+ICsJCQkJCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gICB7
DQo+ICAgCXN0cnVjdCBkbWFfZmVuY2UgKmVudHJ5Ow0KPiAgIAl1bnNpZ25lZCBsb25nIGluZGV4
Ow0KPiAgIAl1MzIgaWQgPSAwOw0KPiAgIAlpbnQgcmV0Ow0KPiAgIA0KPiAtCWlmICghZmVuY2Up
DQo+IC0JCXJldHVybiAwOw0KPiAtDQo+ICAgCS8qIERlZHVwbGljYXRlIGlmIHdlIGFscmVhZHkg
ZGVwZW5kIG9uIGEgZmVuY2UgZnJvbSB0aGUgc2FtZSBjb250ZXh0Lg0KPiAgIAkgKiBUaGlzIGxl
dHMgdGhlIHNpemUgb2YgdGhlIGFycmF5IG9mIGRlcHMgc2NhbGUgd2l0aCB0aGUgbnVtYmVyIG9m
DQo+ICAgCSAqIGVuZ2luZXMgaW52b2x2ZWQsIHJhdGhlciB0aGFuIHRoZSBudW1iZXIgb2YgQk9z
Lg0KPiBAQCAtNzI4LDYgKzcxNiwzNSBAQCBpbnQgZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5j
eShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iLA0KPiAgIA0KPiAgIAlyZXR1cm4gcmV0Ow0KPiAg
IH0NCj4gKw0KPiArLyoqDQo+ICsgKiBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5IC0gYWRk
cyB0aGUgZmVuY2UgYXMgYSBqb2IgZGVwZW5kZW5jeQ0KPiArICogQGpvYjogc2NoZWR1bGVyIGpv
YiB0byBhZGQgdGhlIGRlcGVuZGVuY2llcyB0bw0KPiArICogQGZlbmNlOiB0aGUgZG1hX2ZlbmNl
IHRvIGFkZCB0byB0aGUgbGlzdCBvZiBkZXBlbmRlbmNpZXMuDQo+ICsgKg0KPiArICogTm90ZSB0
aGF0IEBmZW5jZSBpcyBjb25zdW1lZCBpbiBib3RoIHRoZSBzdWNjZXNzIGFuZCBlcnJvciBjYXNl
cy4NCj4gKyAqDQo+ICsgKiBSZXR1cm5zOg0KPiArICogMCBvbiBzdWNjZXNzLCBvciBhbiBlcnJv
ciBvbiBmYWlsaW5nIHRvIGV4cGFuZCB0aGUgYXJyYXkuDQo+ICsgKi8NCj4gK2ludCBkcm1fc2No
ZWRfam9iX2FkZF9kZXBlbmRlbmN5KHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsDQo+ICsJCQkJ
IHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiArew0KPiArCXN0cnVjdCBkbWFfZmVuY2VfdW53
cmFwIGl0ZXI7DQo+ICsJc3RydWN0IGRtYV9mZW5jZSAqZjsNCj4gKwlpbnQgcmV0ID0gMDsNCj4g
Kw0KPiArCWRtYV9mZW5jZV91bndyYXBfZm9yX2VhY2ggKGYsICZpdGVyLCBmZW5jZSkgew0KPiAr
CQlkbWFfZmVuY2VfZ2V0KGYpOw0KPiArCQlyZXQgPSBkcm1fc2NoZWRfam9iX2FkZF9zaW5nbGVf
ZGVwZW5kZW5jeShqb2IsIGYpOw0KPiArCQlpZiAocmV0KQ0KPiArCQkJYnJlYWs7DQo+ICsJfQ0K
PiArDQo+ICsJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+ICsNCj4gKwlyZXR1cm4gcmV0Ow0KPiAr
fQ0KPiAgIEVYUE9SVF9TWU1CT0woZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeSk7DQo+ICAg
DQo+ICAgLyoqDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
