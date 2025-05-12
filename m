Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 19103AB45F3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 23:05:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2730946014
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 21:05:03 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id BE66845FF9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 21:04:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=S57+ICQc;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso18815e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 14:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747083889; x=1747688689; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ocHMf+lpxFiUglMvQ3QmzmSqN/TDDldlcwv8ib7D0M4=;
        b=S57+ICQc/ArK/ab08G9luP0rSjZFv08hu/Fo3hsFdjtJMWADbTWJAI0sxNjCLA6Nr9
         iyHrJUt64OIClA123WGQQxTLZMPJJLus7A87gwQTswXfaBrKlNK0M+nnJX0T8OjWfBi8
         GmwMIiI59F3I3EX4ib4aitLGcIGd8oqU918ct+rvHe8cvuRiw3nP52GKkXavGSE8Vp7p
         5vP6DnBmCTn4xIQN6/gK5Q7QcuMtuxJLWwDRFseBXkYayJMty2+z0pW5cVMax0vABQss
         Dj2ewynU0kqmPBkwlEMr8NScr3y8Gw8Jha/MhL9dsyxQGuyjK7NClvwJ2mIq9dTdGAQJ
         Lxkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747083889; x=1747688689;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ocHMf+lpxFiUglMvQ3QmzmSqN/TDDldlcwv8ib7D0M4=;
        b=SKmqBk92uyRxW7/h5mJrHV0zSrtRuP9F/GJ09RaExdLK5n8nxiZOo3TEs38KmRRFn0
         npDuNDwwP3w5fGhOo7ZrLiSMwcdzEziYMyIv/t6cMCUBV+7xkSYmAoCuv6LK3uHrgZrr
         6YlWGaqgGG0HuVfd+WTwqgC7ngq6ct86GgQ6yN1zhm+jFmg4luUIVQed80Ob55pcBxOn
         hKMogVj73ZYb2pKS4sA+VZMvFCief9dVeMeW+nA3mwJ48YvfkzBtdeZJ2kfZFFlxSleR
         NUBxnvFQsZe6FX1E0hQcfZM8ikuHuRFfG0IUIL6lBr2+HIPdvHSYOyijBJJuoW670Im1
         Zfjw==
X-Forwarded-Encrypted: i=1; AJvYcCXv8xvH5m+koBHWQyEUgJYnfw0+4cdZw2c5dWaGrN+pNjrElP47x3/sKSp0I4XVg7ODNeOL7ibpImWHQZ34@lists.linaro.org
X-Gm-Message-State: AOJu0YysMiuvgEifyDCa0i3zAmtaKCEU0UO/6xmxRmCMRWUmtZYN7SNe
	1edXstjV41qGobJrw//pAN4ut6rX2xnmEhfttKk99waqsU9rpI3xf/xGFSQHQHYP60RqeMOGIpa
	GF+SyrdR7rV8DMBJ8OwIlFZFlQecFizV05nSR+2Cl
X-Gm-Gg: ASbGncvjLpdGdp4H9BxWuQQKgReN4LDoV6x3jtwJ6HNpBqYpt3DeRYy35f/29dFa0i1
	obJ+AmBTmJudsfIvkZftT0XdtRD63YdXdMeTT+jBabcTLqMoRvNJgi6PIunrbQX8/oJghdHsI95
	iEJUQNRHODcnq9R1cQtSTiws0+tkWx3qM=
X-Google-Smtp-Source: AGHT+IEr0EA2T8//ChQD2cQVB7Yv0cif1v2Nya6VTYqVvclVsxQ7gPAjPiVgt+BRhoXxGJfdm3L5Wdls6puG9ko+yOc=
X-Received: by 2002:a05:600c:1da4:b0:439:9434:1b66 with SMTP id
 5b1f17b1804b1-442ebbe7e80mr37045e9.1.1747083888729; Mon, 12 May 2025 14:04:48
 -0700 (PDT)
MIME-Version: 1.0
References: <20250512174036.266796-1-tjmercier@google.com> <20250512174036.266796-6-tjmercier@google.com>
 <CAPhsuW6KEtKu5C+Y_X3EFkUFSg8=LnQ9nJFUD81rYgwvBvqzHg@mail.gmail.com>
