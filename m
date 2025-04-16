Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D425A908E1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Apr 2025 18:28:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5509744201
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Apr 2025 16:28:44 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 8F24C44201
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Apr 2025 16:28:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=VaLk19Id;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso75955e9.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Apr 2025 09:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744820905; x=1745425705; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dcKONrIAwY+Efjpusl4unIszUT6B68ir1oyM8EH1UJY=;
        b=VaLk19IdFwLDqHVl8fXBtQs8HtNoMM8FT1VZGMK/7tZtnA+w1CEiV7SI0CYqoSDD/f
         BqnN3eh4M5h0RzET2TLaZ2vfq4BW1GaC0VYg6OgHzBghnObxsjlJ121bX9ZmKEZpYwqz
         VbLfDxR2V8io+msNykgu2bxmeNEyiVNZo2lbpIRGKXZKFvpsvmtBHOlZmv2IlUEgKhjz
         VjPj6uEBQo3+lHMU4GYCB5a7BRyNKW8Lkivr0+riMxIR2cf8MoQdqY/68oke7DRcwKXK
         wgrH8LzoZU1BikIAma4Pr3lZYWc/VDf9T1aLjohjxwvLZv/WmiFDlyKx2S9XOZKxyHht
         qF8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744820905; x=1745425705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dcKONrIAwY+Efjpusl4unIszUT6B68ir1oyM8EH1UJY=;
        b=rDksd5LcWillDYA+YIFj+tS5D6FaBk3VnFfJAATE+w0ZYMIQisYdRbmxavZcBpTYAE
         8mNmIE2lKA8RbfQio/pGUADsxhNaqyyAQEUvZHg+/TTWjFbcZQZyWod2sbqTN0cZIVJT
         GxylO3O56RjHpIhcyzhHgcPC2NJPx9xQjNhYWPo4ufv1CLmMlfE0oK1l0U412xNQhDg6
         LohUxKjCJ6rmBGLbkUvAd5B96xRMXQbi2sWayPhfHfleLQrKqax0uZufF+Xvzqk/sH4f
         qVGdNClFnxWek12WNtKRvlBo46Y9KyXM4/UiA/QUN3RGdImZZv3W/p1r0Gf45BSg4B5M
         9paw==
X-Forwarded-Encrypted: i=1; AJvYcCV3qo7yHRbjYJs95cpL6cLxqUg97vPesBO/Us0FLSL9GylC3+6duUEf9Jlg2ukLgd5smr10mlowxqKn4bEs@lists.linaro.org
X-Gm-Message-State: AOJu0YwZKeRooJDcFJxMiaeuJqwKamQRjF5qCt5aH6wRPasIfTVnFMqP
	OzULCFjq8sQB2Reka5HBjhnPqzCOR4cwWjbWdIjutP5o61bcGUJxBQzWlYpycmTbuzoDfsZ0S8Q
	C0ogpk0bp9yRPlZ4TNZ+lO94qrNr3Gq2qmdwD
X-Gm-Gg: ASbGnctpQKvcLmeUD4GZXFANmKkZEkJe2xlDy6pV7ca0ez0Vm8EiN5+3sDYYiB4Zckv
	QycOF66puY1HUhtRN8F3CRBUB3Dw7ig6Oj/FxX/O51m335jRQqeuoarboxD0zZiOP+bloSQXOjX
	Prczws9tPrqS/uS/cA9/48G1bAuLBRGxhO8Fao5bdgFnfLp/0U3NBf
X-Google-Smtp-Source: AGHT+IECcvlnv6xPe9UB0/XJHO7q92sQEEqdeeGFlPVCn4BZ/toc+Qo3v9Dc1e4mY/RgIEckbUeu3UbXyA3ppO6oN3o=
X-Received: by 2002:a05:600c:6a87:b0:439:4a76:c246 with SMTP id
 5b1f17b1804b1-4405d26eadcmr1009515e9.6.1744820905359; Wed, 16 Apr 2025
 09:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225227.3642618-3-tjmercier@google.com> <202504161015.x2XLaha2-lkp@intel.com>
