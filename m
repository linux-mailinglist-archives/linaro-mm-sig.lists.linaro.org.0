Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B73E6A90FC3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Apr 2025 01:40:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA09A444D9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Apr 2025 23:40:51 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id B2D53444D9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Apr 2025 23:40:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=HhPtFJf4;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.44 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43ef83a6bfaso13545e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Apr 2025 16:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744846835; x=1745451635; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Mxjt3rihuzILbcLl043WrZ7HaX9/u729SBhzDpJcjw=;
        b=HhPtFJf4Kz7Rg/LfaBo/Thd+r6FKWTdmo426lDurgB2dQzjsSAzMTtnEjklzIfjzig
         syztJu3RoGpUeGN6NCWM/CN9mvIlHj6jeCzXG7EpU1p95s9bL3A3V/bEEJnjypVpikJk
         e5w7yxpr6guPy+/XKewNf/s3QcLsdiFd6A9+o/BWk8kr9R2JAYbRCJZ4hY4tm7/IoVrA
         RmAz0c8aqvb7CkKuFb+WO1BOIYAGncJwyQTXoAFWGzcOJ48TcyInQiFRpiUW50uyxCg/
         QArTz6wHdVTOi2fNTBmavQsYnTBGcetZq/d28F8tLXwN8/Ybg4IdvE4QWGSB8RyGdgfu
         8vzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744846835; x=1745451635;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Mxjt3rihuzILbcLl043WrZ7HaX9/u729SBhzDpJcjw=;
        b=WDFkdlpP+lCpYr2xf4QLDepVHkV9196S8E+dlt/c5rJfeKdbuL7PO7XubUYDAcFmFK
         +Z/8QA0whXV3Ug3vrP2bqV6KPMepI4UwdgAziE5eKdJp3Y7Z1tf//mdYdx9NQpwitdxG
         gtuMn+Sz17WqhiZkhSSBY4wH1+VvbKVXmpAROnj9sFzLnK22rvJK8DbzpPE5PPJNARjE
         HfPtsre8gXtHS3lTG5CL7eB+8nXl3ZF6Wn5mEdN4nvZshF/KwoHKbXFgDByMadTsTDv6
         LAQXnlIU98jLyO9JhU1B+zb16VJOeRH2KDnFxTe1H883hCZuGqfh5hD5aftpqHlCMQLo
         j/LQ==
X-Forwarded-Encrypted: i=1; AJvYcCWm59B1at8OZ/eMOCYtz+LNIVUOfNwsvtA5Ggzx5T4zzJcC01QskHd8iOfsHQnmfQ6ApGfqeDfKYCWi7EMh@lists.linaro.org
X-Gm-Message-State: AOJu0Yytw4AeF7D3HoIvLngX4s+Mt2TjcfsxC2ZOAbLxjVuyjNqQOIQZ
	CF/6DY0ZHkW/pKAomLSlvGuqenmziftZGvCf2KVrBjnPGsKLJd0F9uC9OvU+2JBzT0sA/na5aTn
	khqxz1KnKcihmgDqm7SD2T2E+k3k7pD1rLdRj
X-Gm-Gg: ASbGncsBDVFzbUViBNxP2nVhmMqnjnTeB8q8zFVxMQ/imIMIzjzgce4mM7pyZ+JGAfD
	ntuVkA4ff5ygPBKKnDLmhm+ritQff7JQYoC2K+eE2ow6EQQpr2VzPXipvQ8yfN59rFDa+B2vaX0
	y6PdZxhRDioKVbjhJKWETSOKciMJh+X39DXf1Ov01rwRX+1LkVRn8=
X-Google-Smtp-Source: AGHT+IHYwzghKbnTQryW+DgZnRoQaoVXvuuAUTPz6qIMWx+I2V7QXqmb5/BgPuRKmM0AahWplsMUsAlWl25L3C8nIj0=
X-Received: by 2002:a05:600c:1910:b0:43d:409c:6142 with SMTP id
 5b1f17b1804b1-44062a3eddamr573455e9.0.1744846834549; Wed, 16 Apr 2025
 16:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
 <20250414225227.3642618-3-tjmercier@google.com> <CAPhsuW6sgGvjeAcciskmGO7r6+eeDo_KVS3y7C8fCDPptzCebw@mail.gmail.com>
 <CABdmKX0bgxZFYuvQvQPK0AnAHEE3FebY_eA1+Vo=ScH1MbfzMg@mail.gmail.com> <CAPhsuW72Q2--E9tQQY8xADghTV6bYy9vHpFQoCWNh0V_QBWafA@mail.gmail.com>