In-Reply-To: <CAPhsuW6KEtKu5C+Y_X3EFkUFSg8=LnQ9nJFUD81rYgwvBvqzHg@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 12 May 2025 14:04:36 -0700
X-Gm-Features: AX0GCFvIOd-tF5p6eczt7ynOfdOnjScDBhB5U-GpV17T4Ix1WysDKZAupTNpB3E
Message-ID: <CABdmKX20zo5FhUGf2ZJXvcSetbK25HV9Z=AG8MhLU+dnT_kP6w@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BE66845FF9
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.50:from];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[209.85.128.50:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: L2J7LZ7XEMKI45AZDCG4RF6BZ7WZGVGJ
X-Message-ID-Hash: L2J7LZ7XEMKI45AZDCG4RF6BZ7WZGVGJ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v5 5/5] selftests/bpf: Add test for open coded dmabuf_iter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L2J7LZ7XEMKI45AZDCG4RF6BZ7WZGVGJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgMTIsIDIwMjUgYXQgMTozMOKAr1BNIFNvbmcgTGl1IDxzb25nQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPg0KPiBPbiBNb24sIE1heSAxMiwgMjAyNSBhdCAxMDo0MeKAr0FNIFQuSi4g
TWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+DQo+ID4gVXNlIHRoZSBz
YW1lIHRlc3QgYnVmZmVycyBhcyB0aGUgdHJhZGl0aW9uYWwgaXRlcmF0b3IgYW5kIGEgbmV3IEJQ
RiBtYXANCj4gPiB0byB2ZXJpZnkgdGhlIHRlc3QgYnVmZmVycyBjYW4gYmUgZm91bmQgd2l0aCB0
aGUgb3BlbiBjb2RlZCBkbWFidWYNCj4gPiBpdGVyYXRvci4NCj4gPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQo+ID4gQWNrZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4NCj4gQWNrZWQtYnk6
IFNvbmcgTGl1IDxzb25nQGtlcm5lbC5vcmc+DQoNClRoYW5rcywgSSdsbCBzZW5kIHY2IHRoaXMg
YWZ0ZXJub29uIG9yIHRvbW9ycm93IG1vcm5pbmcgd2l0aCBhbGwgY2hhbmdlcy4NCg0KPiBXaXRo
IGEgbml0cGljayBiZWxvdy4NCj4NCj4gWy4uLl0NCj4NCj4gPg0KPiA+IC1zdGF0aWMgaW50IGNy
ZWF0ZV90ZXN0X2J1ZmZlcnModm9pZCkNCj4gPiArc3RhdGljIGludCBjcmVhdGVfdGVzdF9idWZm
ZXJzKGludCBtYXBfZmQpDQo+ID4gIHsNCj4gPiArICAgICAgIGJvb2wgZiA9IGZhbHNlOw0KPiA+
ICsNCj4gPiAgICAgICAgIHVkbWFidWYgPSBjcmVhdGVfdWRtYWJ1ZigpOw0KPiA+ICAgICAgICAg
c3lzaGVhcF9kbWFidWYgPSBjcmVhdGVfc3lzX2hlYXBfZG1hYnVmKCk7DQo+ID4NCj4gPiAgICAg
ICAgIGlmICh1ZG1hYnVmIDwgMCB8fCBzeXNoZWFwX2RtYWJ1ZiA8IDApDQo+ID4gICAgICAgICAg
ICAgICAgIHJldHVybiAtMTsNCj4gPg0KPiA+IC0gICAgICAgcmV0dXJuIDA7DQo+ID4gKyAgICAg
ICByZXR1cm4gYnBmX21hcF91cGRhdGVfZWxlbShtYXBfZmQsIHVkbWFidWZfdGVzdF9idWZmZXJf
bmFtZSwgJmYsIEJQRl9BTlkpIHx8DQo+ID4gKyAgICAgICAgICAgICAgYnBmX21hcF91cGRhdGVf
ZWxlbShtYXBfZmQsIHN5c2hlYXBfdGVzdF9idWZmZXJfbmFtZSwgJmYsIEJQRl9BTlkpOw0KPg0K
PiBuaXQ6IEluc3RlYWQgb2YgcGFzc2luZyBtYXBfZmQgaW4gaGVyZSwgd2UgY2FuIGp1c3QgY2Fs
bA0KPiBicGZfbWFwX3VwZGF0ZV9lbGVtKCkgaW4gdGVzdF9kbWFidWZfaXRlcigpDQo+DQo+IFsu
Li5dDQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
