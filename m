Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C3829A92234
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Apr 2025 18:05:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84C374599E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Apr 2025 16:05:20 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 1572F4453A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Apr 2025 16:05:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=r50BVjku;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43ef83a6bfaso64865e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Apr 2025 09:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744905903; x=1745510703; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W8qDOiyv1h4pWlH3g88O7C4xDqIzRDAqgGgkiAByMFA=;
        b=r50BVjkuw8Nu15Pjg+hHIJbwfsrz8K4GQu1UATFgtWx8yeW95SWhZJJvubBkoFUIXu
         OV2WQ3qGNO+1QKTfY/eshEFZCMPcH7z4EvVlcxAkwDCB8xzwVax6cnotsKrDVJUtpVCr
         DpkZsCcA9oSJsoIbtw7QNPFXqk50y6YLsAxsHjgB/3XHSF3Rre1AabNzuSittccYx9X6
         vqoCO2bUN/prbnwCDoPMuNy12FClLuKABwI/78MMPT7tNrJcM4AZhuE3rD1YiySJ6iGn
         LKhGo/p7zwaPbYcmo7xjbZRrG7y/DljjLQTVBiQ4fQf8FeNrknyd0WHStkm2cc111fZ/
         7kAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744905903; x=1745510703;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W8qDOiyv1h4pWlH3g88O7C4xDqIzRDAqgGgkiAByMFA=;
        b=aVzQYBJuRPAO7bUKHq6fq3JvJ+gGCNww4k5eTl1R/DUba234ExEi6mz2u3Aovi6hz7
         AWCJyvFdmfg/H6auK3tKV04F/O5CvyDvLMzJ+8rcoUbvByIgH4tzeAw8GzESY15jB4qF
         jf9TFUK5Q5uacw+xYUgmBC1lnKTTaYA9UmJ1ya4uCR0E4Uxcb6CQKjxNnTnDGZmLnJm4
         4gtZKbVPTXUIiCsKmchtwCWmlzqgw709o0dTImwgRwBrbISu2u35COJEL4LG8OkKXa6F
         LxO6A7+jIwQR/azAS0KrBwiKGi8vJ6ofENZtJeaS2n2L2Q8TGrPA6uNXOxrx2mPHL6FF
         xrsg==
X-Forwarded-Encrypted: i=1; AJvYcCWy8wkXZRcxx/CE7g6hXYSrtw0ZjUYdUzWQ/Tdl2Fg6c/6JOyVKd+m7KH16ik9ffSINW/sYctEOnrBdJ9Ts@lists.linaro.org
X-Gm-Message-State: AOJu0YylECatUwV/gGAR/xNnU0GAFPjiXBmIviQmXYxtPiZ1xk99ar6w
	HX+QfyidsKf4qMy9Pg/T9Al5bRzGXoTWmwKIll79pI9vHvtnLHCG2vlPiu42Uo4iYyNdb7A8ijA
	cKYFsDzarb13kHXOaoyIwgXrmQx1Yl+bflc8H
X-Gm-Gg: ASbGncvIT6Y8i517DXcij/9YFVKOOPUpbvGGrN8ZU4sBZq8U0tKvhFrUrlLlgHVaQ/N
	0DrvBesCsTbZOrfx+xREzb/Ys7laozvur8FBf+2XpicjyasovC1AQfUfIw2mSlcdQg1cV4No9bw
	/8GqJAdvFlxWmGxCgRcvhdfJQbQMs1siGwJckHU9yJaZBUyxTn/2U=
