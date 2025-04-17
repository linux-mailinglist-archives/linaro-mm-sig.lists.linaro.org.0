Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DC3A9117A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Apr 2025 04:09:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EEEFD460E1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Apr 2025 02:09:32 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 8D51243D10
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Apr 2025 02:09:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=uX1Fpsb9;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf3192d8bso20235e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Apr 2025 19:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744855756; x=1745460556; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KSelZMOHGBCAC6ffhylcs5ml2BXN3psxianAepa1Pw0=;
        b=uX1Fpsb9FWVJh8o0EasjFpJtKNLrMev7fpMaw0w1hgylPn3YvUHFDT/EyO7GqvO7Qx
         S+/jn+jEKTKdYFizxZ53TmEqVBZLaGoZGtib3XvpjOgPQhDDbw6iBegNT5VEPHC+etnd
         aDx5xTcX0plIMlC8acJyLpg3LYXihg8utXQJGGoK8hbTfrLmZnU9i5LwSoVD5F6bDjzz
         iwtrS4PdF4kBPNfaCI1/fd5eCw63f39IU2vEibHitxh1C5gWhMdMYu2bmoaGbu8DyGB8
         WmDKHpYNrXhCDLZ6VAgRbnllz4DF6JJEYPCJkkO9gZFHKmSr3LHN4loytEuf6Wzg48PC
         J9Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744855756; x=1745460556;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KSelZMOHGBCAC6ffhylcs5ml2BXN3psxianAepa1Pw0=;
        b=u5wpLNkyS2cDcu3ve5g34ccmcrP8nqWstQLoMKSzvjxYmTZDDaJhxqnn4/XexUjS9/
         70njiapgwU+FuKlPnQXAoWe+pYsDrzqRdY/SDMitoYpLsQfdO7s8TWcx+ja2WYgeBPAo
         Soe8nYMpSPEE8BB4lDC5p1xQOUDigdbuCHptMGz9kUIpQ48uq6F4Ev1pQ5uuP95G0rxx
         Z3Ht164vA9KsOd9q/FG2Mf+tYA8wU+2lUVgLil9i4IJS0gB0ACxEGckiq+aY/Owv34Zj
         ENcL6uLnfqXfnbIZY06m4yKeZcLEiDjGXji/DcX0qpOhXz84Cyvd4om1twmudg/HHf8+
         bt8g==
X-Forwarded-Encrypted: i=1; AJvYcCXyPZ4yFUV6anaOl7Tn8EaLUFEEoJVJQYfrWvBmac7LE5/qz7jyxpYqKuppu3SvqDY9aFjjK0oRSIL+ry5o@lists.linaro.org
X-Gm-Message-State: AOJu0Yxe8W2vbmqwD7ZVTWHU20mwK0qqr0LWjyMe22mfaW8uT5GKYKP0
	rwwygWYvnoysyQ8ym/8VCntdBYViA0cdkd9XapvEu9GTukL0Poo9skqJ+238iGzsb1GAbwXUSJc
	msRtYsT/aXWYAtJ1vt1faFzmt5lWbBmIou7Ai
X-Gm-Gg: ASbGncuqo8VZIwepwpC5tKLfCJVZJlWgwvX8PAp3PhfJFUmU42i8RfwGs9oIblncGo1
	+1OVkkwECuKg34CoivLQFLjtP1tOm9wERG77di0iBCjbry1BOTTE829cjJW8z8PNJZBtELQ87El
	DVTe7iSkXg1YnjY7CZ1eDs+diCAoS6ZJE=
X-Google-Smtp-Source: AGHT+IFrppytZV5cSJfrYgzaifTbDrHqkypNt5Bohd7JB9cXbxaDZ8Ylu35PtX/6cVUznzvu+dDy2IZggStg9q0OeRc=
X-Received: by 2002:a05:600c:3042:b0:439:9434:1b66 with SMTP id
 5b1f17b1804b1-44063d2802cmr294225e9.1.1744855756423; Wed, 16 Apr 2025
 19:09:16 -0700 (PDT)
MIME-Version: 1.0
References: <20250414225227.3642618-1-tjmercier@google.com>
 <20250414225227.3642618-3-tjmercier@google.com> <CAPhsuW6sgGvjeAcciskmGO7r6+eeDo_KVS3y7C8fCDPptzCebw@mail.gmail.com>
 <CABdmKX0bgxZFYuvQvQPK0AnAHEE3FebY_eA1+Vo=ScH1MbfzMg@mail.gmail.com>
 <CAPhsuW72Q2--E9tQQY8xADghTV6bYy9vHpFQoCWNh0V_QBWafA@mail.gmail.com>
 <CABdmKX1tDv3fSFURDN7=txFSbQ1xTjp8ZhLP8tFAvLcO9_-4_A@mail.gmail.com> <CAPhsuW7xvSYjWvy8K9Ev_tMwDRy2dpEiBcHYai3n-wAa0xvLow@mail.gmail.com>
