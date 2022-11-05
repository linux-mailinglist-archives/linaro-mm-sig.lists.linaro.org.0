Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F02DC61D8A4
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 09:12:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CABB03F5C8
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  5 Nov 2022 08:12:57 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id 31C3E3EC14
	for <linaro-mm-sig@lists.linaro.org>; Sat,  5 Nov 2022 08:12:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Hpkuv3Fu;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.42 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id u24so10551925edd.13
        for <linaro-mm-sig@lists.linaro.org>; Sat, 05 Nov 2022 01:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bsgs5v64dtrb9BK/zWIG40Cs+14Xzy/n1UZhAs2SA7Y=;
        b=Hpkuv3FuzjPSSr0s6F44u38vgcNHlm+qRMjeYeN7DIsx21Rsy9qLhJ5oEBuE8cQ/7f
         gOpz2Bj3B67JNdQamqt+Ozf3edx8hu0xz2RHktD9bpO+nylhjuNAMYwnNwIo6b8qnozZ
         fg+ig/rNBELojRZmBxz/AFPKmosHpIsdl3Ju11XgzLo3q5iaKErlZ2h+34ofKgjDmYMx
         u2/wfAHx5OKbtXlQlZ6UHEX9imLI/gmldPXHirM2E3tNxpKd9wKRRnpSDehfprqIsuRW
         iIw7B+dKVDa8x/owDtPwtAVGd1JZmZFj1TbtOAEO2j4z80eTYAYboWNN9dEvDbq0JYlh
         ivww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bsgs5v64dtrb9BK/zWIG40Cs+14Xzy/n1UZhAs2SA7Y=;
        b=NW1D0Tnwa/Mezch4yMwvmciokfI8dJKt7EziBZjmKuSZch+EFqAMZXPSjMy8XEQ63M
         m6h6ZKARoasoXfkvJuVihsajfe3OcFyQTN9M5Hz99xFxkLiGQc8qLdy+NUGt/oOaa7SO
         Gxg05hX1fa3hXF/xXdKHV+4ftnA1zHTMc0716tuQsafbLcRz/QvHGV2l+TmDf6/Gdvl5
         7pCeFFvleikwQidZ7s8luCnvSIiXQrou/BjHye6RpBneX/dxJtszcI5Dz/mrtFKvMBjM
         G/jFCmLJ7RypzR5Vg2yK0vN9Oz9ZePECWYV2MslGEBg9qv492tybO/h36vwntsgWjQya
         Rn2A==
X-Gm-Message-State: ACrzQf0k2HjtTOTeRQ70bIhYkMs04R91hb6okhdEsuR/Y2wuC+gZ8vmt
	H1gNL8WI3cx0oW5I6kbgAtI=
X-Google-Smtp-Source: AMsMyM7fGIPxzSTLIQa+n/MHhyw5CshqI5Un4z11aCmNOAlJoBCo/++l8HBiFLG3r6/zKNcOCfRZrQ==
X-Received: by 2002:aa7:c956:0:b0:43b:206d:c283 with SMTP id h22-20020aa7c956000000b0043b206dc283mr39516948edt.381.1667635959118;
        Sat, 05 Nov 2022 01:12:39 -0700 (PDT)
Received: from ?IPV6:2a02:908:1256:79a0:9819:17f5:ee0c:a9e6? ([2a02:908:1256:79a0:9819:17f5:ee0c:a9e6])
        by smtp.gmail.com with ESMTPSA id cm21-20020a0564020c9500b00461a6997c5dsm804192edb.83.2022.11.05.01.12.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Nov 2022 01:12:38 -0700 (PDT)
Message-ID: <d50ea531-c5cf-81d5-9cc5-0ab92b39232d@gmail.com>
Date: Sat, 5 Nov 2022 09:12:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Steven Rostedt <rostedt@goodmis.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20221104054053.431922658@goodmis.org>
 <20221104054914.085569465@goodmis.org>
 <20221104015444.57f73efb@rorschach.local.home>
 <d916e29d-d098-c3f3-940a-37be6772ecb5@amd.com>
 <20221104145804.4ec8404e@rorschach.local.home>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20221104145804.4ec8404e@rorschach.local.home>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 31C3E3EC14
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a02:908:1256:79a0:9819:17f5:ee0c:a9e6:received];
	NEURAL_HAM(-0.00)[-0.899];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.42:from]
