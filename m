Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIdSBkGjC2ooKQUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:39:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD915750A5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 01:39:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B673440475
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 23:39:43 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 16E1B4095B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 23:39:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=VWxqc5CZ;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488940ccfa6so855e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 16:39:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779147561; cv=none;
        d=google.com; s=arc-20240605;
        b=HFAfHf3Pil48/wkrlCUb23sX5zl+G5hjZDOfKX9dHSdUCa+NM/F//2ktnJEILfqYUc
         ZPkLlqJji6AX3+qyoFVhIV19JWtD3JDKgy1CRubpIapeSqqX1ifROKYPc8gvWxKVS2eq
         E7IqgRRb+RboFqpwGD7DbB4RO2fNXfIpM2DJRLHOFGSwJFqzEYDYS4jJv46X31lWps4D
         LJu6gMRtxVPYzBP6ITEa1bCKfGgfXJGXcBlDDodiyfIJAP+NssiWqR/zqF0xlP8ioJMI
         tcxchFjg1Y0s5BDJXOwoxEKwPA2IB3tZrTf3i4mBS29oPDMRn+K3Xdkkc1CCyPwKQpML
         EbNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RlgWSbw/qDy0FEEgyFzO7eBFoHyyLd7vQDOSYcU9a5s=;
        fh=RSBNHBZ57CFtdlhNJnFhSMRbTjS8GNzmHuBVz7sbETI=;
        b=UiZj6cCAaKFOKuudqqbJWQPhWP9eSlCpUdivBRTJR3CNch9F23k07GEpfJcHmfO/H9
         vk6+xl9xAwbqZIXpwB+iWsDRxO3OXupxjGCGPHzEXLLEia7ox9l0DDcX2XK8GutNyG0K
         8NZKr4XoFwkTJtkFxEsrpToQsvRR+R+3if0uY0f5i4e0U4ef3GLSFNYYRjsrJiVLbt8j
         i7wzVjJAzd5bPrqq5q4JFhBNru3jZ9xZGFWgMlGvTE9tX7CeXlX2pxx+uxizTh5tZXb7
         OJiHTezsaesZ04Vi9/PTlrdwW5wLrzIT0zPlMMN0hyUzxsic6BKZyAgL5Z25v5rDKptD
         355A==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779147561; x=1779752361; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RlgWSbw/qDy0FEEgyFzO7eBFoHyyLd7vQDOSYcU9a5s=;
        b=VWxqc5CZDW+Tj2v9syp/Vd5j1r8/L/Rp2/qKDmxmKp95lcwcoLcOvQq1gaiBk/XsQz
         xgX+DxI0J0bsC2NCrqsKNXI/VZkvP4o4bUGHo+/sIOL6xBL9Lf80qyH2DKsRr/whFR7W
         u5fCMhayNSauaycrvSHhb2t9hT9sn5UO1IboyNlDYldOBkSwyCPgT5NTEcR0GGcXHJ6q
         811WTp9mgC+todja+ulQlyUfokTb7zpWo2GUd1tgtmoMtK+pT5CEXS+IXtqGh7vOJYuZ
         z2QWjVgd7immgPOulsxv6jwQEQ2UOTr2Gn7tkAPW/SmbYTGK2Z094YaeaB+6c2pWtanx
         hFQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779147561; x=1779752361;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RlgWSbw/qDy0FEEgyFzO7eBFoHyyLd7vQDOSYcU9a5s=;
        b=M0BvfpG8mMkKFEPq2evZkcrp4TXxeRhFajjpfNWDL21A3LZze1WFUBdHo6z8UJmlms
         LTjRP15Uanerd9PyploxFJiCw7KA2Eobt17jRoT+EHiiqv0Om5EcLLrqI5o8gHNZn1ru
         KKpGVPLHleMiItIBUNC55RXmzlW4cH1ZEhFEXOEzRFxU52GIJ9uBeJy+xfjJODB400iJ
         C1eIglJ7RZjNSot+FjxsM0WWrIPhRgJB58Ztt2nYM0h2bZzGemdc5LEI+YV6ETRkkcRt
         PnMxxcV3K8WwanO810DW9G04A0ASwXKe6uawj40XxNTmfsaSwG119tiWLeA05IvAFZuc
         voqA==
