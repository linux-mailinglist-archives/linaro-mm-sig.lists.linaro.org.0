Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A911A97649
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Apr 2025 21:57:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 182BE46022
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Apr 2025 19:57:46 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id 230C846020
	for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Apr 2025 19:57:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=gHm4awPK;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cf3192d8bso1515e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Apr 2025 12:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745351851; x=1745956651; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o+8WoEV+fhr75HFqg9zZSA4L2nRl0GyEtZHiF2PswuY=;
        b=gHm4awPK57o3zMd/teEjwMHtR6Iz4bl0dMrZmpggvReruGwjzeQL/574GMCDS4yvE4
         5Sq0+/aFPXGZNFNxIdAexVwZKbBgILtpyLpzOt2kfQmo9hAR8VlR1VcYwvQN0iYo7+UN
         6J5XaFo63/lPxHcPGw2EwqaMydCtb0JyxSwL9YmVwMFM+1dDO/GpidG6gBzRGj/jWMPw
         7GQYRsxFmS4u3oO1Axo9qGn2b3+nZGsBltVBY/36LD5L4Hmj0aVe2GeYO4TR53Solfxr
         s+I4irxBsZdrnM35KvDOwtyqaPVs1lUGLzcasnsLCAWFnq6uZtM1MlL0gGOqWI6xjgIi
         PQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745351851; x=1745956651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o+8WoEV+fhr75HFqg9zZSA4L2nRl0GyEtZHiF2PswuY=;
        b=iZzB1HEnXMwXKqh9Uid47O3x+ufRpkR8uxNo777gLuqBO84j9miM7bhCrVVEC810wz
         OANRBUGBAO0MieD6O705FV0P8yAc20koXMFasN74PA3LNLe2DEoIjPIoHBVPDpm6dcoB
         0lrVY9m7CRNTZXBW2uyxFWSZlXdx5IbR26NGYnZzMT1YGJpNEs+nQ/PpARJ59PyP5egT
         aekqyJjDUqyiCV4AzB6FZRnC3Wl/mr2YMv7+zd3tvEnOMALqryjdeilQwTpcom50Tyf5
         DMR4ywBkRdaA7OTn4Wz84YbX16vwRKh5tkVPWx2rG5FMXBWV6rQjWauoAv242d9QHalr
         bwQA==
X-Forwarded-Encrypted: i=1; AJvYcCXrHnwYMFkp5orYVNZ8d8mCv09RZ25zUVn6AYOyhHSQp5FKcK5sxt237CSBiorT8Zm6mXhq+9CJgd/J4ABJ@lists.linaro.org
X-Gm-Message-State: AOJu0YybPR3hA2btAub9TZpFYjB5TgppszUoqgA2UwfhIwpfT1qmFHGy
	b2KD2SQEju4hPc9JMkvU8kGAIhxNoYuckw9Pr7AEDR3GKjiq2MU+zQvoeeLzipwbnW/ynyOb6Cu
	r+TQ+qGCzjot+E7snM1KnAoYxPlva/Msriq7c
X-Gm-Gg: ASbGncuYrhbyIF4DzGjs3jt8dezRjr+f0ytYFrFUCDIwEinuAfMbpspy7+Q0QI7Tq3+
	HP4g9w+5dzfOtEcBfSvtCfpMdYdPcZH9MIYm6SVQwzPaBXdKrbmafxNvC8Fq0qVv47GnL5Ok4d/
	FCMrDwjQPO3X7lCyReGqH0MZMpqxtPy3qle04/lpsLCZi37+pjhK8GLFISBFac4p4=
X-Google-Smtp-Source: AGHT+IHUmXBjG9n60eY/loYKceaeQypFwnBTAsAPzYJ5PJ5nFZ7ErzebtVx7FMQxwUfLtBAv12j9WXMAZTzYMIU/Svk=
X-Received: by 2002:a05:600c:259:b0:439:8d84:32ff with SMTP id
 5b1f17b1804b1-44091b78f2dmr168325e9.3.1745351850985; Tue, 22 Apr 2025
 12:57:30 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
 <20250414225227.3642618-3-tjmercier@google.com> <CAPhsuW54g5YCmLVX=cc3m2nfQTZrMH+6ZMBgouEMMfqcccOtww@mail.gmail.com>
 <CABdmKX1OqLLsY5+LSMU-c=DDUxTFaivNcyXG3ntD8D0ty1Pwig@mail.gmail.com> <CAADnVQ+0PXgm_VuSJDKwr9iomxFLuG-=Chi2Ya3k0YPnKaex_w@mail.gmail.com>