In-Reply-To: <CAPhsuW7xvSYjWvy8K9Ev_tMwDRy2dpEiBcHYai3n-wAa0xvLow@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 16 Apr 2025 19:09:04 -0700
X-Gm-Features: ATxdqUFLL37LKBoNbpt1TbRt2xDWynqShrVasUjLiM1tjzZW-eK8x-aahsy-M1I
Message-ID: <CABdmKX1p0KgbipTSW1Ywi4bTBabQmsg21gA14Bp5atYHg8FeXQ@mail.gmail.com>
To: Song Liu <song@kernel.org>
X-Rspamd-Queue-Id: 8D51243D10
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.45 / 15.00];
	BAYES_HAM(-2.95)[99.79%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	URIBL_BLOCKED(0.00)[android.com:url,mail-wm1-f48.google.com:helo,mail-wm1-f48.google.com:rdns];
	DKIM_TRACE(0.00)[google.com:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DNSWL_BLOCKED(0.00)[209.85.128.48:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.48:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DBK2GDEUKHMSWFQXCNBGMBX2LJ4LS7KI
X-Message-ID-Hash: DBK2GDEUKHMSWFQXCNBGMBX2LJ4LS7KI
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/4] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DBK2GDEUKHMSWFQXCNBGMBX2LJ4LS7KI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBBcHIgMTYsIDIwMjUgYXQgNjoyNuKAr1BNIFNvbmcgTGl1IDxzb25nQGtlcm5lbC5v
cmc+IHdyb3RlOg0KPg0KPiBPbiBXZWQsIEFwciAxNiwgMjAyNSBhdCA0OjQw4oCvUE0gVC5KLiBN
ZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBXZWQsIEFw
ciAxNiwgMjAyNSBhdCA0OjA44oCvUE0gU29uZyBMaXUgPHNvbmdAa2VybmVsLm9yZz4gd3JvdGU6
DQo+ID4gPg0KPiA+ID4gT24gV2VkLCBBcHIgMTYsIDIwMjUgYXQgMzo1MeKAr1BNIFQuSi4gTWVy
Y2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+ID4gWy4uLl0NCj4gPiA+ID4g
Pg0KPiA+ID4gPiA+IElJVUMsIHRoZSBpdGVyYXRvciBzaW1wbHkgdHJhdmVyc2VzIGVsZW1lbnRz
IGluIGEgbGlua2VkIGxpc3QuIEkgZmVlbCBpdCBpcw0KPiA+ID4gPiA+IGFuIG92ZXJraWxsIHRv
IGltcGxlbWVudCBhIG5ldyBCUEYgaXRlcmF0b3IgZm9yIGl0Lg0KPiA+ID4gPg0KPiA+ID4gPiBM
aWtlIG90aGVyIEJQRiBpdGVyYXRvcnMgc3VjaCBhcyBrbWVtX2NhY2hlX2l0ZXIgb3IgdGFza19p
dGVyLg0KPiA+ID4gPiBDZ3JvdXBfaXRlciBpdGVyYXRlcyB0cmVlcyBpbnN0ZWFkIG9mIGxpc3Rz
LiBUaGlzIGlzIGl0ZXJhdGluZyBvdmVyDQo+ID4gPiA+IGtlcm5lbCBvYmplY3RzIGp1c3QgbGlr
ZSB0aGUgZG9jcyBzYXksICJBIEJQRiBpdGVyYXRvciBpcyBhIHR5cGUgb2YNCj4gPiA+ID4gQlBG
IHByb2dyYW0gdGhhdCBhbGxvd3MgdXNlcnMgdG8gaXRlcmF0ZSBvdmVyIHNwZWNpZmljIHR5cGVz
IG9mIGtlcm5lbA0KPiA+ID4gPiBvYmplY3RzIi4gTW9yZSBjb21wbGljYXRlZCBpdGVyYXRpb24g
c2hvdWxkIG5vdCBiZSBhIHJlcXVpcmVtZW50IGhlcmUuDQo+ID4gPiA+DQo+ID4gPiA+ID4gTWF5
YmUgd2Ugc2ltcGx5DQo+ID4gPiA+ID4gdXNlIGRlYnVnZ2luZyB0b29scyBsaWtlIGNyYXNoIG9y
IGRyZ24gZm9yIHRoaXM/IFRoZSBhY2Nlc3Mgd2l0aA0KPiA+ID4gPiA+IHRoZXNlIHRvb2xzIHdp
bGwgbm90IGJlIHByb3RlY3RlZCBieSB0aGUgbXV0ZXguIEJ1dCBmcm9tIG15IHBlcnNvbmFsDQo+
ID4gPiA+ID4gZXhwZXJpZW5jZSwgdGhpcyBpcyBub3QgYSBiaWcgaXNzdWUgZm9yIHVzZXIgc3Bh
Y2UgZGVidWdnaW5nIHRvb2xzLg0KPiA+ID4gPg0KPiA+ID4gPiBkcmduIGlzICp3YXkqIHRvbyBz
bG93LCBhbmQgZXZlbiBpZiBpdCB3ZXJlbid0IHRoZSBkZXBlbmRlbmNpZXMgZm9yDQo+ID4gPiA+
IHJ1bm5pbmcgaXQgYXJlbid0IGF2YWlsYWJsZS4gY3Jhc2ggbmVlZHMgZGVidWcgc3ltYm9scyB3
aGljaCBhbHNvDQo+ID4gPiA+IGFyZW4ndCBhdmFpbGFibGUgb24gdXNlciBidWlsZHMuIFRoaXMg
aXMgbm90IGp1c3QgZm9yIG1hbnVhbA0KPiA+ID4gPiBkZWJ1Z2dpbmcsIGl0J3MgZm9yIHJlcG9y
dGluZyBtZW1vcnkgdXNlIGluIHByb2R1Y3Rpb24uIE9yIGFueXRoaW5nDQo+ID4gPiA+IGVsc2Ug
c29tZW9uZSBtaWdodCBjYXJlIHRvIGV4dHJhY3QgbGlrZSBhdHRhY2htZW50IGluZm8gb3IgcmVm
Y291bnRzLg0KPiA+ID4NCj4gPiA+IENvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgbW9yZSBpbmZvcm1h
dGlvbiBhYm91dCB0aGUgdXNlIGNhc2VzIGFuZA0KPiA+ID4gdGhlIHRpbWUgY29uc3RyYWludCBo
ZXJlLCBhbmQgd2h5IGRyZ24gaXMgdG9vIHNsb3cuIElzIG1vc3Qgb2YgdGhlIGRlbGF5DQo+ID4g
PiBjb21lcyBmcm9tIHBhcnNpbmcgRFdBUkY/IFRoaXMgaXMgbW9zdGx5IGZvciBteSBjdXJpb3Np
dHksIGJlY2F1c2UNCj4gPiA+IEkgaGF2ZSBiZWVuIHRoaW5raW5nIGFib3V0IHVzaW5nIGRyZ24g
dG8gZG8gc29tZSBtb25pdG9yaW5nIGluDQo+ID4gPiBwcm9kdWN0aW9uLg0KPiA+ID4NCj4gPiA+
IFRoYW5rcywNCj4gPiA+IFNvbmcNCj4gPg0KPiA+IFRoZXNlIFJ1bkNvbW1hbmRzIGhhdmUgMTAg
c2Vjb25kIHRpbWVvdXRzIGZvciBleGFtcGxlLiBJdCdzIHJhcmUgdGhhdA0KPiA+IEkgc2VlIHRo
ZW0gZ2V0IGV4Y2VlZGVkIGJ1dCBpdCBoYXBwZW5zIG9jY2FzaW9uYWxseS46DQo+ID4gaHR0cHM6
Ly9jcy5hbmRyb2lkLmNvbS9hbmRyb2lkL3BsYXRmb3JtL3N1cGVycHJvamVjdC9tYWluLysvbWFp
bjpmcmFtZXdvcmtzL25hdGl2ZS9jbWRzL2R1bXBzdGF0ZS9kdW1wc3RhdGUuY3BwO2RyYz05OGJk
YzA0Yjc2NThmZGUwYTk5NDAzZmMwNTJkMWQxOGU3ZDQ4ZWE2O2w9MjAwOA0KPg0KPiBUaGFua3Mg
Zm9yIHNoYXJpbmcgdGhpcyBpbmZvcm1hdGlvbi4NCj4NCj4gPiBUaGUgbGFzdCB0aW1lIEkgdXNl
ZCBkcmduIChhZG1pdHRlZGx5IGJhY2sgaW4gMjAyMykgaXQgdG9vayBvdmVyIGENCj4gPiBtaW51
dGUgdG8gaXRlcmF0ZSB0aHJvdWdoIGxlc3MgdGhhbiAyMDAgY2dyb3Vwcy4gSSdtIG5vdCBzdXJl
IHdoYXQgdGhlDQo+ID4gcm9vdCBjYXVzZSBvZiB0aGUgc2xvd25lc3Mgd2FzLCBidXQgSSdkIGV4
cGVjdCB0aGUgRFdBUkYgcHJvY2Vzc2luZyB0bw0KPiA+IGJlIGRvbmUgdXAtZnJvbnQgb25jZSBh
bmQgdGhlIHNsb3duZXNzIEkgZXhwZXJpZW5jZWQgd2FzIG5vdCBqdXN0IGF0DQo+ID4gc3RhcnR1
cC4gRXZlbnR1YWxseSBJIHN3aXRjaGVkIG92ZXIgdG8gdHJhY2VmcyBmb3IgdGhhdCBpc3N1ZSwg
d2hpY2gNCj4gPiB3ZSBzdGlsbCB1c2UgZm9yIHNvbWUgdGVsZW1ldHJ5Lg0KPg0KPiBJIGhhdmVu
J3QgdHJpZWQgZHJnbiBvbiBBbmRyb2lkLiBPbiBzZXJ2ZXIgc2lkZSwgaXRlcmF0aW5nIHNob3Vs
ZCAyMDANCj4gY2dyb3VwcyBzaG91bGQgYmUgZmFpcmx5IGZhc3QgKDwgNSBzZWNvbmRzLCB3aGVy
ZSBEV0FSRiBwYXJzaW5nIGlzDQo+IHRoZSBtb3N0IGV4cGVuc2l2ZSBwYXJ0KS4NCj4NCj4gPiBP
dGhlciB1c2VzIGFyZSBieSBzdGF0c2QgZm9yIHRlbGVtZXRyeSwgbWVtb3J5IHJlcG9ydGluZyBv
biBhcHAga2lsbHMNCj4gPiBvciBkZWF0aCwgYW5kIGZvciAiZHVtcHN5cyBtZW1pbmZvIi4NCj4N
Cj4gSGVyZSBpcyBhbm90aGVyIHJvb2tpZSBxdWVzdGlvbiwgaXQgYXBwZWFycyB0byBtZSB0aGVy
ZSBpcyBhIGZpbGUgZGVzY3JpcHRvcg0KPiBhc3NvY2lhdGVkIHdpdGggZWFjaCBETUEgYnVmZmVy
LCBjYW4gd2UgYWNoaWV2ZSB0aGUgc2FtZSBnb2FsIHdpdGgNCj4gYSB0YXNrLWZpbGUgaXRlcmF0
b3I/DQoNClRoYXQgd291bGQgZmluZCBhbG1vc3QgYWxsIG9mIHRoZW0sIGJ1dCBub3QgdGhlIGtl
cm5lbC1vbmx5DQphbGxvY2F0aW9ucy4gKGtlcm5lbF9yc3MgaW4gdGhlIGRtYWJ1Zl9kdW1wIG91
dHB1dCBJIGF0dGFjaGVkIGVhcmxpZXIuDQpJZiB0aGVyZSdzIGEgbGVhaywgaXQncyBsaWtlbHkg
dG8gc2hvdyB1cCBpbiBrZXJuZWxfcnNzIGJlY2F1c2Ugc29tZQ0KZHJpdmVyIGZvcmdvdCB0byBy
ZWxlYXNlIGl0cyByZWZlcmVuY2UocykuKSBBbHNvIHdvdWxkbid0IHRoYXQgYmUgYQ0KdG9uIG1v
cmUgaXRlcmF0aW9ucyBzaW5jZSB3ZSdkIGhhdmUgdG8gdmlzaXQgZXZlcnkgRkQgdG8gZmluZCB0
aGUNCnNtYWxsIHBvcnRpb24gdGhhdCBhcmUgZG1hYnVmcz8gSSdtIG5vdCBhY3R1YWxseSBzdXJl
IGlmIGJ1ZmZlcnMgdGhhdA0KaGF2ZSBiZWVuIG1hcHBlZCwgYW5kIHRoZW4gaGF2ZSBoYWQgdGhl
aXIgZmlsZSBkZXNjcmlwdG9ycyBjbG9zZWQNCndvdWxkIHNob3cgdXAgaW4gdGFza19zdHJ1Y3Qt
PmZpbGVzOyBpZiBub3QgSSB0aGluayB0aGF0IHdvdWxkIG1lYW4NCnNjYW5uaW5nIGJvdGggZmls
ZXMgYW5kIHZtYXMgZm9yIGVhY2ggdGFzay4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