In-Reply-To: <CAPhsuW72Q2--E9tQQY8xADghTV6bYy9vHpFQoCWNh0V_QBWafA@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 16 Apr 2025 16:40:22 -0700
X-Gm-Features: ATxdqUFLZu_g7cAHhskZ0L5MamFR6bpu5Vd8u8TDIC07BpRPPZAKqsf2Wefu0qw
Message-ID: <CABdmKX1tDv3fSFURDN7=txFSbQ1xTjp8ZhLP8tFAvLcO9_-4_A@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Queue-Id: B2D53444D9
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.86 / 15.00];
	BAYES_HAM(-2.36)[97.04%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid,mail-wm1-f44.google.com:helo,mail-wm1-f44.google.com:rdns];
	DKIM_TRACE(0.00)[google.com:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.128.44:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.44:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.44:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: KBG3G6GJJVASBCUWCOLB7A4MNSSLIFVB
X-Message-ID-Hash: KBG3G6GJJVASBCUWCOLB7A4MNSSLIFVB
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KBG3G6GJJVASBCUWCOLB7A4MNSSLIFVB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMTYsIDIwMjUgYXQgNDowOOKAr1BNIFNvbmcgTGl1IDxzb25nQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIEFwciAxNiwgMjAyNSBhdCAzOjUx4oCvUE0gVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+IFsuLi5dDQo+ID4gPg0KPiA+
ID4gSUlVQywgdGhlIGl0ZXJhdG9yIHNpbXBseSB0cmF2ZXJzZXMgZWxlbWVudHMgaW4gYSBsaW5r
ZWQgbGlzdC4gSSBmZWVsIGl0IGlzDQo+ID4gPiBhbiBvdmVya2lsbCB0byBpbXBsZW1lbnQgYSBu
ZXcgQlBGIGl0ZXJhdG9yIGZvciBpdC4NCj4gPg0KPiA+IExpa2Ugb3RoZXIgQlBGIGl0ZXJhdG9y
cyBzdWNoIGFzIGttZW1fY2FjaGVfaXRlciBvciB0YXNrX2l0ZXIuDQo+ID4gQ2dyb3VwX2l0ZXIg
aXRlcmF0ZXMgdHJlZXMgaW5zdGVhZCBvZiBsaXN0cy4gVGhpcyBpcyBpdGVyYXRpbmcgb3Zlcg0K
PiA+IGtlcm5lbCBvYmplY3RzIGp1c3QgbGlrZSB0aGUgZG9jcyBzYXksICJBIEJQRiBpdGVyYXRv
ciBpcyBhIHR5cGUgb2YNCj4gPiBCUEYgcHJvZ3JhbSB0aGF0IGFsbG93cyB1c2VycyB0byBpdGVy
YXRlIG92ZXIgc3BlY2lmaWMgdHlwZXMgb2Yga2VybmVsDQo+ID4gb2JqZWN0cyIuIE1vcmUgY29t
cGxpY2F0ZWQgaXRlcmF0aW9uIHNob3VsZCBub3QgYmUgYSByZXF1aXJlbWVudCBoZXJlLg0KPiA+
DQo+ID4gPiBNYXliZSB3ZSBzaW1wbHkNCj4gPiA+IHVzZSBkZWJ1Z2dpbmcgdG9vbHMgbGlrZSBj
cmFzaCBvciBkcmduIGZvciB0aGlzPyBUaGUgYWNjZXNzIHdpdGgNCj4gPiA+IHRoZXNlIHRvb2xz
IHdpbGwgbm90IGJlIHByb3RlY3RlZCBieSB0aGUgbXV0ZXguIEJ1dCBmcm9tIG15IHBlcnNvbmFs
DQo+ID4gPiBleHBlcmllbmNlLCB0aGlzIGlzIG5vdCBhIGJpZyBpc3N1ZSBmb3IgdXNlciBzcGFj
ZSBkZWJ1Z2dpbmcgdG9vbHMuDQo+ID4NCj4gPiBkcmduIGlzICp3YXkqIHRvbyBzbG93LCBhbmQg
ZXZlbiBpZiBpdCB3ZXJlbid0IHRoZSBkZXBlbmRlbmNpZXMgZm9yDQo+ID4gcnVubmluZyBpdCBh
cmVuJ3QgYXZhaWxhYmxlLiBjcmFzaCBuZWVkcyBkZWJ1ZyBzeW1ib2xzIHdoaWNoIGFsc28NCj4g
PiBhcmVuJ3QgYXZhaWxhYmxlIG9uIHVzZXIgYnVpbGRzLiBUaGlzIGlzIG5vdCBqdXN0IGZvciBt
YW51YWwNCj4gPiBkZWJ1Z2dpbmcsIGl0J3MgZm9yIHJlcG9ydGluZyBtZW1vcnkgdXNlIGluIHBy
b2R1Y3Rpb24uIE9yIGFueXRoaW5nDQo+ID4gZWxzZSBzb21lb25lIG1pZ2h0IGNhcmUgdG8gZXh0
cmFjdCBsaWtlIGF0dGFjaG1lbnQgaW5mbyBvciByZWZjb3VudHMuDQo+DQo+IENvdWxkIHlvdSBw
bGVhc2Ugc2hhcmUgbW9yZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgdXNlIGNhc2VzIGFuZA0KPiB0
aGUgdGltZSBjb25zdHJhaW50IGhlcmUsIGFuZCB3aHkgZHJnbiBpcyB0b28gc2xvdy4gSXMgbW9z
dCBvZiB0aGUgZGVsYXkNCj4gY29tZXMgZnJvbSBwYXJzaW5nIERXQVJGPyBUaGlzIGlzIG1vc3Rs
eSBmb3IgbXkgY3VyaW9zaXR5LCBiZWNhdXNlDQo+IEkgaGF2ZSBiZWVuIHRoaW5raW5nIGFib3V0
IHVzaW5nIGRyZ24gdG8gZG8gc29tZSBtb25pdG9yaW5nIGluDQo+IHByb2R1Y3Rpb24uDQo+DQo+
IFRoYW5rcywNCj4gU29uZw0KDQpUaGVzZSBSdW5Db21tYW5kcyBoYXZlIDEwIHNlY29uZCB0aW1l
b3V0cyBmb3IgZXhhbXBsZS4gSXQncyByYXJlIHRoYXQNCkkgc2VlIHRoZW0gZ2V0IGV4Y2VlZGVk
IGJ1dCBpdCBoYXBwZW5zIG9jY2FzaW9uYWxseS46DQpodHRwczovL2NzLmFuZHJvaWQuY29tL2Fu
ZHJvaWQvcGxhdGZvcm0vc3VwZXJwcm9qZWN0L21haW4vKy9tYWluOmZyYW1ld29ya3MvbmF0aXZl
L2NtZHMvZHVtcHN0YXRlL2R1bXBzdGF0ZS5jcHA7ZHJjPTk4YmRjMDRiNzY1OGZkZTBhOTk0MDNm
YzA1MmQxZDE4ZTdkNDhlYTY7bD0yMDA4DQoNClRoZSBsYXN0IHRpbWUgSSB1c2VkIGRyZ24gKGFk
bWl0dGVkbHkgYmFjayBpbiAyMDIzKSBpdCB0b29rIG92ZXIgYQ0KbWludXRlIHRvIGl0ZXJhdGUg
dGhyb3VnaCBsZXNzIHRoYW4gMjAwIGNncm91cHMuIEknbSBub3Qgc3VyZSB3aGF0IHRoZQ0Kcm9v
dCBjYXVzZSBvZiB0aGUgc2xvd25lc3Mgd2FzLCBidXQgSSdkIGV4cGVjdCB0aGUgRFdBUkYgcHJv
Y2Vzc2luZyB0bw0KYmUgZG9uZSB1cC1mcm9udCBvbmNlIGFuZCB0aGUgc2xvd25lc3MgSSBleHBl
cmllbmNlZCB3YXMgbm90IGp1c3QgYXQNCnN0YXJ0dXAuIEV2ZW50dWFsbHkgSSBzd2l0Y2hlZCBv
dmVyIHRvIHRyYWNlZnMgZm9yIHRoYXQgaXNzdWUsIHdoaWNoDQp3ZSBzdGlsbCB1c2UgZm9yIHNv
bWUgdGVsZW1ldHJ5Lg0KDQpPdGhlciB1c2VzIGFyZSBieSBzdGF0c2QgZm9yIHRlbGVtZXRyeSwg
bWVtb3J5IHJlcG9ydGluZyBvbiBhcHAga2lsbHMNCm9yIGRlYXRoLCBhbmQgZm9yICJkdW1wc3lz
IG1lbWluZm8iLg0KDQpUaGFua3MsDQpULkouDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