In-Reply-To: <CAADnVQ+0PXgm_VuSJDKwr9iomxFLuG-=Chi2Ya3k0YPnKaex_w@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 22 Apr 2025 12:57:18 -0700
X-Gm-Features: ATxdqUHMQq2PHoV14JDZonbBE5auIlNOjBV31C8667rOy5nLy9RJngJSN6-OcnY
Message-ID: <CABdmKX1aMuyPTNXD72wXyXAfOi6f58DfcaBDh6uDo0EQ7pKChw@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 230C846020
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,iogearbox.net,linux.dev,linuxfoundation.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,fomichev.me,fb.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[google.com:dkim];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.54:from];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.54:from];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.54:from]
X-Rspamd-Action: no action
Message-ID-Hash: FJZ2PBYO7NOG7PHQPL7RLCSDBIYYPKUK
X-Message-ID-Hash: FJZ2PBYO7NOG7PHQPL7RLCSDBIYYPKUK
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Song Liu <song@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>, Shuah Khan <skhan@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, bpf <bpf@vger.kernel.org>, "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, android-mm@google.com, simona@ffwll.ch, Jonathan Corbet <corbet@lwn.net>, Eduard <eddyz87@gmail.com>, Yonghong Song <yonghong.song@linux.dev>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>, Jiri Olsa <jolsa@kernel.org>, Mykola Lysenko <mykolal@fb.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FJZ2PBYO7NOG7PHQPL7RLCSDBIYYPKUK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBcHIgMjEsIDIwMjUgYXQgNDozOeKAr1BNIEFsZXhlaSBTdGFyb3ZvaXRvdg0KPGFs
ZXhlaS5zdGFyb3ZvaXRvdkBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPiBPbiBNb24sIEFwciAyMSwg
MjAyNSBhdCAxOjQw4oCvUE0gVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3Jv
dGU6DQo+ID4NCj4gPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gPiA+ID4gaW5kZXggMDAw
MDAwMDAwMDAwLi5iNGI4YmUxZDZhYTQNCj4gPiA+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ID4gPiAr
KysgYi9rZXJuZWwvYnBmL2RtYWJ1Zl9pdGVyLmMNCj4gPiA+DQo+ID4gPiBNYXliZSB3ZSBzaG91
bGQgYWRkIHRoaXMgZmlsZSB0byBkcml2ZXJzL2RtYS1idWYuIEkgd291bGQgbGlrZSB0bw0KPiA+
ID4gaGVhciBvdGhlciBmb2xrcyB0aG91Z2h0cyBvbiB0aGlzLg0KPiA+DQo+ID4gVGhpcyBpcyBm
aW5lIHdpdGggbWUsIGFuZCB3b3VsZCBzYXZlIHVzIHRoZSBleHRyYQ0KPiA+IENPTkZJR19ETUFf
U0hBUkVEX0JVRkZFUiBjaGVjayB0aGF0J3MgY3VycmVudGx5IG5lZWRlZCBpbg0KPiA+IGtlcm5l
bC9icGYvTWFrZWZpbGUgYnV0IHdvdWxkIHJlcXVpcmUgY2hlY2tpbmcgQ09ORklHX0JQRiBpbnN0
ZWFkLg0KPiA+IFN1bWl0IC8gQ2hyaXN0aWFuIGFueSBvYmplY3Rpb25zIHRvIG1vdmluZyB0aGUg
ZG1hYnVmIGJwZiBpdGVyYXRvcg0KPiA+IGltcGxlbWVudGF0aW9uIGludG8gZHJpdmVycy9kbWEt
YnVmPw0KPg0KPiBUaGUgZHJpdmVyIGRpcmVjdG9yeSB3b3VsZCBuZWVkIHRvICdkZXBlbmRzIG9u
IEJQRl9TWVNDQUxMJy4NCj4gQXJlIHlvdSBzdXJlIHlvdSB3YW50IHRoaXM/DQo+IGltbyBrZXJu
ZWwvYnBmLyBpcyBmaW5lIGZvciB0aGlzLg0KDQpJIGRvbid0IGhhdmUgYSBzdHJvbmcgcHJlZmVy
ZW5jZSBzbyBlaXRoZXIgd2F5IGlzIGZpbmUgd2l0aCBtZS4gVGhlDQptYWluIGRpZmZlcmVuY2Ug
SSBzZWUgaXMgbWFpbnRhaW5lcnNoaXAuDQoNCj4gWW91IGFsc28gcHJvYmFibHkgd2FudA0KPiAu
ZmVhdHVyZSAgICAgICAgICAgICAgICA9IEJQRl9JVEVSX1JFU0NIRUQNCj4gaW4gYnBmX2RtYWJ1
Zl9yZWdfaW5mby4NCg0KVGhhbmsgeW91LCB0aGlzIGxvb2tzIGxpa2UgYSBnb29kIGlkZWEuDQoN
Cj4gQWxzbyBoYXZlIHlvdSBjb25zaWRlcmVkIG9wZW4gY29kZWQgaXRlcmF0b3IgZm9yIGRtYWJ1
ZnM/DQo+IFdvdWxkIGl0IGhlbHAgd2l0aCB0aGUgaW50ZXJmYWNlIHRvIHVzZXIgc3BhY2U/DQoN
CkkgcmVhZCB0aHJvdWdoIHRoZSBvcGVuIGNvZGVkIGl0ZXJhdG9yIHBhdGNoZXMsIGFuZCBpdCBs
b29rcyBsaWtlIHRoZXkNCndvdWxkIGJlIHNsaWdodGx5IG1vcmUgZWZmaWNpZW50IGJ5IGF2b2lk
aW5nIHNlcV9maWxlIG92ZXJoZWFkLiBBcyBmYXINCmFzIHRoZSBpbnRlcmZhY2UgdG8gdXNlcnNw
YWNlLCBmb3IgdGhlIHB1cnBvc2Ugb2YgcmVwbGFjaW5nIHdoYXQncw0KY3VycmVudGx5IGV4cG9z
ZWQgYnkgQ09ORklHX0RNQUJVRl9TWVNGU19TVEFUUyBJIGRvbid0IHRoaW5rIHRoZXJlIGlzDQph
IGRpZmZlcmVuY2UuIEhvd2V2ZXIgaXQgbG9va3MgbGlrZSBpZiBJIHdlcmUgdG8gdHJ5IHRvIHJl
cGxhY2UgYWxsIG9mDQpvdXIgdXNlcnNwYWNlIGFuYWx5c2lzIG9mIGRtYWJ1ZnMgd2l0aCBhIHNp
bmdsZSBicGYgcHJvZ3JhbSB0aGVuIGFuDQpvcGVuIGNvZGVkIGl0ZXJhdG9yIHdvdWxkIG1ha2Ug
dGhhdCBtdWNoIGVhc2llci4gSSBoYWQgbm90IGNvbnNpZGVyZWQNCmF0dGVtcHRpbmcgdGhhdC4N
Cg0KT25lIHByb2JsZW0gSSBzZWUgd2l0aCBvcGVuIGNvZGVkIGl0ZXJhdG9ycyBpcyB0aGF0IHN1
cHBvcnQgaXMgbXVjaA0KbW9yZSByZWNlbnQgKDIwMjMgdnMgMjAyMCkuIFdlIHN1cHBvcnQgbG9u
Z3Rlcm0gc3RhYmxlIGtlcm5lbHMgKGJhY2sNCnRvIDUuNCBjdXJyZW50bHkgYnV0IHByb2JhYmx5
IDUuMTAgYnkgdGhlIHRpbWUgdGhpcyB3b3VsZCBiZSB1c2VkKSwgc28NCml0IHNlZW1zIGxpa2Ug
aXQgd291bGQgYmUgaGFyZGVyIHRvIGJhY2twb3J0IHRoZSBrZXJuZWwgc3VwcG9ydCBmb3IgYW4N
Cm9wZW4tY29kZWQgaXRlcmF0b3IgdGhhdCBmYXIgc2luY2UgaXQgb25seSBnb2VzIGJhY2sgYXMg
ZmFyIGFzIDYuNg0Kbm93LiBBY3R1YWxseSBpdCBkb2Vzbid0IGxvb2sgbGlrZSBpdCBpcyBwb3Nz
aWJsZSB3aGlsZSBhbHNvDQptYWludGFpbmluZyB0aGUgc3RhYmxlIEFCSSB3ZSBwcm92aWRlIHRv
IGRldmljZSB2ZW5kb3JzLiBXaGljaCBtZWFucw0Kd2UgY291bGRuJ3QgZ2V0IHJpZCBvZiB0aGUg
ZG1hYnVmIHN5c2ZzIHN0YXRzIHVzZXJzcGFjZSBkZXBlbmRlbmN5DQp1bnRpbCA2LjEgRU9MIGlu
IERlYy4gMjAyNy4gOlwgU28gSSdtIGluIGZhdm9yIG9mIGEgdHJhZGl0aW9uYWwgYnBmDQppdGVy
YXRvciBoZXJlIGZvciBub3cuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