In-Reply-To: <202504161015.x2XLaha2-lkp@intel.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 16 Apr 2025 09:28:13 -0700
X-Gm-Features: ATxdqUFoAbnFhGEzvGofJporgvqMuSJROlNX-nlFC0ORBP_b5Axo3RH1otfUvlU
Message-ID: <CABdmKX16QttfxRYHaq1B92U8nw+S6Gte+mFVhOTnCy4H3cLFcA@mail.gmail.com>
To: kernel test robot <lkp@intel.com>
X-Rspamd-Queue-Id: 8F24C44201
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,lists.linux.dev,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.41:from];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.41:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SKFD6PKYDIIJWPTVTAUC5TX7WHJGMLMY
X-Message-ID-Hash: SKFD6PKYDIIJWPTVTAUC5TX7WHJGMLMY
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, song@kernel.org, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SKFD6PKYDIIJWPTVTAUC5TX7WHJGMLMY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBBcHIgMTUsIDIwMjUgYXQgOTo0M+KAr1BNIGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BA
aW50ZWwuY29tPiB3cm90ZToNCj4NCj4gSGkgTWVyY2llciwNCj4NCj4ga2VybmVsIHRlc3Qgcm9i
b3Qgbm90aWNlZCB0aGUgZm9sbG93aW5nIGJ1aWxkIGVycm9yczoNCj4NCj4gW2F1dG8gYnVpbGQg
dGVzdCBFUlJPUiBvbiBicGYtbmV4dC9uZXRdDQo+IFthbHNvIGJ1aWxkIHRlc3QgRVJST1Igb24g
YnBmLW5leHQvbWFzdGVyIGJwZi9tYXN0ZXIgbGludXMvbWFzdGVyIHY2LjE1LXJjMiBuZXh0LTIw
MjUwNDE1XQ0KPiBbSWYgeW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJl
ZSwga2luZGx5IGRyb3AgdXMgYSBub3RlLg0KPiBBbmQgd2hlbiBzdWJtaXR0aW5nIHBhdGNoLCB3
ZSBzdWdnZXN0IHRvIHVzZSAnLS1iYXNlJyBhcyBkb2N1bWVudGVkIGluDQo+IGh0dHBzOi8vZ2l0
LXNjbS5jb20vZG9jcy9naXQtZm9ybWF0LXBhdGNoI19iYXNlX3RyZWVfaW5mb3JtYXRpb25dDQo+
DQo+IHVybDogICAgaHR0cHM6Ly9naXRodWIuY29tL2ludGVsLWxhYi1sa3AvbGludXgvY29tbWl0
cy9ULUotTWVyY2llci9kbWEtYnVmLVJlbmFtZS1hbmQtZXhwb3NlLWRlYnVnZnMtc3ltYm9scy8y
MDI1MDQxNS0wNjUzNTQNCj4gYmFzZTogICBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC9icGYvYnBmLW5leHQuZ2l0IG5ldA0KPiBwYXRjaCBsaW5rOiAgICBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNDE0MjI1MjI3LjM2NDI2MTgtMy10am1lcmNp
ZXIlNDBnb29nbGUuY29tDQo+IHBhdGNoIHN1YmplY3Q6IFtQQVRDSCAyLzRdIGJwZjogQWRkIGRt
YWJ1ZiBpdGVyYXRvcg0KPiBjb25maWc6IGkzODYtYnVpbGRvbmx5LXJhbmRjb25maWctMDA1LTIw
MjUwNDE2DQo+IGNvbXBpbGVyOiBjbGFuZyB2ZXJzaW9uIDIwLjEuMiAoaHR0cHM6Ly9naXRodWIu
Y29tL2xsdm0vbGx2bS1wcm9qZWN0IDU4ZGYwZWY4OWRkNjQxMjY1MTJlNGVlMjdiNGFjM2ZkOGRk
ZjYyNDcpDQo+IHJlcHJvZHVjZSAodGhpcyBpcyBhIFc9MSBidWlsZCk6DQo+DQo+IElmIHlvdSBm
aXggdGhlIGlzc3VlIGluIGEgc2VwYXJhdGUgcGF0Y2gvY29tbWl0IChpLmUuIG5vdCBqdXN0IGEg
bmV3IHZlcnNpb24gb2YNCj4gdGhlIHNhbWUgcGF0Y2gvY29tbWl0KSwga2luZGx5IGFkZCBmb2xs
b3dpbmcgdGFncw0KPiB8IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVs
LmNvbT4NCj4gfCBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL29lLWtidWlsZC1hbGwv
MjAyNTA0MTYxMDE1LngyWExhaGEyLWxrcEBpbnRlbC5jb20vDQo+DQo+IEFsbCBlcnJvcnMgKG5l
dyBvbmVzIHByZWZpeGVkIGJ5ID4+KToNCj4NCj4gPj4gbGQubGxkOiBlcnJvcjogdW5kZWZpbmVk
IHN5bWJvbDogZG1hYnVmX2RlYnVnZnNfbGlzdF9tdXRleA0KPiAgICA+Pj4gcmVmZXJlbmNlZCBi
eSBkbWFidWZfaXRlci5jOjQ0IChrZXJuZWwvYnBmL2RtYWJ1Zl9pdGVyLmM6NDQpDQo+ICAgID4+
PiAgICAgICAgICAgICAgIHZtbGludXgubzooZG1hYnVmX2l0ZXJfc2VxX25leHQpDQo+ICAgID4+
PiByZWZlcmVuY2VkIGJ5IGRtYWJ1Zl9pdGVyLmM6NTMgKGtlcm5lbC9icGYvZG1hYnVmX2l0ZXIu
Yzo1MykNCj4gICAgPj4+ICAgICAgICAgICAgICAgdm1saW51eC5vOihkbWFidWZfaXRlcl9zZXFf
bmV4dCkNCj4gICAgPj4+IHJlZmVyZW5jZWQgYnkgZG1hYnVmX2l0ZXIuYzoyNiAoa2VybmVsL2Jw
Zi9kbWFidWZfaXRlci5jOjI2KQ0KPiAgICA+Pj4gICAgICAgICAgICAgICB2bWxpbnV4Lm86KGRt
YWJ1Zl9pdGVyX3NlcV9zdGFydCkNCj4gICAgPj4+IHJlZmVyZW5jZWQgMSBtb3JlIHRpbWVzDQo+
IC0tDQo+ID4+IGxkLmxsZDogZXJyb3I6IHVuZGVmaW5lZCBzeW1ib2w6IGRtYV9idWZfcHV0DQo+
ICAgID4+PiByZWZlcmVuY2VkIGJ5IGRtYWJ1Zl9pdGVyLmM6NDUgKGtlcm5lbC9icGYvZG1hYnVm
X2l0ZXIuYzo0NSkNCj4gICAgPj4+ICAgICAgICAgICAgICAgdm1saW51eC5vOihkbWFidWZfaXRl
cl9zZXFfbmV4dCkNCj4gICAgPj4+IHJlZmVyZW5jZWQgYnkgZG1hYnVmX2l0ZXIuYzo5MCAoa2Vy
bmVsL2JwZi9kbWFidWZfaXRlci5jOjkwKQ0KPiAgICA+Pj4gICAgICAgICAgICAgICB2bWxpbnV4
Lm86KGRtYWJ1Zl9pdGVyX3NlcV9zdG9wKQ0KPiAtLQ0KPiA+PiBsZC5sbGQ6IGVycm9yOiB1bmRl
ZmluZWQgc3ltYm9sOiBkbWFidWZfZGVidWdmc19saXN0DQo+ICAgID4+PiByZWZlcmVuY2VkIGJ5
IGxpc3QuaDozNTQgKGluY2x1ZGUvbGludXgvbGlzdC5oOjM1NCkNCj4gICAgPj4+ICAgICAgICAg
ICAgICAgdm1saW51eC5vOihkbWFidWZfaXRlcl9zZXFfbmV4dCkNCj4gICAgPj4+IHJlZmVyZW5j
ZWQgYnkgZG1hYnVmX2l0ZXIuYzowIChrZXJuZWwvYnBmL2RtYWJ1Zl9pdGVyLmM6MCkNCj4gICAg
Pj4+ICAgICAgICAgICAgICAgdm1saW51eC5vOihkbWFidWZfaXRlcl9zZXFfc3RhcnQpDQo+ICAg
ID4+PiByZWZlcmVuY2VkIGJ5IGxpc3QuaDozNjQgKGluY2x1ZGUvbGludXgvbGlzdC5oOjM2NCkN
Cj4gICAgPj4+ICAgICAgICAgICAgICAgdm1saW51eC5vOihkbWFidWZfaXRlcl9zZXFfc3RhcnQp
DQo+DQo+IC0tDQo+IDAtREFZIENJIEtlcm5lbCBUZXN0IFNlcnZpY2UNCj4gaHR0cHM6Ly9naXRo
dWIuY29tL2ludGVsL2xrcC10ZXN0cy93aWtpDQoNClRoaXMgaXMgZHVlIHRvIG5vIENPTkZJR19E
TUFfU0hBUkVEX0JVRkZFUi4gRml4ZWQgYnk6DQoNCi0tLSBhL2tlcm5lbC9icGYvTWFrZWZpbGUN
CisrKyBiL2tlcm5lbC9icGYvTWFrZWZpbGUNCkBAIC01Myw3ICs1Myw3IEBAIG9iai0kKENPTkZJ
R19CUEZfU1lTQ0FMTCkgKz0gcmVsb19jb3JlLm8NCiBvYmotJChDT05GSUdfQlBGX1NZU0NBTEwp
ICs9IGJ0Zl9pdGVyLm8NCiBvYmotJChDT05GSUdfQlBGX1NZU0NBTEwpICs9IGJ0Zl9yZWxvY2F0
ZS5vDQogb2JqLSQoQ09ORklHX0JQRl9TWVNDQUxMKSArPSBrbWVtX2NhY2hlX2l0ZXIubw0KLWlm
ZXEgKCQoQ09ORklHX0RFQlVHX0ZTKSx5KQ0KK2lmZXEgKCQoQ09ORklHX0RNQV9TSEFSRURfQlVG
RkVSKSQoQ09ORklHX0RFQlVHX0ZTKSx5eSkNCiBvYmotJChDT05GSUdfQlBGX1NZU0NBTEwpICs9
IGRtYWJ1Zl9pdGVyLm8NCiBlbmRpZg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