X-Google-Smtp-Source: AGHT+IHPxO/HoUoGfRA0x5PPvATzdMA6UAFEJv1oRfObulb1rUcdqwGzvQUiketg6T4NXeqjA4RD4Ot7mU9EPOGp8HE=
X-Received: by 2002:a05:600c:1c1e:b0:439:7fc2:c7ad with SMTP id
 5b1f17b1804b1-44063d6fe78mr983735e9.7.1744905902735; Thu, 17 Apr 2025
 09:05:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
 <20250414225227.3642618-3-tjmercier@google.com> <CAPhsuW6sgGvjeAcciskmGO7r6+eeDo_KVS3y7C8fCDPptzCebw@mail.gmail.com>
 <CABdmKX0bgxZFYuvQvQPK0AnAHEE3FebY_eA1+Vo=ScH1MbfzMg@mail.gmail.com>
 <CAPhsuW72Q2--E9tQQY8xADghTV6bYy9vHpFQoCWNh0V_QBWafA@mail.gmail.com>
 <CABdmKX1tDv3fSFURDN7=txFSbQ1xTjp8ZhLP8tFAvLcO9_-4_A@mail.gmail.com>
 <CAPhsuW7xvSYjWvy8K9Ev_tMwDRy2dpEiBcHYai3n-wAa0xvLow@mail.gmail.com>
 <CABdmKX1p0KgbipTSW1Ywi4bTBabQmsg21gA14Bp5atYHg8FeXQ@mail.gmail.com> <CAPhsuW4f2=M_K553+BVnGJq=ddZ7sXj4CfCAHeYQ=4cpihBCzA@mail.gmail.com>
In-Reply-To: <CAPhsuW4f2=M_K553+BVnGJq=ddZ7sXj4CfCAHeYQ=4cpihBCzA@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Thu, 17 Apr 2025 09:04:48 -0700
X-Gm-Features: ATxdqUG71xXjeNh_Y--IqcHwHgbok8UYG45JYmWjM55y53LlzggibWtxWiJMWb4
Message-ID: <CABdmKX0P1tpa-jxzN1_TCyk6Cw6drYM+KRZQ5YQcjNOBFtOFJw@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Queue-Id: 1572F4453A
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.47 / 15.00];
	BAYES_HAM(-2.97)[99.89%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.41:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.41:from];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7ZZPMDAAQ4GA7J77PVBZYBGLR5VEDHG6