X-Forwarded-Encrypted: i=1; AFNElJ8f9mFqrbciALKXlb8kPudP0d3wNXi3gSM9v9wVc0A85Tehrs81XA1LfrHbm328DHevp6sY5joOQPQXygLb@lists.linaro.org
X-Gm-Message-State: AOJu0YyGJ0qXV4yDSzpUzC+pQck3bzzTEa+B2jsFySZ+XH+JUofIa13Z
	NNNE9obVC7Kyz9PZovx58xtJqb449e+r/6s9k4ELCoBuig2TXza7Er3FQBP8WyamsZyZL5WWsRj
	CLYbagfxM73jy26sTLJi7Dp7XqedM2RFJX1kDI92g
X-Gm-Gg: Acq92OH5pPZaXkKswrqLzUBlHUeXXwCGkmSIelSJmTSCBPO1ded9h1Emw9SwyK2riD6
	YGN310PgIhS/NaqYKAj6nRxswnkDkvNsNCd8KeiXb8UNIUDehYNIM5qV565yijkB2NWnXhpKEXp
	pK+0RTRJp623FfOMJ2czvU8NemeKt63exRil8CjhusQAlx7Z/bZtuaOq374/JkTMsQMu148xEWQ
	vHV+aWhwOm6lR3AhY5NuB3nSbSvNMTVQ3dakYH7NIn0V1cofP2aQa4/2FkD4EPc5HpuEt59ZntQ
	KlYZ6uev7guBpUJPBfrDH0yJ6y/FRP/j6VVPqRkb7KcwkQVr
X-Received: by 2002:a05:600c:534b:b0:48f:d634:b18d with SMTP id
 5b1f17b1804b1-48ffa5e1260mr1775015e9.8.1779147560622; Mon, 18 May 2026
 16:39:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CAGsJ_4zjrFJYQQsLThTGXR6g+2PXzeAhjyDpLHfDFqVViWvyBQ@mail.gmail.com>
 <CABdmKX0gqg309hcXcOHSj_yTg0h1zwDL34GDk8mX3wp4YoyfDg@mail.gmail.com>
 <CABdmKX3wwgovwS-V8rVC3=+EZcTvPs_cttpQb1w6WemwLAVhsw@mail.gmail.com> <CAGsJ_4y=Gsv=FSUjJ5+99Gg6ULUnv0LRexCGOGetzChR3YA44Q@mail.gmail.com>
