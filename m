Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C34E58DAA7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 17:01:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D05173F2F8
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 15:01:19 +0000 (UTC)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by lists.linaro.org (Postfix) with ESMTPS id AAA293ECFE
	for <linaro-mm-sig@lists.linaro.org>; Tue,  9 Aug 2022 15:01:17 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id d187so3013566iof.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 09 Aug 2022 08:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=7Z8Gt1kvQ2qMgFvYLX9L5Os/pwoMppPUG/zH/675HiM=;
        b=JFvhVPx7UTePPnr+5h1qdd0uExGBu1XIZzljf2CKVBl944uYdakgNuSexevzfQy5xJ
         pNz9YMZnA30DuJFGQEHP/5+VG8/mRg2MVDcqJDNEBT/JvoOQVNQu76BOBQ/+Fc/7eLuk
         Utx62Z/6+5qeo2PG8U9Qhz4jMTyvANXy631UFqQpb7ATf0v2YmMmgJc22Su5HUAiKiac
         2Yf6fIOZlmCqWhBaLDy7QFztAJNpd+QTQPyFDnQMJGUx4UT6YWuobE2sT2V6LqVhblAf
         djdEHwmyc7jf9U560o0FCAEQ81/OxM67CD3iWQaqR8pYoKGjchIAve2CwolU58DMo9hJ
         Hggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=7Z8Gt1kvQ2qMgFvYLX9L5Os/pwoMppPUG/zH/675HiM=;
        b=y2UyXKK0/ClUnJhvYXOvhYHKtGByZtkdeEufZkPZCc1QX0e8QK74GJn/s3c/llSVaQ
         ZNYA7Z/qzh5im7ahzkV2MN9155E6+4zoq9+tVVWYVLaQ3Vuv8LrGs/oxdYFu4uzKuBQA
         2/sPfYTp3/eujhS25QuXS8eFxvwvNoNsrPZyvq4fckZBdfJt1XwCaYUZ1RT/+NMor5ro
         wKqjKAd9tQ9UX9vBc9+1g5bGDXhPoKBZDZ2zYMzXPcV1S1h+ZWitTy1D3EBwNMsCJzti
         wxYy1XSqHc5kYWPv4vp+Z975TEQXx1pnoSwPMSEfjSDbjaO+O+XvnSyC7IfgTbpBmACF
         XV+w==
X-Gm-Message-State: ACgBeo1p+lD2MyDFZIGhXLGp8monK/hH9sMADJFoY9wNIgWFQWjlbLiv
	wxDiHLV0Z+nt1cVgq5Pvixn5gO2JBcAQzUZO42Q=
X-Google-Smtp-Source: AA6agR4bp8FvYijrSbc8+bax4hs4cQGMD11ArEow4B4n9Lwp7iHI0dQimsqmJe2io4dmXXYOVXju9V2XDuz49nxUEK4=
X-Received: by 2002:a05:6638:1353:b0:342:9bfb:7382 with SMTP id
 u19-20020a056638135300b003429bfb7382mr10587461jad.129.1660057277054; Tue, 09
 Aug 2022 08:01:17 -0700 (PDT)
MIME-Version: 1.0
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
In-Reply-To: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 9 Aug 2022 08:01:04 -0700
Message-ID: <CAF6AEGusyJAt88A18hFBz-S6An2pVpNoQP0NDk7e0tKw7inAyg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Message-ID-Hash: AILBCOQGDADRMJ4VUZN2QDPHIMNUJWTO
X-Message-ID-Hash: AILBCOQGDADRMJ4VUZN2QDPHIMNUJWTO
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media <linux-media@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, lkml <linux-kernel@vger.kernel.org>, "Sharma, Shashank" <Shashank.Sharma@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AILBCOQGDADRMJ4VUZN2QDPHIMNUJWTO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBGZWIgMTUsIDIwMjEgYXQgMTI6NTggQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4gd3JvdGU6DQo+DQo+IEhpIGd1eXMsDQo+DQo+IHdlIGFyZSBj
dXJyZW50bHkgd29ya2luZyBhbiBGcmVlc3luYyBhbmQgZGlyZWN0IHNjYW4gb3V0IGZyb20gc3lz
dGVtDQo+IG1lbW9yeSBvbiBBTUQgQVBVcyBpbiBBK0EgbGFwdG9wcy4NCj4NCj4gT24gcHJvYmxl
bSB3ZSBzdHVtYmxlZCBvdmVyIGlzIHRoYXQgb3VyIGRpc3BsYXkgaGFyZHdhcmUgbmVlZHMgdG8g
c2Nhbg0KPiBvdXQgZnJvbSB1bmNhY2hlZCBzeXN0ZW0gbWVtb3J5IGFuZCB3ZSBjdXJyZW50bHkg
ZG9uJ3QgaGF2ZSBhIHdheSB0bw0KPiBjb21tdW5pY2F0ZSB0aGF0IHRocm91Z2ggRE1BLWJ1Zi4N
Cj4NCj4gRm9yIG91ciBzcGVjaWZpYyB1c2UgY2FzZSBhdCBoYW5kIHdlIGFyZSBnb2luZyB0byBp
bXBsZW1lbnQgc29tZXRoaW5nDQo+IGRyaXZlciBzcGVjaWZpYywgYnV0IHRoZSBxdWVzdGlvbiBp
cyBzaG91bGQgd2UgaGF2ZSBzb21ldGhpbmcgbW9yZQ0KPiBnZW5lcmljIGZvciB0aGlzPw0KDQpJ
J20gYSBiaXQgbGF0ZSB0byB0aGlzIHBhcnR5IChhbmQgc29ycnksIEkgZGlkbid0IHJlYWQgdGhl
IGVudGlyZQ0KdGhyZWFkKSwgYnV0IGl0IG9jY3VycyB0byBtZSB0aGF0IGRtYWJ1ZiBtbWFwX2lu
Zm9bMV0gd291bGQgYWxzbyBnZXQNCnlvdSB3aGF0IHlvdSBuZWVkLCBpZS4gZGlzcGxheSBpbXBv
cnRpbmcgZG1hLWJ1ZiBjb3VsZCBjaGVjayB3aGV0aGVyDQp0aGUgZXhwb3J0ZXIgaXMgbWFwcGlu
ZyBjYWNoZWQgb3Igbm90LCBhbmQgcmVqZWN0IHRoZSBpbXBvcnQgaWYNCm5lZWRlZD8NCg0KWzFd
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80OTYwNjkvP3Nlcmllcz0x
MDY4NDcmcmV2PTINCg0KPiBBZnRlciBhbGwgdGhlIHN5c3RlbSBtZW1vcnkgYWNjZXNzIHBhdHRl
cm4gaXMgYSBQQ0llIGV4dGVuc2lvbiBhbmQgYXMNCj4gc3VjaCBzb21ldGhpbmcgZ2VuZXJpYy4N
Cj4NCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0DQo+IGRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
