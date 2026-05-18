Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJmgIPaAC2pvIgUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 23:13:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EF494573ADC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 23:13:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00A10406F4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 May 2026 21:13:25 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by lists.linaro.org (Postfix) with ESMTPS id 69F5F4015B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 21:13:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b="aLTEp/U1";
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4891ca4ce02so1225e9.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 14:13:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779138792; cv=none;
        d=google.com; s=arc-20240605;
        b=kyUdMRf9cFrk3seRtYXv4m1PbBJi212gigMqaBfedSn/xrcIRJ6pcteHJWrmr+sj+d
         RyQ07tKKT5O7dfETZPJXV8DVpfkjT/T6+fN/cqjlO0yyCShV99nkd4VewdIfiW3VsV+P
         Ud1JSCyDzpAe/u8mTSo0fFO+yWY27aB/JlSwzV6834OFJRMRr24A0gxe4mFSNG0mu8hC
         AKleyjim0JweTWs8IO8YFD/y5e0uyBfSS6cmty6J8AaUwZAkN3mQdd5quz9Gs7Rw0c2m
         FJnz9gNqae5pnpFUn1B6OE93cTEC+ba8dCciIHVRsEORp24t8BiHfdtMfsbMTbpmMZTH
         wHAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TdtUTbNXCNhmI+LuqRwGM1avFF2CHCXidccR+1bE1AI=;
        fh=fqKiRrBlprNYrtMkbhjL5+WyyuIkfvRvGDPlIfYL0r8=;
        b=DH9JcpTU2mwyk107fAnUQiyRRustw12z8++2A/5xU26O0nk8pDaAHIqAJYWhh2uIlF
         HIpzM5Bqp9aCbuLTBgBPUlAkR9E30rmt9u1X5/no7pcj0rZ/3kLtkgIVGwBvv3SRqOid
         3i/BqDAnrUIHBc/j1RS7N8/QDBh60h6DdpjZdZERnbLvmlxwTYFmFOKRko8zgwJccg/b
         UUQLubMAed+xJpsnRkQw2mwmQN6MFfzr1yCe2Tr1Nt2wPg3Ym5FHwEFuJoMA/pgs+5Nf
         4Vw4iOUhk4UziKx8dxGMX8HytG/9lAascn11ORr3cNzWVlVvMhouMlaRfPo/rc1jcZld
         e5pQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779138792; x=1779743592; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TdtUTbNXCNhmI+LuqRwGM1avFF2CHCXidccR+1bE1AI=;
        b=aLTEp/U14tUFwg7XZkN3cKm3aenaAx5XO12RQrLaQYyqpDp1EFgw+ANX8QgDEnXVkr
         bOp6e5t8lEayHMtHoUQrCo8Zar/m7rsdJIqDMpVx4UCvpWHiN0agXuXXD4MBxfxPbhd3
         yEBOOeAa2O2ubNMZLHey7dQxqATE4DzuqLHmPL0H5QKHHWCCyUj3XxYVBEGuburi3r3u
         WLEt6131JCB2mAoq+3N+ckwxWR7ZT10wjw8t+SgTAHS3nDFK50lZyIFEcASoPMXk3Qhy
         v23CYPneCogGuWu+3gHAYEXLbpswbqzEI8csTGgDyy6wvBs222lc8X7IYUR5bvL2ywsm
         /G5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779138792; x=1779743592;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TdtUTbNXCNhmI+LuqRwGM1avFF2CHCXidccR+1bE1AI=;
        b=gR/J+RjVs5vTkzUSOxb3bYaHNpJrzSS+FM7es3OS9/B4inj5cFFy2IhOtZQHB//U5S
         4yXjDjyDXdpSWurG5j97qv64MkHrkIJXvlT2JErSmPRC5jq2BRHp4gGkrQoWtq43cLhC
         /wu5EhVa+DWgsqEDmk1RYiDJxtDRajSI13inNIONwYqij2d796cMD/S/1EKT6LPFPtcU
         jHxYbX2d8WIxRn6FnQV7vQCdkrzeQmgjjpFsIvRT7VMlNFi9DpkuTHfd1GyMyEdB2AoU
         K/VKKCdAtgjUaLBscSfLaH1acjyPj24wjJR1x7y+6vFFAJCUpLON9Gw4jJcb1RTP4KIo
         O0ww==