In-Reply-To: <CAGsJ_4y=Gsv=FSUjJ5+99Gg6ULUnv0LRexCGOGetzChR3YA44Q@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 18 May 2026 16:39:07 -0700
X-Gm-Features: AVHnY4LTFYlENC6xQVXK8AijxUAKUMiH_YZR8cEYxhyMaKCwg0sVArYGdEg8UAo
Message-ID: <CABdmKX3GgCogr9pQFybnV1p_zuo1V9fqJLCXvk-HAnk1gwLoDw@mail.gmail.com>
To: Barry Song <baohua@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: 6VXUXGSGNVGOWAYPL4LBI43TEUAHGFZT
X-Message-ID-Hash: 6VXUXGSGNVGOWAYPL4LBI43TEUAHGFZT
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.or
 g, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6VXUXGSGNVGOWAYPL4LBI43TEUAHGFZT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[36];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,redhat.com,kernel.org,cmpxchg.org,suse.com,lwn.net,linuxfoundation.org,linaro.org,linux.dev,linux-foundation.org,collabora.com,arm.com,google.com,paul-moore.com,namei.org,hallyn.com,gmail.com,vger.kernel.org,vger.kernel.or,lists.freedesktop.org,lists.linaro.org,kvack.org];
	DKIM_TRACE(0.00)[google.com:-];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[android.com:url,linaro.org:email,mail.gmail.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: ABD915750A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXkgMTgsIDIwMjYgYXQgMzoxOeKAr1BNIEJhcnJ5IFNvbmcgPGJhb2h1YUBrZXJu
ZWwub3JnPiB3cm90ZToNCj4NCj4gT24gVHVlLCBNYXkgMTksIDIwMjYgYXQgNToxN+KAr0FNIFQu
Si4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiBbLi4uXQ0KPiA+ID4g
PiA+IFllYWggSSB0aGluayB0aGlzIG1pZ2h0IHdvcmsuIEkga25vdyBvZiAzIGNhc2VzLCBhbmQg
aXQgdHJpdmlhbGx5DQo+ID4gPiA+ID4gc29sdmVzIHRoZSBmaXJzdCB0d28uIFRoZSB0aGlyZCBy
ZXF1aXJlcyBzb21lIHdvcmsgb24gb3VyIGVuZCB0bw0KPiA+ID4gPiA+IGV4dGVuZCBvdXIgdXNl
cnNwYWNlIGludGVyZmFjZXMgdG8gaW5jbHVkZSB0aGUgcGlkZmQgYnV0IGl0IHNlZW1zDQo+ID4g
PiA+ID4gZG9hYmxlLiBJJ20gY2hlY2tpbmcgd2l0aCBvdXIgZ3JhcGhpY3MgZm9sa3MuDQo+ID4g
PiA+ID4NCj4gPiA+ID4gPiAxKSBEaXJlY3QgYWxsb2NhdGlvbiBmcm9tIHVzZXIgKGUuZy4gYXBw
IC0+IGFsbG9jYXRpb24gaW9jdGwgb24NCj4gPiA+ID4gPiAvZGV2L2RtYV9oZWFwL2ZvbykNCj4g
PiA+ID4gPiBObyBjaGFuZ2VzIHJlcXVpcmVkIHRvIHVzZXJzcGFjZS4gbWVtX2FjY291bnRpbmc9
MSBjaGFyZ2VzIHRoZSBhcHAuDQo+ID4gPiA+ID4NCj4gPiA+ID4gPiAyKSBTaW5nbGUgaG9wIHJl
bW90ZSBhbGxvY2F0aW9uIChlLmcuIGFwcCAtPiBBSGFyZHdhcmVCdWZmZXJfYWxsb2NhdGUNCj4g
PiA+ID4gPiAtPiBncmFsbG9jKQ0KPiA+ID4gPiA+IGdyYWxsb2MgaGFzIHRoZSBjYWxsZXIncyBw
aWQgYXMgZGVzY3JpYmVkIGluIHRoZSBjb21taXQgbWVzc2FnZS4gT3Blbg0KPiA+ID4gPiA+IGEg
cGlkZmQgYW5kIHBhc3MgaXQgaW4gdGhlIGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YS4NCj4gPiA+
ID4gPg0KPiA+ID4gPiA+IDMpIERvdWJsZSBob3AgcmVtb3RlIGFsbG9jYXRpb24gKGUuZy4gYXBw
IC0+IGRlcXVldWVCdWZmZXIgLT4NCj4gPiA+ID4gPiBTdXJmYWNlRmxpbmdlciAtPiBncmFsbG9j
KQ0KPiA+ID4gPiA+IEluIHRoaXMgY2FzZSBncmFsbG9jIGtub3dzIFN1cmZhY2VGbGluZ2VyJ3Mg
cGlkLCBidXQgbm90IHRoZSBhcHAncy4gU28NCj4gPiA+ID4gPiB3ZSBuZWVkIHRvIGFkZCB0aGUg
YXBwJ3MgcGlkZmQgdG8gdGhlIFN1cmZhY2VGbGluZ2VyIC0+IGdyYWxsb2MNCj4gPiA+ID4gPiBp
bnRlcmZhY2UsIG9yIHRyYW5zZmVyIHRoZSBtZW1jZyBjaGFyZ2UgZnJvbSBTdXJmYWNlRmxpbmdl
ciB0byB0aGUgYXBwDQo+ID4gPiA+ID4gYWZ0ZXIgdGhlIGFsbG9jYXRpb24uDQo+ID4gPiA+ID4g
SXQnZCBiZSBuaWNlIHRvIGF2b2lkIHRoZSBjaGFyZ2UgdHJhbnNmZXIgb3B0aW9uIGVudGlyZWx5
LCBidXQgaWYgd2UNCj4gPiA+ID4gPiBuZWVkIGl0IHRoYXQgZG9lc24ndCBzZWVtIHNvIGJhZCBp
biB0aGlzIGNhc2UgYmVjYXVzZSBpdCdzIGEgYnVsaw0KPiA+ID4gPiA+IGNoYXJnZSBmb3IgdGhl
IGVudGlyZSBkbWFidWYgcmF0aGVyIHRoYW4gcGVyLXBhZ2UuIFNvIHRoZSBleHBvcnRlcg0KPiA+
ID4gPiA+IGRvZXNuJ3QgbmVlZCB0byBnZXQgaW52b2x2ZWQgKHdlIHdvdWxkbid0IG5lZWQgYSBu
ZXcgZG1hX2J1Zl9vcCkgYW5kDQo+ID4gPiA+ID4gd2Ugd291bGRuJ3QgaGF2ZSB0byB3b3JyeSBh
Ym91dCBsb29waW5nIGFuZCBsb2NraW5nIGZvciBlYWNoIHBhZ2UuDQo+ID4gPiA+ID4NCj4gPiA+
ID4NCj4gPiA+ID4gSGkgVC5KLiwNCj4gPiA+ID4NCj4gPiA+ID4gWW91ciBkZXNjcmlwdGlvbiBv
ZiB0aGUgdGhyZWUgZGlmZmVyZW50IGNhc2VzIHNvdW5kcyB2ZXJ5IGludGVyZXN0aW5nLg0KPiA+
ID4gPiBJdCBoZWxwcyBtZSB1bmRlcnN0YW5kIGhvdyBkaWZmaWN1bHQgaXQgY2FuIGJlIHRvIGNv
cnJlY3RseSBjaGFyZ2UNCj4gPiA+ID4gZG1hLWJ1ZiBpbiB0aGUgY3VycmVudCB1c2VyIHNjZW5h
cmlvcy4NCj4gPiA+ID4NCj4gPiA+ID4gSeKAmW0gd29uZGVyaW5nIHdoZXJlIEkgY2FuIGZpbmQg
QW5kcm9pZCB1c2Vyc3BhY2UgY29kZSB0aGF0IHRyYW5zZmVycw0KPiA+ID4gPiB0aGUgUElEIG9m
IFJQQyBjYWxsZXJzLiBEbyB3ZSBoYXZlIGFueSBleGlzdGluZyBzYW1wbGUgY29kZSBpbiBBbmRy
b2lkDQo+ID4gPiA+IGZvciB0aGlzPw0KPiA+ID4NCj4gPiA+IEhpIEJhcnJ5LA0KPiA+ID4NCj4g
PiA+IEluIEphdmEgYW5kcm9pZC5vcy5CaW5kZXIuZ2V0Q2FsbGluZ1BpZCgpIHdpbGwgcHJvdmlk
ZSBpdC4gSGVyZQ0KPiA+DQo+ID4gLi4uIGxldCBtZSB0cnkgYWdhaW4NCj4gPg0KPiA+IEhlcmUg
YXJlIHNvbWUgZXhhbXBsZXMgZnJvbSB0aGUgZnJhbWV3b3JrIGNvZGU6DQo+ID4NCj4gPiBodHRw
czovL2NzLmFuZHJvaWQuY29tL3NlYXJjaD9xPWdldENhbGxpbmdQaWQlMjBmOkFjdGl2aXR5TWFu
YWdlciZzcT0mc3M9YW5kcm9pZCUyRnBsYXRmb3JtJTJGc3VwZXJwcm9qZWN0DQo+ID4NCj4gPiBJ
biBuYXRpdmUgY29kZSB3ZSBoYXZlIEFJQmluZGVyX2dldENhbGxpbmdQaWQgYW5kDQo+ID4gYW5k
cm9pZDo6SVBDVGhyZWFkU3RhdGU6OnNlbGYoKS0+Z2V0Q2FsbGluZ1BpZCgpIChvcg0KPiA+IGFu
ZHJvaWQ6OmhhcmR3YXJlOjpJUENUaHJlYWRTdGF0ZTo6c2VsZigpLT5nZXRDYWxsaW5nUGlkKCkg
Zm9yIEhJREwpDQo+ID4NCj4gPiBodHRwczovL2NzLmFuZHJvaWQuY29tL3NlYXJjaD9xPWdldENh
bGxpbmdQaWQlMjBsOmNwcCUyMC1mOnByZWJ1aWx0JnNzPWFuZHJvaWQlMkZwbGF0Zm9ybSUyRnN1
cGVycHJvamVjdA0KPg0KPiBUaGFua3MgdmVyeSBtdWNoLCBULkouIFRoYXQgaXMgdmVyeSBoZWxw
ZnVsLiBJIGd1ZXNzDQo+IHRoYXQgd291bGQgcmVxdWlyZSB1c2VyIHNwYWNlIHRvIHVuZGVyc3Rh
bmQgdGhlIFJQQw0KPiBwcm9jZWR1cmUsIGluY2x1ZGluZyBzaW5nbGUtaG9wIGFuZCB0d28taG9w
IGNhc2VzLCBhbmQNCj4gbWFrZSB0aGUgY29ycmVzcG9uZGluZyBjaGFuZ2VzLg0KDQpZZXMsIHRo
aXMgaXMgc29sdmFibGUgYnkgaGF2aW5nIGEgcG9saWN5IGluIGFsbG9jYXRvciBzZXJ2aWNlcyB3
aGVyZQ0KdGhlIGNhbGxlciBpcyBpbXBsaWNpdGx5IGNoYXJnZWQsIHdoaWxlIGFsc28gc3VwcG9y
dGluZyBjYXNlcyB3aGVyZQ0KdGhlIFJQQyBpbmNsdWRlcyBhZGRpdGlvbmFsIGV4cGxpY2l0IGlu
Zm9ybWF0aW9uIGFib3V0IHdobyB0byBjaGFyZ2UuDQpUaGlzIG5lZWRzIHNlY3VyaXR5IGNoZWNr
cyB0byBwcmV2ZW50IGFyYml0cmFyeSByZW1vdGUgY2hhcmdlcyBhdCBib3RoDQp0aGUgaW9jdGwo
KSBsZXZlbCAoc2VsaW51eCBjaGFyZ2VfdG8gZnJvbSBwYXRjaCA0KSwgYW5kIGF0IHRoZSBSUEMN
CmxldmVsIChub3Qgc3VyZSB5ZXQgYnV0IG1heWJlIGEgcHJpdmF0ZSBpbnRlcmZhY2UgYmV0d2Vl
biBzeXN0ZW0NCmNvbXBvbmVudHMgYW5kIGdyYWxsb2MpLCBzbyB0aGF0IG9ubHkgcHJpdmlsZWdl
ZCBjb21wb25lbnRzIGNhbg0KaW5pdGlhdGUgcmVtb3RlIGNoYXJnZXMuDQoNCj4gWW91IHBvaW50
ZWQgb3V0IHRoZSBTdXJmYWNlRmxpbmdlciBjYXNlcywgd2hpY2ggYXJlDQo+IHR3byBob3BzLiBJ
dCBzZWVtcyB0aGF0IEFJIG1vZGVscyBhcmUgYWxzbyB1c2luZw0KPiBkbWFfaGVhcCwgYXQgbGVh
c3QgZnJvbSB3aGF0IEkgaGF2ZSBvYnNlcnZlZCBvbiBNVEsNCj4gYW5kIFF1YWxjb21tIHBob25l
cy4gTGlrZWx5LCB3ZSBuZWVkIHRvIHVuZGVyc3RhbmQNCj4gdGhvc2UgUlBDIHJlbGF0aW9uc2hp
cHMgaW4gdXNlcnNwYWNlIGFuZCBtYWtlIHRoZQ0KPiBjb3JyZXNwb25kaW5nIGNoYW5nZXMuDQo+
IEkgYXNzdW1lIEFJIG1vZGVscyBhcmUgYSBzaW5nbGUtaG9wIGNhc2U/DQoNCkl0J3MgY3VycmVu
dGx5IGEgbWl4IGJlY2F1c2UgQUkgbW9kZWwgbG9hZGluZyBpcyBsYXJnZWx5IGNvbnRyb2xsZWQg
YnkNCnZlbmRvciBjb2RlIHJpZ2h0IG5vdy4gU29tZSBpbXBsZW1lbnRhdGlvbnMgdXNlDQpBSGFy
ZHdhcmVCdWZmZXJfYWxsb2NhdGUsIGJ1dCB0aGF0IGNvbWVzIHdpdGggdW5uZWNlc3NhcnkgUlBD
IG92ZXJoZWFkDQpmb3IgdGhlIEFJIHVzZSBjYXNlLiBTbyBJIHRoaW5rIHdlIHNob3VsZCBiZSB0
cmVuZGluZyB0b3dhcmRzIGRpcmVjdA0KYWxsb2NhdGlvbnMgZnJvbSBkbWEtYnVmIGhlYXBzIGJl
Y2F1c2UgbW9kZWwgbG9hZGluZyB0aW1lIGlzDQppbXBvcnRhbnQuDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
