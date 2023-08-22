Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CE4784177
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Aug 2023 15:01:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 588EA40F18
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Aug 2023 13:01:58 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by lists.linaro.org (Postfix) with ESMTPS id B473A3F19C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Aug 2023 13:01:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=SxYBFdhM;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.218.47 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-99cdb0fd093so606865266b.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Aug 2023 06:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692709312; x=1693314112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y7uRU2yw0+QtivPyEBeooJ4wrCrosqZ6/dwHcBFdBSs=;
        b=SxYBFdhM+FN23Ke1aROld8E/mnXIfOwf5+fRpRypDygmsbtwQNFtsig/wbuvh9sjUN
         L2G5i+mPvvugxVV35FJxdLwOCJR/qhzoSUIMkAVoyX1+oMvJFBQdjIWKvbnu4pmKtljj
         v5rOTduUITSQa2eqYwHNgEKPmaClMxMhjfeJDe5pfHHJGbBKuIYmhzHh/f86RBq5U9vD
         HRqZQyJJVFsD7WkBt1gHW8mGmq1ciGbhS89jfS3df1aBJglggcDOTXdobDvJTfE2DgWu
         OYLiuL2+P/sSIP0zWYfJ27SksOKF037+poDkPRE+JLJezZijHS2CFstFD8fWsV2ssv7A
         ag+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692709312; x=1693314112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y7uRU2yw0+QtivPyEBeooJ4wrCrosqZ6/dwHcBFdBSs=;
        b=GR+XgaeHGQnAZIMei2xksKwUu4HybfEMiLJxmalwha31wAtuVdL6DdJ4obH6x56GlZ
         AGA0Up9y/EcfTP9hzZuHRffVPt5hOtryEwlqGr8gpjJtr0W21z6yHpHnNg8Pjix3JiNs
         2k5kf9qCKBJMtFA7rF/HTqSj6eTTaeINUsI4Y5/RhMEPwsoMtb6006n45MKjKQ5s7r3D
         STyKRDjMGTERG22MHc1YRRDGFFdRQC/wiiZnsj0Iz4Uw//eR0yAQsJYLQlJE/U1WTYG2
         ThLMuh8qcqMF/ebpv4w+92bX869SGs4pj3zAul9PioB2I3WPQbkieOpHEJvZiNo5cbBK
         s9Bw==
X-Gm-Message-State: AOJu0YyHz2p5PthXUGgVSstZ6LSPnJTuOYBXTw7W4QlWCZYdnp4nkYsf
	erc7YE5qqZ1MswdhKuT5c9w=
X-Google-Smtp-Source: AGHT+IFmuCYEzWICY1O6jlC2x150UebiypigGJwRb0YaxYsFDA+/ZkpjfqzxgUL6KbUmgjyqPmqpzQ==
X-Received: by 2002:a17:906:51cb:b0:99c:6bc8:e84b with SMTP id v11-20020a17090651cb00b0099c6bc8e84bmr8155533ejk.58.1692709312343;
        Tue, 22 Aug 2023 06:01:52 -0700 (PDT)
Received: from [192.168.178.25] ([185.254.126.155])
        by smtp.gmail.com with ESMTPSA id v18-20020a170906b01200b0098e78ff1a87sm8221693ejy.120.2023.08.22.06.01.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 06:01:51 -0700 (PDT)