X-Forwarded-Encrypted: i=1; AFNElJ8Ep72uN/fFw0lTxVXDaR1MfN8bJp5bM3A+QI8agkN9YCwz4/k2Gc6SI/F/PWgVdn4ELLOXzFJKDDFUCmKO@lists.linaro.org
X-Gm-Message-State: AOJu0YzSUQObz8hFeba4qi2cLUlqGeMBnu9Pjfs0bPT5G9aASRInGc3h
	UOPSrnQ9/NennXzyFnvRbqu0y/+6a7BgHBNQK4aVQqLK9Q3Y7zzxQ5uGFn5bTS3+eMxJObl0/Sb
	li6uFPT6S8mwlzoVJLOxuZxNQWRIyMAKvR5PYdG59
X-Gm-Gg: Acq92OEYUijrP/UD08ZbQVqQbZCZ8D8W7cjWl334OVZhssxJkwoDlE0YyDZGWkXaS2j
	vvAqRgtcGQSkh5p/2YARyfpFXM6VarqataVk5W87r2vPcnnpCSy6MzeeIfMd1puKG1+HlFakx/f
	fRBXKTIjlBqS4158NaIsZnpSMwCxfWTf35LIMT25/p804BUQDf1onucv3w0sziNJhP0SN5sLxZd
	E9pdOdBq+K+q07an+WwlFo+LNunC51UZrzakymaeQ7KJL5WuHZ4TnSuLV735DiOWPMHMFqJmIHR
	AVXEyJEB2Axo8WOtl3q9DZlBcqV9hE1xWndFMzav1WV7yLjv
X-Received: by 2002:a05:600c:5650:b0:48a:5aa3:ac1e with SMTP id
 5b1f17b1804b1-48ffd828c95mr2422185e9.3.1779138791895; Mon, 18 May 2026
 14:13:11 -0700 (PDT)
MIME-Version: 1.0
References: <20260512-v2_20230123_tjmercier_google_com-v1-0-6326701c3691@redhat.com>
 <20260512-v2_20230123_tjmercier_google_com-v1-2-6326701c3691@redhat.com>
 <8ef38815-6ae9-4359-86d4-042554357639@amd.com> <CABdmKX2uwZ12kYJYPJGfWxuMBOJS=64b1GRj72tfB5D=NKM22w@mail.gmail.com>
 <CAGsJ_4zjrFJYQQsLThTGXR6g+2PXzeAhjyDpLHfDFqVViWvyBQ@mail.gmail.com>
In-Reply-To: <CAGsJ_4zjrFJYQQsLThTGXR6g+2PXzeAhjyDpLHfDFqVViWvyBQ@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 18 May 2026 14:12:59 -0700
X-Gm-Features: AVHnY4L4foI9pbyItEwrt04ziyQl1Xw6iN4loxWK62AYv0ZIBdafhEyOwVCgdmg
Message-ID: <CABdmKX0gqg309hcXcOHSj_yTg0h1zwDL34GDk8mX3wp4YoyfDg@mail.gmail.com>
To: Barry Song <baohua@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: 5HUQE7LTJDPFNCQEINKQFGQ2BRU3PIR4
X-Message-ID-Hash: 5HUQE7LTJDPFNCQEINKQFGQ2BRU3PIR4
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Albert Esteve <aesteve@redhat.com>, Tejun Heo <tj@kernel.org>, Johannes Weiner <hannes@cmpxchg.org>, =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>, Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, Michal Hocko <mhocko@kernel.org>, Roman Gushchin <roman.gushchin@linux.dev>, Shakeel Butt <shakeel.butt@linux.dev>, Muchun Song <muchun.song@linux.dev>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian Brauner <brauner@kernel.org>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Shuah Khan <shuah@kernel.org>, cgroups@vger.kernel.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.or
 g, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, linux-security-module@vger.kernel.org, selinux@vger.kernel.org, linux-kselftest@vger.kernel.org, mripard@kernel.org, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 2/5] dma-heap: charge dma-buf memory via explicit memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5HUQE7LTJDPFNCQEINKQFGQ2BRU3PIR4/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid,amd.com:email]