X-Message-ID-Hash: 7ZZPMDAAQ4GA7J77PVBZYBGLR5VEDHG6
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7ZZPMDAAQ4GA7J77PVBZYBGLR5VEDHG6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMTYsIDIwMjUgYXQgOTo1NuKAr1BNIFNvbmcgTGl1IDxzb25nQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIEFwciAxNiwgMjAyNSBhdCA3OjA54oCvUE0gVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBXZWQsIEFw
ciAxNiwgMjAyNSBhdCA2OjI24oCvUE0gU29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz4gd3JvdGU6
DQo+IFsuLi5dDQo+ID4gPg0KPiA+ID4gSGVyZSBpcyBhbm90aGVyIHJvb2tpZSBxdWVzdGlvbiwg
aXQgYXBwZWFycyB0byBtZSB0aGVyZSBpcyBhIGZpbGUgZGVzY3JpcHRvcg0KPiA+ID4gYXNzb2Np
YXRlZCB3aXRoIGVhY2ggRE1BIGJ1ZmZlciwgY2FuIHdlIGFjaGlldmUgdGhlIHNhbWUgZ29hbCB3
aXRoDQo+ID4gPiBhIHRhc2stZmlsZSBpdGVyYXRvcj8NCj4gPg0KPiA+IFRoYXQgd291bGQgZmlu
ZCBhbG1vc3QgYWxsIG9mIHRoZW0sIGJ1dCBub3QgdGhlIGtlcm5lbC1vbmx5DQo+ID4gYWxsb2Nh
dGlvbnMuIChrZXJuZWxfcnNzIGluIHRoZSBkbWFidWZfZHVtcCBvdXRwdXQgSSBhdHRhY2hlZCBl
YXJsaWVyLg0KPiA+IElmIHRoZXJlJ3MgYSBsZWFrLCBpdCdzIGxpa2VseSB0byBzaG93IHVwIGlu
IGtlcm5lbF9yc3MgYmVjYXVzZSBzb21lDQo+ID4gZHJpdmVyIGZvcmdvdCB0byByZWxlYXNlIGl0
cyByZWZlcmVuY2UocykuKSBBbHNvIHdvdWxkbid0IHRoYXQgYmUgYQ0KPiA+IHRvbiBtb3JlIGl0
ZXJhdGlvbnMgc2luY2Ugd2UnZCBoYXZlIHRvIHZpc2l0IGV2ZXJ5IEZEIHRvIGZpbmQgdGhlDQo+
ID4gc21hbGwgcG9ydGlvbiB0aGF0IGFyZSBkbWFidWZzPyBJJ20gbm90IGFjdHVhbGx5IHN1cmUg
aWYgYnVmZmVycyB0aGF0DQo+ID4gaGF2ZSBiZWVuIG1hcHBlZCwgYW5kIHRoZW4gaGF2ZSBoYWQg
dGhlaXIgZmlsZSBkZXNjcmlwdG9ycyBjbG9zZWQNCj4gPiB3b3VsZCBzaG93IHVwIGluIHRhc2tf
c3RydWN0LT5maWxlczsgaWYgbm90IEkgdGhpbmsgdGhhdCB3b3VsZCBtZWFuDQo+ID4gc2Nhbm5p
bmcgYm90aCBmaWxlcyBhbmQgdm1hcyBmb3IgZWFjaCB0YXNrLg0KPg0KPiBJIGRvbid0IHRoaW5r
IHNjYW5uaW5nIGFsbCBGRHMgdG8gZmluZCBhIHNtYWxsIHBvcnRpb24gb2Ygc3BlY2lmaWMgRkRz
DQo+IGlzIGEgcmVhbCBpc3N1ZS4gV2UgaGF2ZSBhIHRvb2wgdGhhdCBzY2FucyBhbGwgRkRzIGlu
IHRoZSBzeXN0ZW0gYW5kDQo+IG9ubHkgZHVtcCBkYXRhIGZvciBwZXJmX2V2ZW50IEZEcy4gSSB0
aGluayBpdCBzaG91bGQgYmUgZWFzeSB0bw0KPiBwcm90b3R5cGUgYSB0b29sIGJ5IHNjYW5uaW5n
IGFsbCBmaWxlcyBhbmQgYWxsIHZtYXMuIElmIHRoYXQgdHVybnMgb3V0DQo+IHRvIGJlIHZlcnkg
c2xvdywgd2hpY2ggSSBoaWdobHkgZG91YnQgd2lsbCBiZSwgd2UgY2FuIHRyeSBvdGhlcg0KPiBh
cHByb2FjaGVzLg0KDQpCdXQgdGhpcyB3aWxsIG5vdCBmaW5kICphbGwqIHRoZSBidWZmZXJzLCBh
bmQgdGhhdCBkZWZlYXRzIHRoZSBwdXJwb3NlDQpvZiBoYXZpbmcgdGhlIGl0ZXJhdG9yLg0KDQo+
IE9UT0gsIEkgYW0gd29uZGVyaW5nIHdoZXRoZXIgd2UgY2FuIGJ1aWxkIGEgbW9yZSBnZW5lcmlj
IGl0ZXJhdG9yDQo+IGZvciBhIGxpc3Qgb2Ygb2JqZWN0cy4gQWRkaW5nIGEgaXRlcmF0b3IgZm9y
IGVhY2ggaW1wb3J0YW50IGtlcm5lbCBsaXN0cw0KPiBzZWVtcyBub3Qgc2NhbGFibGUgaW4gdGhl
IGxvbmcgdGVybS4NCg0KSSB0aGluayB0aGUgd2lkZSB2YXJpZXR5IG9mIGRpZmZlcmVuY2VzIGlu
IGxvY2tpbmcgZm9yIGRpZmZlcmVudA0Kb2JqZWN0cyB3b3VsZCBtYWtlIHRoaXMgZGlmZmljdWx0
IHRvIGRvIGluIGEgZ2VuZXJpYyB3YXkuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