Message-ID: <a05e0c2e-fd62-4a8e-9fa4-dffaf86f7730@gmail.com>
Date: Tue, 22 Aug 2023 15:01:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230818145939.39697-1-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20230818145939.39697-1-robdclark@gmail.com>
X-Rspamd-Queue-Id: B473A3F19C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.47:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: OVZVGGMTPCLTFZYKFQPPLZWQKLKJN3QW
X-Message-ID-Hash: OVZVGGMTPCLTFZYKFQPPLZWQKLKJN3QW
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@chromium.org>, Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Chris Wilson <chris@chris-wilson.co.uk>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf/sw_sync: Avoid recursive lock during fence signal
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OVZVGGMTPCLTFZYKFQPPLZWQKLKJN3QW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTguMDguMjMgdW0gMTY6NTkgc2NocmllYiBSb2IgQ2xhcms6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4NCj4gSWYgYSBzaWduYWwgY2FsbGJhY2sgcmVs
ZWFzZXMgdGhlIHN3X3N5bmMgZmVuY2UsIHRoYXQgd2lsbCB0cmlnZ2VyIGENCj4gZGVhZGxvY2sg
YXMgdGhlIHRpbWVsaW5lX2ZlbmNlX3JlbGVhc2UgcmVjdXJzZXMgb250byB0aGUgZmVuY2UtPmxv
Y2sNCj4gKHVzZWQgYm90aCBmb3Igc2lnbmFsaW5nIGFuZCB0aGUgdGhlIHRpbWVsaW5lIHRyZWUp
Lg0KPg0KPiBUbyBhdm9pZCB0aGF0LCB0ZW1wb3JhcmlseSBob2xkIGFuIGV4dHJhIHJlZmVyZW5j
ZSB0byB0aGUgc2lnbmFsbGVkDQo+IGZlbmNlcyB1bnRpbCBhZnRlciB3ZSBkcm9wIHRoZSBsb2Nr
Lg0KPg0KPiAoVGhpcyBpcyBhbiBhbHRlcm5hdGl2ZSBpbXBsZW1lbnRhdGlvbiBvZiBodHRwczov
L3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExNjY0NzE3Lw0KPiB3aGljaCBhdm9pZHMgc29t
ZSBwb3RlbnRpYWwgVUFGIGlzc3VlcyB3aXRoIHRoZSBvcmlnaW5hbCBwYXRjaC4pDQo+DQo+IHYy
OiBSZW1vdmUgbm93IG9ic29sZXRlIGNvbW1lbnQsIHVzZSBsaXN0X21vdmVfdGFpbCgpIGFuZA0K
PiAgICAgIGxpc3RfZGVsX2luaXQoKQ0KPg0KPiBSZXBvcnRlZC1ieTogQmFzIE5pZXV3ZW5odWl6
ZW4gPGJhc0BiYXNuaWV1d2VuaHVpemVuLm5sPg0KPiBGaXhlczogZDNjNmRkMWZiMzBkICgiZG1h
LWJ1Zi9zd19zeW5jOiBTeW5jaHJvbml6ZSBzaWduYWwgdnMgc3luY3B0IGZyZWUiKQ0KPiBTaWdu
ZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQoNClJldmlld2Vk
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0t
DQo+ICAgZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyB8IDE4ICsrKysrKysrKy0tLS0tLS0tLQ0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jIGIvZHJpdmVycy9kbWEtYnVm
L3N3X3N5bmMuYw0KPiBpbmRleCA2M2YwYWViNjZkYjYuLmYwYTM1Mjc3ZmQ4NCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYv
c3dfc3luYy5jDQo+IEBAIC0xOTEsNiArMTkxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFf
ZmVuY2Vfb3BzIHRpbWVsaW5lX2ZlbmNlX29wcyA9IHsNCj4gICAgKi8NCj4gICBzdGF0aWMgdm9p
ZCBzeW5jX3RpbWVsaW5lX3NpZ25hbChzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLCB1bnNpZ25l
ZCBpbnQgaW5jKQ0KPiAgIHsNCj4gKwlMSVNUX0hFQUQoc2lnbmFsbGVkKTsNCj4gICAJc3RydWN0
IHN5bmNfcHQgKnB0LCAqbmV4dDsNCj4gICANCj4gICAJdHJhY2Vfc3luY190aW1lbGluZShvYmop
Ow0KPiBAQCAtMjAzLDIxICsyMDQsMjAgQEAgc3RhdGljIHZvaWQgc3luY190aW1lbGluZV9zaWdu
YWwoc3RydWN0IHN5bmNfdGltZWxpbmUgKm9iaiwgdW5zaWduZWQgaW50IGluYykNCj4gICAJCWlm
ICghdGltZWxpbmVfZmVuY2Vfc2lnbmFsZWQoJnB0LT5iYXNlKSkNCj4gICAJCQlicmVhazsNCj4g
ICANCj4gLQkJbGlzdF9kZWxfaW5pdCgmcHQtPmxpbmspOw0KPiArCQlkbWFfZmVuY2VfZ2V0KCZw
dC0+YmFzZSk7DQo+ICsNCj4gKwkJbGlzdF9tb3ZlX3RhaWwoJnB0LT5saW5rLCAmc2lnbmFsbGVk
KTsNCj4gICAJCXJiX2VyYXNlKCZwdC0+bm9kZSwgJm9iai0+cHRfdHJlZSk7DQo+ICAgDQo+IC0J
CS8qDQo+IC0JCSAqIEEgc2lnbmFsIGNhbGxiYWNrIG1heSByZWxlYXNlIHRoZSBsYXN0IHJlZmVy
ZW5jZSB0byB0aGlzDQo+IC0JCSAqIGZlbmNlLCBjYXVzaW5nIGl0IHRvIGJlIGZyZWVkLiBUaGF0
IG9wZXJhdGlvbiBoYXMgdG8gYmUNCj4gLQkJICogbGFzdCB0byBhdm9pZCBhIHVzZSBhZnRlciBm
cmVlIGluc2lkZSB0aGlzIGxvb3AsIGFuZCBtdXN0DQo+IC0JCSAqIGJlIGFmdGVyIHdlIHJlbW92
ZSB0aGUgZmVuY2UgZnJvbSB0aGUgdGltZWxpbmUgaW4gb3JkZXIgdG8NCj4gLQkJICogcHJldmVu
dCBkZWFkbG9ja2luZyBvbiB0aW1lbGluZS0+bG9jayBpbnNpZGUNCj4gLQkJICogdGltZWxpbmVf
ZmVuY2VfcmVsZWFzZSgpLg0KPiAtCQkgKi8NCj4gICAJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2Vk
KCZwdC0+YmFzZSk7DQo+ICAgCX0NCj4gICANCj4gICAJc3Bpbl91bmxvY2tfaXJxKCZvYmotPmxv
Y2spOw0KPiArDQo+ICsJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHB0LCBuZXh0LCAmc2lnbmFs
bGVkLCBsaW5rKSB7DQo+ICsJCWxpc3RfZGVsX2luaXQoJnB0LT5saW5rKTsNCj4gKwkJZG1hX2Zl
bmNlX3B1dCgmcHQtPmJhc2UpOw0KPiArCX0NCj4gICB9DQo+ICAgDQo+ICAgLyoqDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