X-Rspamd-Queue-Id: EF494573ADC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU2F0LCBNYXkgMTYsIDIwMjYgYXQgMTo0MOKAr0FNIEJhcnJ5IFNvbmcgPGJhb2h1YUBrZXJu
ZWwub3JnPiB3cm90ZToNCj4NCj4gT24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMjo1NOKAr0FNIFQu
Si4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3RlOg0KPiA+DQo+ID4gT24gVHVl
LCBNYXkgMTIsIDIwMjYgYXQgMzoxNOKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCj4gPiA8Y2hyaXN0
aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPiA+DQo+ID4gPiBPbiA1LzEyLzI2IDExOjEw
LCBBbGJlcnQgRXN0ZXZlIHdyb3RlOg0KPiA+ID4gPiBPbiBlbWJlZGRlZCBwbGF0Zm9ybXMgYSBj
ZW50cmFsIHByb2Nlc3Mgb2Z0ZW4gYWxsb2NhdGVzIGRtYS1idWYNCj4gPiA+ID4gbWVtb3J5IG9u
IGJlaGFsZiBvZiBjbGllbnQgYXBwbGljYXRpb25zLiBXaXRob3V0IGEgd2F5IHRvDQo+ID4gPiA+
IGF0dHJpYnV0ZSB0aGUgY2hhcmdlIHRvIHRoZSByZXF1ZXN0aW5nIGNsaWVudCdzIGNncm91cCwg
dGhlDQo+ID4gPiA+IGNvc3QgbGFuZHMgb24gdGhlIGFsbG9jYXRvciwgbWFraW5nIHBlci1jZ3Jv
dXAgbWVtb3J5IGxpbWl0cw0KPiA+ID4gPiBpbmVmZmVjdGl2ZSBmb3IgdGhlIGFjdHVhbCBjb25z
dW1lcnMuDQo+ID4gPiA+DQo+ID4gPiA+IEFkZCBjaGFyZ2VfcGlkX2ZkIHRvIHN0cnVjdCBkbWFf
aGVhcF9hbGxvY2F0aW9uX2RhdGEuIFdoZW4gc2V0IHRvDQo+ID4gPiA+IGEgdmFsaWQgcGlkZmQs
IERNQV9IRUFQX0lPQ1RMX0FMTE9DIHJlc29sdmVzIHRoZSB0YXJnZXQgdGFzaydzDQo+ID4gPiA+
IG1lbWNnIGFuZCBjaGFyZ2VzIHRoZSBidWZmZXIgdGhlcmUgdmlhIG1lbV9jZ3JvdXBfY2hhcmdl
X2RtYWJ1ZigpDQo+ID4gPiA+IGluc2lkZSBkbWFfaGVhcF9idWZmZXJfYWxsb2MoKS4gV2l0aG91
dCBjaGFyZ2VfcGlkX2ZkLCBhbmQgd2l0aA0KPiA+ID4gPiB0aGUgbWVtX2FjY291bnRpbmcgbW9k
dWxlIHBhcmFtZXRlciBlbmFibGVkLCB0aGUgYnVmZmVyIGlzIGNoYXJnZWQNCj4gPiA+ID4gdG8g
dGhlIGFsbG9jYXRvcidzIG93biBjZ3JvdXAuDQo+ID4gPiA+DQo+ID4gPiA+IEFkZGl0aW9uYWxs
eSwgY29tbWl0IDNjMjI3YmU5MDY1OSAoImRtYS1idWY6IHN5c3RlbV9oZWFwOiBhY2NvdW50IGZv
cg0KPiA+ID4gPiBzeXN0ZW0gaGVhcCBhbGxvY2F0aW9uIGluIG1lbWNnIikgYWRkcyBfX0dGUF9B
Q0NPVU5UIHRvIHN5c3RlbS1oZWFwDQo+ID4gPiA+IHBhZ2UgYWxsb2NhdGlvbnMuIEtlZXBpbmcg
X19HRlBfQUNDT1VOVCB3b3VsZCBjaGFyZ2UgdGhlIHNhbWUgcGFnZXMNCj4gPiA+ID4gdHdpY2Ug
KG9uY2UgdG8ga21lbSwgb25jZSB0byBNRU1DR19ETUFCVUYpLCB0aHVzIHJlbW92ZSBpdCBhbmQg
cm91dGUNCj4gPiA+ID4gYWxsIGFjY291bnRpbmcgdGhyb3VnaCBhIHNpbmdsZSBNRU1DR19ETUFC
VUYgcGF0aC4NCj4gPiA+ID4NCj4gPiA+ID4gVXNhZ2UgZXhhbXBsZXM6DQo+ID4gPiA+DQo+ID4g
PiA+ICAgMS4gQ2VudHJhbCBhbGxvY2F0b3IgY2hhcmdpbmcgdG8gYSBjbGllbnQgYXQgYWxsb2Nh
dGlvbiB0aW1lLg0KPiA+ID4gPiAgICAgIFRoZSBhbGxvY2F0b3Iga25vd3MgdGhlIGNsaWVudCdz
IFBJRCAoZS5nLiwgZnJvbSBiaW5kZXIncw0KPiA+ID4gPiAgICAgIHNlbmRlcl9waWQpIGFuZCB1
c2VzIHBpZGZkIHRvIGF0dHJpYnV0ZSB0aGUgY2hhcmdlOg0KPiA+ID4gPg0KPiA+ID4gPiAgICAg
ICAgcGlkX3QgY2xpZW50X3BpZCA9IHR4bi0+c2VuZGVyX3BpZDsNCj4gPiA+ID4gICAgICAgIGlu
dCBwaWRmZCA9IHBpZGZkX29wZW4oY2xpZW50X3BpZCwgMCk7DQo+ID4gPiA+DQo+ID4gPiA+ICAg
ICAgICBzdHJ1Y3QgZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRhIGFsbG9jID0gew0KPiA+ID4gPiAg
ICAgICAgICAgIC5sZW4gICAgICAgICAgICAgPSBidWZmZXJfc2l6ZSwNCj4gPiA+ID4gICAgICAg
ICAgICAuZmRfZmxhZ3MgICAgICAgID0gT19SRFdSIHwgT19DTE9FWEVDLA0KPiA+ID4gPiAgICAg
ICAgICAgIC5jaGFyZ2VfcGlkX2ZkICAgPSBwaWRmZCwNCj4gPiA+ID4gICAgICAgIH07DQo+ID4g
PiA+ICAgICAgICBpb2N0bChoZWFwX2ZkLCBETUFfSEVBUF9JT0NUTF9BTExPQywgJmFsbG9jKTsN
Cj4gPiA+ID4gICAgICAgIGNsb3NlKHBpZGZkKTsNCj4gPiA+ID4gICAgICAgIC8qIGFsbG9jLmZk
IGlzIG5vdyBjaGFyZ2VkIHRvIGNsaWVudCdzIGNncm91cCAqLw0KPiA+ID4gPg0KPiA+ID4gPiAg
IDIuIERlZmF1bHQgYWxsb2NhdGlvbiAobm8gcGlkZmQsIG1lbV9hY2NvdW50aW5nPTEpLg0KPiA+
ID4gPiAgICAgIFdoZW4gY2hhcmdlX3BpZF9mZCBpcyBub3Qgc2V0IGFuZCB0aGUgbWVtX2FjY291
bnRpbmcgbW9kdWxlDQo+ID4gPiA+ICAgICAgcGFyYW1ldGVyIGlzIGVuYWJsZWQsIHRoZSBidWZm
ZXIgaXMgY2hhcmdlZCB0byB0aGUgYWxsb2NhdG9yJ3MNCj4gPiA+ID4gICAgICBvd24gY2dyb3Vw
Og0KPiA+ID4gPg0KPiA+ID4gPiAgICAgICAgc3RydWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0
YSBhbGxvYyA9IHsNCj4gPiA+ID4gICAgICAgICAgICAubGVuICAgICAgPSBidWZmZXJfc2l6ZSwN
Cj4gPiA+ID4gICAgICAgICAgICAuZmRfZmxhZ3MgPSBPX1JEV1IgfCBPX0NMT0VYRUMsDQo+ID4g
PiA+ICAgICAgICB9Ow0KPiA+ID4gPiAgICAgICAgaW9jdGwoaGVhcF9mZCwgRE1BX0hFQVBfSU9D
VExfQUxMT0MsICZhbGxvYyk7DQo+ID4gPiA+ICAgICAgICAvKiBjaGFyZ2VkIHRvIGN1cnJlbnQg
cHJvY2VzcydzIGNncm91cCAqLw0KPiA+ID4gPg0KPiA+ID4gPiBDdXJyZW50IGxpbWl0YXRpb25z
Og0KPiA+ID4gPg0KPiA+ID4gPiAgLSBTaW5nbGUtb3duZXIgbW9kZWw6IGEgZG1hLWJ1ZiBjYXJy
aWVzIG9uZSBtZW1jZyBjaGFyZ2UgcmVnYXJkbGVzcyBvZg0KPiA+ID4gPiAgICBob3cgbWFueSBw
cm9jZXNzZXMgc2hhcmUgaXQuIE1lYW5zIG9ubHkgdGhlIGZpcnN0IG93bmVyIChhbmQgZXhwb3J0
ZXIpDQo+ID4gPiA+ICAgIG9mIHRoZSBzaGFyZWQgYnVmZmVyIGJlYXJzIHRoZSBjaGFyZ2UuDQo+
ID4gPiA+ICAtIE9ubHkgbWVtY2cgYWNjb3VudGluZyBzdXBwb3J0ZWQuIFdoaWxlIHRoaXMgbWFr
ZXMgc2Vuc2UgZm9yIHN5c3RlbQ0KPiA+ID4gPiAgICBoZWFwIGJ1ZmZlcnMsIG90aGVyIGhlYXBz
IChlLmcuLCBDTUEgaGVhcHMpIHdpbGwgcmVxdWlyZSBzZWxlY3RpdmVseQ0KPiA+ID4gPiAgICBj
aGFyZ2luZyBhbHNvIGZvciB0aGUgZG1lbSBjb250cm9sbGVyLg0KPiA+ID4NCj4gPiA+IFdlbGwg
dGhhdCBkb2Vzbid0IGxvb2tzIHNvbyBiYWQsIGl0IGF0IGxlYXN0IHNlZW1zIHRvIHRhY2tsZSB0
aGUgcHJvYmxlbSBhdCBoYW5kIGZvciBBbmRyb2lkIGFuZCBzb21lIG9mIG90aGVyIGVtYmVkZGVk
IHVzZSBjYXNlcy4NCj4gPg0KPiA+IFllYWggSSB0aGluayB0aGlzIG1pZ2h0IHdvcmsuIEkga25v
dyBvZiAzIGNhc2VzLCBhbmQgaXQgdHJpdmlhbGx5DQo+ID4gc29sdmVzIHRoZSBmaXJzdCB0d28u
IFRoZSB0aGlyZCByZXF1aXJlcyBzb21lIHdvcmsgb24gb3VyIGVuZCB0bw0KPiA+IGV4dGVuZCBv
dXIgdXNlcnNwYWNlIGludGVyZmFjZXMgdG8gaW5jbHVkZSB0aGUgcGlkZmQgYnV0IGl0IHNlZW1z
DQo+ID4gZG9hYmxlLiBJJ20gY2hlY2tpbmcgd2l0aCBvdXIgZ3JhcGhpY3MgZm9sa3MuDQo+ID4N
Cj4gPiAxKSBEaXJlY3QgYWxsb2NhdGlvbiBmcm9tIHVzZXIgKGUuZy4gYXBwIC0+IGFsbG9jYXRp
b24gaW9jdGwgb24NCj4gPiAvZGV2L2RtYV9oZWFwL2ZvbykNCj4gPiBObyBjaGFuZ2VzIHJlcXVp
cmVkIHRvIHVzZXJzcGFjZS4gbWVtX2FjY291bnRpbmc9MSBjaGFyZ2VzIHRoZSBhcHAuDQo+ID4N
Cj4gPiAyKSBTaW5nbGUgaG9wIHJlbW90ZSBhbGxvY2F0aW9uIChlLmcuIGFwcCAtPiBBSGFyZHdh
cmVCdWZmZXJfYWxsb2NhdGUNCj4gPiAtPiBncmFsbG9jKQ0KPiA+IGdyYWxsb2MgaGFzIHRoZSBj
YWxsZXIncyBwaWQgYXMgZGVzY3JpYmVkIGluIHRoZSBjb21taXQgbWVzc2FnZS4gT3Blbg0KPiA+
IGEgcGlkZmQgYW5kIHBhc3MgaXQgaW4gdGhlIGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YS4NCj4g
Pg0KPiA+IDMpIERvdWJsZSBob3AgcmVtb3RlIGFsbG9jYXRpb24gKGUuZy4gYXBwIC0+IGRlcXVl
dWVCdWZmZXIgLT4NCj4gPiBTdXJmYWNlRmxpbmdlciAtPiBncmFsbG9jKQ0KPiA+IEluIHRoaXMg
Y2FzZSBncmFsbG9jIGtub3dzIFN1cmZhY2VGbGluZ2VyJ3MgcGlkLCBidXQgbm90IHRoZSBhcHAn
cy4gU28NCj4gPiB3ZSBuZWVkIHRvIGFkZCB0aGUgYXBwJ3MgcGlkZmQgdG8gdGhlIFN1cmZhY2VG
bGluZ2VyIC0+IGdyYWxsb2MNCj4gPiBpbnRlcmZhY2UsIG9yIHRyYW5zZmVyIHRoZSBtZW1jZyBj
aGFyZ2UgZnJvbSBTdXJmYWNlRmxpbmdlciB0byB0aGUgYXBwDQo+ID4gYWZ0ZXIgdGhlIGFsbG9j
YXRpb24uDQo+ID4gSXQnZCBiZSBuaWNlIHRvIGF2b2lkIHRoZSBjaGFyZ2UgdHJhbnNmZXIgb3B0
aW9uIGVudGlyZWx5LCBidXQgaWYgd2UNCj4gPiBuZWVkIGl0IHRoYXQgZG9lc24ndCBzZWVtIHNv
IGJhZCBpbiB0aGlzIGNhc2UgYmVjYXVzZSBpdCdzIGEgYnVsaw0KPiA+IGNoYXJnZSBmb3IgdGhl
IGVudGlyZSBkbWFidWYgcmF0aGVyIHRoYW4gcGVyLXBhZ2UuIFNvIHRoZSBleHBvcnRlcg0KPiA+
IGRvZXNuJ3QgbmVlZCB0byBnZXQgaW52b2x2ZWQgKHdlIHdvdWxkbid0IG5lZWQgYSBuZXcgZG1h
X2J1Zl9vcCkgYW5kDQo+ID4gd2Ugd291bGRuJ3QgaGF2ZSB0byB3b3JyeSBhYm91dCBsb29waW5n
IGFuZCBsb2NraW5nIGZvciBlYWNoIHBhZ2UuDQo+ID4NCj4NCj4gSGkgVC5KLiwNCj4NCj4gWW91
ciBkZXNjcmlwdGlvbiBvZiB0aGUgdGhyZWUgZGlmZmVyZW50IGNhc2VzIHNvdW5kcyB2ZXJ5IGlu
dGVyZXN0aW5nLg0KPiBJdCBoZWxwcyBtZSB1bmRlcnN0YW5kIGhvdyBkaWZmaWN1bHQgaXQgY2Fu
IGJlIHRvIGNvcnJlY3RseSBjaGFyZ2UNCj4gZG1hLWJ1ZiBpbiB0aGUgY3VycmVudCB1c2VyIHNj
ZW5hcmlvcy4NCj4NCj4gSeKAmW0gd29uZGVyaW5nIHdoZXJlIEkgY2FuIGZpbmQgQW5kcm9pZCB1
c2Vyc3BhY2UgY29kZSB0aGF0IHRyYW5zZmVycw0KPiB0aGUgUElEIG9mIFJQQyBjYWxsZXJzLiBE
byB3ZSBoYXZlIGFueSBleGlzdGluZyBzYW1wbGUgY29kZSBpbiBBbmRyb2lkDQo+IGZvciB0aGlz
Pw0KDQpIaSBCYXJyeSwNCg0KSW4gSmF2YSBhbmRyb2lkLm9zLkJpbmRlci5nZXRDYWxsaW5nUGlk
KCkgd2lsbCBwcm92aWRlIGl0LiBIZXJlDQoNCg0KPiA+ID4gSSdtIGp1c3Qgbm90IHN1cmUgaWYg
dGhpcyBpcyBmdXR1cmUgcHJvdmUgYW5kIHdpbGwgd29yayBmb3IgYWxsIHVzZSBjYXNlcywgZS5n
LiBjbG91ZCBnYW1pbmcsIG5hdGl2ZSBjb250ZXh0IGZvciBhdXRvbW90aXZlIGV0Yy4uLg0KPg0K
PiBUaGFua3MNCj4gQmFycnkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