Message-ID-Hash: FBUW7GYJ6H2262D4ECVNXDLCF3K4ZW2P
X-Message-ID-Hash: FBUW7GYJ6H2262D4ECVNXDLCF3K4ZW2P
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Anna-Maria Gleixner <anna-maria@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC][PATCH v3 12/33] timers: dma-buf: Use timer_shutdown_sync() before freeing timer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FBUW7GYJ6H2262D4ECVNXDLCF3K4ZW2P/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDQuMTEuMjIgdW0gMTk6NTggc2NocmllYiBTdGV2ZW4gUm9zdGVkdDoNCj4gT24gRnJpLCA0
IE5vdiAyMDIyIDA4OjE1OjUzICswMTAwDQo+IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+Pj4gaW5kZXggZmI2ZTBhNmFlMmM5Li41ZDNlN2I1
MDM1MDEgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQo+
Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQo+Pj4gQEAgLTQxMiw3ICs0
MTIsNyBAQCBzdGF0aWMgaW50IHRlc3Rfd2FpdF90aW1lb3V0KHZvaWQgKmFyZykNCj4+PiAgICAN
Cj4+PiAgICAJZXJyID0gMDsNCj4+PiAgICBlcnJfZnJlZToNCj4+PiAtCWRlbF90aW1lcl9zeW5j
KCZ3dC50aW1lcik7DQo+Pj4gKwl0aW1lcl9zaHV0ZG93bl9zeW5jKCZ3dC50aW1lcik7DQo+PiBN
aG0sIHdoYXQgZXhhY3RseSBpcyB0aGUgYmVuZWZpdCBvZiByZW5hbWluZyB0aGUgZnVuY3Rpb24/
DQo+Pg0KPj4gTm90IHRoYXQgSSdtIGFnYWluc3QgdGhlIGNoYW5nZSwgYnV0IG15IHRoaW5raW5n
IGlzIG1vcmUgaWYgdGhlcmUgYXJlDQo+PiBtb3JlIGZ1bmN0aW9ucyB3aGljaCBkb24ndCByZS1h
cm0gdGhlIHRpbWUgdGhhbiB0aG9zZSB3aGljaCBkbyB0aGF0IHRoZW4NCj4+IHdoeSBub3QgZm9y
YmlkIGl0IGluIGdlbmVyYWw/DQo+IFRpbWVycyBhcmUgbW9yZSBvZnRlbiByZS1hcm1lZCB0aGVu
IG5vdC4gSSBoYWQgdG8gbG9vayBmb3IgdGhlDQo+IGxvY2F0aW9ucyB3aGVyZSBkZWxfdGltZXIq
KCkgd2FzIGNhbGxlZCBqdXN0IGJlZm9yZSBmcmVlaW5nLCBhbmQgb3RoZXINCj4gbG9jYXRpb25z
IHdoZXJlIHRoZXkgYXJlIGZyZWVkIGxhdGVyLg0KPg0KPiBJIGRpZG4ndCByZW5hbWUgZGVsX3Rp
bWVyX3N5bmMoKSB0byB0aW1lcl9zaHV0ZG93bl9zeW5jKCksIHRoaXMgdmVyc2lvbg0KPiByZW5h
bWVkIHRoZSBuZXcgImRlbF90aW1lcl9zaHV0ZG93bigpIiB0byAidGltZXJfc2h1dGRvd25fc3lu
YygpIi4NCj4NCj4gTWF5YmUgSSdtIGp1c3QgY29uZnVzZWQgYXQgd2hhdCB5b3UgYXJlIGFza2lu
Zy4NCg0KTm8sIHRoYXQgZXhwbGFpbnMgaXQgYSBiaXQgYmV0dGVyLiBJIHdhcyBqdXN0IHdvbmRl
cmluZyB3aGF0IGV4YWN0bHkgdGhlIA0KZGlmZmVyZW50IHRvIGRlbF90aW1lcl9zeW5jKCkgaXMu
DQoNCk1heWJlIHNob3J0ZW4gdGhlIHN1bW1hcnkgaW4gdGhlIGNvdmVyIGxldHRlciBhIGJpdC4g
VGhlIGhpc3RvcnkgaG93IA0KdGhpcyBjaGFuZ2UgY2FtZSB0byBiZSBpcyBub3QgYXMgaW50ZXJl
c3RpbmcgYXMgd2h5IHdlIGFyZSBjaGFuZ2luZyANCnNvbWV0aGluZy4NCg0KUmVnYXJkcywNCkNo
cmlzdGlhbi4NCg0KPg0KPiAtLSBTdGV2ZQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiBMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
